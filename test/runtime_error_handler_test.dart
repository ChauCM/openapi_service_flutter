import 'package:test/test.dart';
import 'package:dio/dio.dart';
import 'package:openapi_service_flutter/runtime.dart';

void main() {
  group('Runtime Error Handler', () {
    late DefaultErrorHandler errorHandler;

    setUp(() {
      errorHandler = DefaultErrorHandler();
    });

    group('extractErrorMessage', () {
      test('should extract message from string response', () {
        final result = errorHandler.extractErrorMessage('User not found');
        expect(result, equals('User not found'));
      });

      test('should extract message from JSON response', () {
        final result = errorHandler.extractErrorMessage({
          'message': 'Invalid credentials'
        });
        expect(result, equals('Invalid credentials'));
      });

      test('should extract error field from JSON response', () {
        final result = errorHandler.extractErrorMessage({
          'error': 'Access denied'
        });
        expect(result, equals('Access denied'));
      });

      test('should return null for empty string', () {
        final result = errorHandler.extractErrorMessage('');
        expect(result, isNull);
      });

      test('should return null for null input', () {
        final result = errorHandler.extractErrorMessage(null);
        expect(result, isNull);
      });

      test('should return null for empty map', () {
        final result = errorHandler.extractErrorMessage(<String, dynamic>{});
        expect(result, isNull);
      });
    });

    group('handleError - DioException', () {
      test('should handle 401 authentication error', () {
        final dioError = DioException(
          requestOptions: RequestOptions(path: '/api/user'),
          response: Response<dynamic>(
            requestOptions: RequestOptions(path: '/api/user'),
            statusCode: 401,
            data: {'message': 'Unauthorized'},
          ),
          type: DioExceptionType.badResponse,
        );

        final requestContext = RequestContext(
          method: 'POST',
          endpoint: '/api/user',
        );
        final result = errorHandler.handleError(
          dioError, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, equals('Unauthorized'));
        expect(result.statusCode, equals(401));
        expect(result.type, equals('authentication_error'));
        expect(result.isAuthenticationError, isTrue);
        expect(result.endpoint, equals('/api/user'));
      });

      test('should use friendly message for 404 without response data', () {
        final dioError = DioException(
          requestOptions: RequestOptions(path: '/api/missing'),
          response: Response<dynamic>(
            requestOptions: RequestOptions(path: '/api/missing'),
            statusCode: 404,
          ),
          type: DioExceptionType.badResponse,
        );

        final requestContext = RequestContext(
          method: 'GET',
          endpoint: '/api/missing',
        );
        final result = errorHandler.handleError(
          dioError, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, equals('Error 404 - Content not found'));
        expect(result.statusCode, equals(404));
        expect(result.type, equals('not_found_error'));
        expect(result.isNotFound, isTrue);
      });

      test('should handle network connection error', () {
        final dioError = DioException(
          requestOptions: RequestOptions(path: '/api/data'),
          type: DioExceptionType.connectionError,
          message: 'Connection failed',
        );

        final requestContext = RequestContext(
          method: 'GET',
          endpoint: '/api/data',
        );
        final result = errorHandler.handleError(
          dioError, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, equals('Network error - Check your internet connection'));
        expect(result.statusCode, equals(0));
        expect(result.type, equals('network_error'));
        expect(result.isNetworkError, isTrue);
      });

      test('should handle timeout error', () {
        final dioError = DioException(
          requestOptions: RequestOptions(path: '/api/slow'),
          type: DioExceptionType.receiveTimeout,
          message: 'Receive timeout',
        );

        final requestContext = RequestContext(
          method: 'GET',
          endpoint: '/api/slow',
        );
        final result = errorHandler.handleError(
          dioError, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, equals('Response timeout - The server response was too slow'));
        expect(result.type, equals('timeout_error'));
        expect(result.isTimeout, isTrue);
      });
    });

    group('handleError - Generic Errors', () {
      test('should handle FormatException', () {
        final error = FormatException('Invalid number format');

        final requestContext = RequestContext(
          method: 'POST',
          endpoint: '/api/parse',
        );
        final result = errorHandler.handleError(
          error, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, equals('Number format error - Invalid number format from server'));
        expect(result.statusCode, equals(0));
        expect(result.type, equals('client_error'));
        expect(result.isClientError, isTrue);
      });

      test('should handle type cast error', () {
        final error = TypeError();

        final requestContext = RequestContext(
          method: 'GET',
          endpoint: '/api/cast',
        );
        final result = errorHandler.handleError(
          error, 
          StackTrace.current, 
          requestContext
        );

        expect(result.message, contains('Unexpected error'));
        expect(result.type, equals('client_error'));
      });

      test('should preserve debug information', () {
        final error = Exception('Test error');

        final requestContext = RequestContext(
          method: 'POST',
          endpoint: '/api/test',
        );
        final result = errorHandler.handleError(
          error, 
          StackTrace.current, 
          requestContext
        );

        expect(result.debugInfo, isNotNull);
        expect(result.debugInfo!.requestContext.endpoint, equals('/api/test'));
        expect(result.debugInfo!.stackTrace, isNotNull);
        expect(result.debugInfo!.originalError, equals(error));
        expect(result.technicalDetails, contains('Test error'));
      });
    });

  });

  group('ApiError getters', () {
    test('should provide convenience getters', () {
      final error = ApiError(
        message: 'Test error',
        statusCode: 422,
        type: 'validation_error',
        debugInfo: ApiErrorDebugInfo(
          requestContext: RequestContext(
            method: 'POST',
            endpoint: '/api/validate',
          ),
          stackTrace: StackTrace.current,
        ),
      );

      expect(error.isValidationError, isTrue);
      expect(error.isAuthenticationError, isFalse);
      expect(error.isServerError, isFalse);
      expect(error.isClientError, isTrue);
      expect(error.endpoint, equals('/api/validate'));
      expect(error.stackTrace, isNotNull);
    });
  });
}