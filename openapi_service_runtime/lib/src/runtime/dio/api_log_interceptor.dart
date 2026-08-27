import 'package:dio/dio.dart';
import '../logging.dart';

/// Logs one line per request and one per outcome, with the elapsed time.
///
/// ```
/// api → POST /api/v1/auth/refresh
/// api ← 200 POST /api/v1/auth/refresh (558ms)
/// api → GET /api/v1/path
/// api ← 404 GET /api/v1/path (147ms) · Http status error [404]
/// ```
///
/// Attach it to any [Dio], including one a host builds itself:
///
/// ```dart
/// dio.interceptors.add(const ApiLogInterceptor());
/// ```
///
/// [DefaultDio.createWithLogging] uses this same class, so taking the logging
/// no longer means taking the whole `Dio` and its default timeouts with it.
///
/// ## What is never logged
///
/// **Headers and bodies are never printed, and that is a rule rather than an
/// oversight.** An `Authorization` header is a bearer token, a login body is a
/// password, and an upload body can be a recording of somebody's voice. Bodies
/// are reported as a size only. A contributor adding "just the body, for
/// debugging" is changing this rule, not filling a gap.
///
/// The request URI *is* printed in full, query string included. A host that
/// puts a secret in a query parameter passes [redactUri] to strip it.
///
/// The interceptor holds no mutable state — per-request timing lives in
/// [RequestOptions.extra] — so a single `const` instance is safe to share
/// across clients and concurrent requests.
class ApiLogInterceptor extends Interceptor {
  /// Creates a logging interceptor.
  const ApiLogInterceptor({this.log, this.redactUri});

  /// Where the log lines go. Defaults to `print`.
  final ApiLogSink? log;

  /// Renders the request URI for the log. Defaults to `uri.toString()`.
  ///
  /// A host that carries a secret in a query parameter passes something like
  /// `(uri) => uri.replace(queryParameters: const {}).toString()`.
  final String Function(Uri uri)? redactUri;

  /// Key under which the per-request [Stopwatch] is stashed in
  /// [RequestOptions.extra].
  static const stopwatchKey = 'openapi_service_runtime.stopwatch';

  /// Prefix on every line, so a host can grep for it and a CI job can strip it.
  static const prefix = 'api';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra[stopwatchKey] = Stopwatch()..start();

    final body =
        options.data == null ? '' : ' · ${describeDataSize(options.data)}';
    _emit('$prefix → ${options.method} ${_uri(options.uri)}$body');

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final options = response.requestOptions;
    _emit('$prefix ← ${response.statusCode} ${options.method} '
        '${_uri(options.uri)}${_elapsed(options)} · '
        '${describeDataSize(response.data)}');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final status = err.response?.statusCode ?? 'NO_STATUS';
    final body = err.response?.data == null
        ? ''
        : ' · ${describeDataSize(err.response!.data)}';
    _emit('$prefix ← $status ${options.method} ${_uri(options.uri)}'
        '${_elapsed(options)} · ${err.message ?? err.type.name}$body');

    handler.next(err);
  }

  void _emit(String message) => (log ?? defaultLogSink)(message);

  String _uri(Uri uri) => redactUri?.call(uri) ?? uri.toString();

  /// The time since [onRequest] stashed the stopwatch, or `''` when this
  /// interceptor did not see the request go out.
  String _elapsed(RequestOptions options) {
    final stopwatch = options.extra[stopwatchKey];
    if (stopwatch is! Stopwatch) return '';
    return ' (${stopwatch.elapsedMilliseconds}ms)';
  }
}

/// Describes a payload by size rather than content, so that logging one can
/// never leak it.
String describeDataSize(dynamic data) {
  if (data == null) return 'null';

  if (data is String) {
    return '${data.length} chars';
  } else if (data is List) {
    return '${data.length} items';
  } else if (data is Map) {
    return '${data.length} fields';
  } else if (data is Stream) {
    return 'stream';
  } else {
    return data.runtimeType.toString();
  }
}
