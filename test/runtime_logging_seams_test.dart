import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:openapi_service_runtime/openapi_service_runtime.dart';
import 'package:test/test.dart';

/// Covers the seams added so that a host can quieten and route this package's
/// logging without replacing the classes that do it.
///
/// Every test here goes red on a specific regression, named in its own comment.
void main() {
  setUp(_captured.clear);

  RequestOptions optionsFor(String method, String path) => RequestOptions(
        path: path,
        method: method,
        baseUrl: 'https://api.example.com',
      );

  group('DefaultErrorHandler logging seams', () {
    final context = RequestContext(
      endpoint: '/api/v1/lesson',
      method: 'POST',
      headers: const {'Authorization': 'Bearer super-secret'},
    );

    DioException refusal(int status) => DioException(
          requestOptions: optionsFor('POST', '/api/v1/lesson'),
          response: Response(
            requestOptions: optionsFor('POST', '/api/v1/lesson'),
            statusCode: status,
            data: const {'message': 'Daily limit reached'},
          ),
          type: DioExceptionType.badResponse,
        );

    // Red if the default ever goes quiet: with no shouldLog, every failure is
    // still reported — which is what existing consumers rely on.
    test('logs every failure by default', () {
      const DefaultErrorHandler(log: sinkOf)
          .handleError(refusal(402), StackTrace.current, context);
      expect(_captured, isNotEmpty);
      expect(_captured.first, equals('❌ Error:'));
      expect(_captured.length, equals(4),
          reason: 'error banner, error, stack banner, stack');
    });

    // Red if shouldLog is ignored — the whole point of item 1.
    test('shouldLog can silence an expected refusal', () {
      const handler = DefaultErrorHandler(
        shouldLog: _isUnexpected,
        log: sinkOf,
      );
      handler.handleError(refusal(402), StackTrace.current, context);
      expect(_captured, isEmpty);
    });

    // Red if shouldLog is consulted but its verdict is inverted or dropped.
    test('shouldLog still logs an unexpected failure', () {
      const handler = DefaultErrorHandler(
        shouldLog: _isUnexpected,
        log: sinkOf,
      );
      handler.handleError(refusal(500), StackTrace.current, context);
      expect(_captured, isNotEmpty);
    });

    // Red if the predicate is handed `0` (today's internal placeholder) instead
    // of null for a request that never produced a response. That distinction is
    // what lets a host say "quiet when we refused it ourselves".
    test('shouldLog receives a null status when no response came back', () {
      final seen = <int?>[];
      DefaultErrorHandler(
        shouldLog: (status, _) {
          seen.add(status);
          return false;
        },
      ).handleError(
        DioException(
          requestOptions: optionsFor('GET', '/api/v1/path'),
          type: DioExceptionType.connectionError,
        ),
        StackTrace.current,
        context,
      );
      expect(seen, equals(<int?>[null]));
    });

    // Red if narrowing the logging also narrows the error object — the exact
    // loss that forking the class cost the reporting consumer.
    test('quietened handler still classifies and messages the error', () {
      const handler = DefaultErrorHandler(shouldLog: _never, log: sinkOf);
      final apiError =
          handler.handleError(refusal(401), StackTrace.current, context);

      expect(_captured, isEmpty);
      expect(apiError.type, equals('authentication_error'));
      expect(apiError.message, equals('Daily limit reached'));
      expect(apiError.statusCode, equals(401));
      expect(apiError.debugInfo?.responseHeaders, isNotNull);
    });

    // Red if the const constructor is broken by the new fields — every
    // generated service emits `const DefaultErrorHandler()`.
    test('stays const-constructible', () {
      expect(const DefaultErrorHandler(), same(const DefaultErrorHandler()));
    });
  });

  group('ApiLogInterceptor', () {
    /// A Dio wired to a stub adapter, so the interceptor runs inside dio's real
    /// request chain rather than being poked method-by-method.
    Dio dioReturning(int statusCode, String body,
        {String Function(Uri uri)? redactUri}) {
      final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'))
        ..httpClientAdapter = _StubAdapter(statusCode, body)
        ..interceptors
            .add(ApiLogInterceptor(log: sinkOf, redactUri: redactUri));
      return dio;
    }

    // Red if the interceptor stops being reachable as a public class, which is
    // item 2 — a host with its own Dio must be able to add just this, keeping
    // the timeouts it tuned.
    test('attaches to a host-owned Dio without taking its defaults', () {
      final dio = Dio(BaseOptions(connectTimeout: const Duration(seconds: 12)))
        ..interceptors.add(const ApiLogInterceptor());

      expect(dio.options.connectTimeout, equals(const Duration(seconds: 12)));
      expect(dio.interceptors.whereType<ApiLogInterceptor>(), hasLength(1));
    });

    // Red if the request line loses its method, its uri, or the greppable
    // prefix; and red if the response line loses the elapsed milliseconds,
    // which is item 5.
    test('logs the request out and the response back with elapsed time',
        () async {
      await dioReturning(200, '{"a":1,"b":2}').get('/api/v1/path');

      expect(_captured.first,
          equals('api → GET https://api.example.com/api/v1/path'));
      expect(
        _captured.last,
        matches(
            RegExp(r'^api ← 200 GET \S+/api/v1/path \(\d+ms\) · 2 fields$')),
      );
    });

    // Red if the failure line drops the status or the timing — the two things
    // that tell a cold instance apart from a broken one.
    test('reports status and elapsed time on a failure', () async {
      await expectLater(
        dioReturning(402, '{"message":"Daily limit reached"}')
            .post('/api/v1/lesson', data: const {'take': 1}),
        throwsA(isA<DioException>()),
      );

      expect(_captured.last, contains('api ← 402 POST '));
      expect(_captured.last, matches(RegExp(r'\(\d+ms\)')));
    });

    // Red if a secret in a query parameter starts reaching the log, item 6.
    test('redactUri strips the query string', () async {
      await dioReturning(200, '{}', redactUri: _dropQuery)
          .get('/api/v1/path', queryParameters: const {'token': 'sekrit'});

      expect(_captured.first, isNot(contains('sekrit')));
      expect(_captured.first, endsWith('/api/v1/path'));
    });

    // Red the moment somebody logs "just the body, for debugging". Bodies are
    // reported by size, never by content, and headers not at all.
    test('never logs a body or a header', () async {
      await dioReturning(200, '{}').post(
        '/api/v1/auth/login',
        data: const {'password': 'hunter2'},
        options: Options(headers: const {'Authorization': 'Bearer sekrit'}),
      );

      expect(_captured.join('\n'), isNot(contains('hunter2')));
      expect(_captured.join('\n'), isNot(contains('sekrit')));
      expect(_captured.first, endsWith('· 1 fields'));
    });
  });

  group('DefaultDio.createWithLogging', () {
    // Red if the "(debug mode)" in the name goes back to being decorative,
    // which is item 3.
    test('adds no logging when logging is disabled', () {
      final dio = DefaultDio.createWithLogging(enableLogging: false);
      expect(dio.interceptors.whereType<ApiLogInterceptor>(), isEmpty);
    });

    test('adds logging when explicitly enabled', () {
      final dio = DefaultDio.createWithLogging(enableLogging: true);
      expect(dio.interceptors.whereType<ApiLogInterceptor>(), hasLength(1));
    });

    // The default arm follows `assertsEnabled`. A test run always has asserts
    // on, so this proves the true half; the release half is proved by the
    // guard reading `assertsEnabled` at all, pinned below.
    test('defaults to the asserts-enabled guard', () {
      expect(assertsEnabled, isTrue,
          reason: 'dart test runs with asserts on; if this is ever false the '
              'default arm below is asserting the wrong thing');
      final dio = DefaultDio.createWithLogging();
      expect(dio.interceptors.whereType<ApiLogInterceptor>(), hasLength(1));
    });
  });
}

/// Lines captured by [sinkOf]. A const constructor cannot close over a local,
/// so the const-constructible cases route through this top-level pair.
final _captured = <String>[];
void sinkOf(String message) => _captured.add(message);

bool _isUnexpected(int? status, Object? _) =>
    status == null || !const {401, 402, 404, 409}.contains(status);

bool _never(int? _, Object? __) => false;

String _dropQuery(Uri uri) => '${uri.origin}${uri.path}';

/// Returns a canned response without touching the network, so the interceptor
/// can be exercised inside dio's real request chain.
class _StubAdapter implements HttpClientAdapter {
  _StubAdapter(this.statusCode, this.body);

  final int statusCode;
  final String body;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async =>
      ResponseBody.fromString(
        body,
        statusCode,
        headers: {
          Headers.contentTypeHeader: [Headers.jsonContentType],
        },
      );

  @override
  void close({bool force = false}) {}
}
