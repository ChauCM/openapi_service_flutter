import 'package:test/test.dart';
import 'package:dio/dio.dart';
import 'package:openapi_service_runtime/openapi_service_runtime.dart';

import 'test_utils.dart';

/// Stands in for a generated DTO whose schema says the field is required.
class _ProfileDto {
  _ProfileDto(this.streak);
  final num streak;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =>
      _ProfileDto(json['streak'] as num);
}

/// Runs the shape the generator emits: request, then parse in its own try.
ApiError _readResponse(
  Response<dynamic> response,
  ErrorHandler handler, {
  RequestContext? context,
}) {
  final requestContext = context ??
      const RequestContext(method: 'GET', endpoint: '/api/v1/progress/profile');
  try {
    try {
      _ProfileDto.fromJson(response.data as Map<String, dynamic>);
      fail('the fixture body must not parse');
    } catch (parseError, parseStackTrace) {
      throw ResponseParseFailure(
        response: response,
        cause: parseError,
        causeStackTrace: parseStackTrace,
      );
    }
  } catch (e, stackTrace) {
    return handler.handleError(e, stackTrace, requestContext);
  }
}

Response<dynamic> _unreadable200() => Response<dynamic>(
      requestOptions: RequestOptions(path: '/api/v1/progress/profile'),
      statusCode: 200,
      data: const {'streak': null, 'displayName': 'giaovien1'},
      headers: Headers.fromMap({
        'content-type': ['application/json'],
      }),
    );

void main() {
  group('ResponseParseFailure', () {
    test('carries the response the parse choked on', () {
      final response = _unreadable200();
      late ResponseParseFailure failure;
      try {
        try {
          _ProfileDto.fromJson(response.data as Map<String, dynamic>);
        } catch (e, s) {
          throw ResponseParseFailure(
            response: response,
            cause: e,
            causeStackTrace: s,
          );
        }
      } on ResponseParseFailure catch (e) {
        failure = e;
      }

      expect(failure.statusCode, equals(200));
      expect(failure.responseBody, equals(response.data));
      expect(failure.cause, isA<TypeError>());
      expect(failure.toString(), contains('statusCode: 200'));
      // The cause has to survive into toString(): a handler that logs only the
      // wrapper would otherwise print nothing about what actually failed.
      expect(failure.toString(), contains('subtype'));
    });
  });

  group('DefaultErrorHandler on an unreadable success', () {
    test('reports the real status and the real body', () {
      final error = _readResponse(_unreadable200(), DefaultErrorHandler());

      // The defect this replaces: statusCode 0 and responseBody null, which
      // says "no answer arrived" about a 200 that did.
      expect(error.statusCode, equals(200));
      expect(error.statusCode, isNot(equals(0)));
      expect(error.debugInfo!.responseBody, isNotNull);
      expect(
        error.debugInfo!.responseBody,
        equals(const {'streak': null, 'displayName': 'giaovien1'}),
      );
      expect(error.debugInfo!.responseHeaders, isNotNull);
    });

    test('types it as a parse failure, not a transport one', () {
      final error = _readResponse(_unreadable200(), DefaultErrorHandler());

      expect(error.type, equals('parse_error'));
      expect(error.isParseError, isTrue);
      expect(error.isNetworkError, isFalse);
      expect(error.isServerError, isFalse);
    });

    test('derives the message from the cause, not the wrapper', () {
      final error = _readResponse(_unreadable200(), DefaultErrorHandler());

      // getFriendlyRuntimeErrorMessage matches on the cause's text; handing it
      // the ResponseParseFailure would fall through to the generic message.
      expect(
        error.message,
        equals(getFriendlyRuntimeErrorMessage(
            "type 'Null' is not a subtype of type 'num' in type cast")),
      );
      expect(error.message, contains('Data format error'));
      // Handing the wrapper in instead would land on the generic fallback.
      expect(
        error.message,
        isNot(equals(getFriendlyRuntimeErrorMessage(
            'ResponseParseFailure(statusCode: 200, cause: x)'))),
      );
      expect(error.technicalDetails, contains('subtype'));
      // The cause alone, not the wrapper wrapped around it.
      expect(error.technicalDetails, isNot(startsWith('ResponseParseFailure')));
    });

    test('keeps the failure reachable for the caller', () {
      final error = _readResponse(_unreadable200(), DefaultErrorHandler());

      final original = error.debugInfo!.originalError;
      expect(original, isA<ResponseParseFailure>());
      expect((original as ResponseParseFailure).cause, isA<TypeError>());
      expect(original.response.statusCode, equals(200));
      // The cause's trace, which names the parse frame. The trace at the
      // rethrow site names only the rethrow.
      expect(error.stackTrace.toString(), contains('fromJson'));
    });

    test('offers the real status to shouldLog', () {
      int? seen;
      var called = false;
      final handler = DefaultErrorHandler(
        shouldLog: (status, _) {
          seen = status;
          called = true;
          return false;
        },
        log: (_) => fail('shouldLog said no'),
      );

      _readResponse(_unreadable200(), handler);

      expect(called, isTrue);
      // null here would make an unreadable 200 unquietenable by status.
      expect(seen, equals(200));
    });

    test('leaves genuine transport failures alone', () {
      final error = DefaultErrorHandler().handleError(
        StateError('no connection'),
        StackTrace.current,
        const RequestContext(
            method: 'GET', endpoint: '/api/v1/progress/profile'),
      );

      expect(error.statusCode, equals(0));
      expect(error.type, equals('client_error'));
      expect(error.debugInfo!.responseBody, isNull);
    });
  });

  group('Generated parse guard', () {
    test('wraps a DTO parse and leaves a void method bare', () {
      final service = generateServiceLibrary('''
openapi: 3.0.0
info:
  title: Parse Guard API
  version: 1.0.0
paths:
  /profile:
    get:
      operationId: getProfile
      responses:
        '200':
          description: ok
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/Profile'
  /ping:
    post:
      operationId: ping
      responses:
        '204':
          description: no content
components:
  schemas:
    Profile:
      type: object
      properties:
        streak:
          type: integer
''');

      expect(service, contains('catch (parseError, parseStackTrace)'));
      expect(service, contains('throw ResponseParseFailure('));
      expect(service, contains('causeStackTrace: parseStackTrace'));

      // The void method has no response to keep, so it gets no inner try.
      final pingBody =
          service.substring(service.indexOf('Future<Either<ApiError, void>>'));
      expect(pingBody.contains('ResponseParseFailure'), isFalse);
    });
  });
}
