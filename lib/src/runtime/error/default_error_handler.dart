import 'package:dio/dio.dart';
import 'error_handler.dart';
import 'api_error.dart';
import 'error_messages.dart';
import 'request_context.dart';

/// Default implementation of [ErrorHandler] that provides user-friendly error messages
class DefaultErrorHandler implements ErrorHandler {
  /// Creates a default error handler
  const DefaultErrorHandler();

  @override
  ApiError handleError(
    dynamic error,
    StackTrace stackTrace,
    RequestContext requestContext,
  ) {
    if (error is DioException) {
      return _handleDioException(error, stackTrace, requestContext);
    }

    return _handleGenericError(error, stackTrace, requestContext);
  }

  @override
  String? extractErrorMessage(dynamic data) {
    // If response is a string, use it directly
    if (data is String && data.isNotEmpty) {
      return data;
    }

    // If response is JSON, try common error fields
    if (data is Map<String, dynamic>) {
      // Try common error message fields in order of preference
      final possibleFields = [
        'message',
        'error',
        'detail',
        'error_description',
        'errorMessage',
        'error_message',
        'msg',
        'reason',
        'description',
      ];

      for (final field in possibleFields) {
        final value = data[field];
        if (value is String && value.isNotEmpty) {
          return value;
        }
      }

      // Check for nested error object
      if (data['error'] is Map<String, dynamic>) {
        final errorObj = data['error'] as Map<String, dynamic>;
        for (final field in possibleFields) {
          final value = errorObj[field];
          if (value is String && value.isNotEmpty) {
            return value;
          }
        }
      }
    }

    return null;
  }

  ApiError _handleDioException(
    DioException error,
    StackTrace stackTrace,
    RequestContext requestContext,
  ) {
    final response = error.response;
    final statusCode = response?.statusCode ?? 0;

    // Determine error type based on status code and error type
    final errorType = _getErrorType(error, statusCode);

    // Extract message with fallback
    final message = _extractDioErrorMessage(error, statusCode);

    // Create debug info with consolidated request information
    final debugInfo = ApiErrorDebugInfo(
      requestContext: requestContext,
      stackTrace: stackTrace,
      responseHeaders: response?.headers.map,
      responseBody: response?.data,
      originalError: error,
    );

    final apiError = ApiError(
      message: message,
      statusCode: statusCode,
      type: errorType,
      technicalDetails: error.toString(),
      debugInfo: debugInfo,
    );

    return apiError;
  }

  ApiError _handleGenericError(
    dynamic error,
    StackTrace stackTrace,
    RequestContext requestContext,
  ) {
    // Provide friendly message for common runtime errors
    final friendlyMessage = getFriendlyRuntimeErrorMessage(error);

    final debugInfo = ApiErrorDebugInfo(
      requestContext: requestContext,
      stackTrace: stackTrace,
      responseHeaders: null,
      responseBody: null,
      originalError: error,
    );

    final apiError = ApiError(
      message: friendlyMessage,
      statusCode: 0,
      type: 'client_error',
      technicalDetails: error.toString(),
      debugInfo: debugInfo,
    );

    return apiError;
  }

  String _getErrorType(DioException error, int statusCode) {
    // First check status code
    switch (statusCode) {
      case 401:
        return 'authentication_error';
      case 403:
        return 'authorization_error';
      case 404:
        return 'not_found_error';
      case 408:
        return 'timeout_error';
      case 422:
        return 'validation_error';
      case 429:
        return 'rate_limit_error';
      case >= 500:
        return 'server_error';
    }

    // Then check DioException type
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'timeout_error';
      case DioExceptionType.connectionError:
        return 'network_error';
      case DioExceptionType.cancel:
        return 'cancelled_error';
      case DioExceptionType.badCertificate:
        return 'certificate_error';
      case DioExceptionType.badResponse:
        if (statusCode >= 400 && statusCode < 500) {
          return 'client_error';
        } else if (statusCode >= 500) {
          return 'server_error';
        }
        return 'response_error';
      case DioExceptionType.unknown:
        return 'unknown_error';
    }
  }

  String _extractDioErrorMessage(DioException error, int statusCode) {
    final response = error.response;

    // Try to extract message from response data
    if (response?.data != null) {
      final extracted = extractErrorMessage(response!.data);
      if (extracted != null) {
        return extracted;
      }
    }

    // Fall back to status code message
    if (statusCode > 0) {
      return getFriendlyErrorMessage(statusCode);
    }

    // Handle specific DioException types
    switch (error.type) {
      case DioExceptionType.connectionError:
        return "Network error - Check your internet connection";
      case DioExceptionType.connectionTimeout:
        return "Connection timeout - Check your internet connection";
      case DioExceptionType.sendTimeout:
        return "Request timeout - The server took too long to respond";
      case DioExceptionType.receiveTimeout:
        return "Response timeout - The server response was too slow";
      case DioExceptionType.cancel:
        return "Request cancelled";
      case DioExceptionType.badCertificate:
        return "Security error - Invalid certificate";
      case DioExceptionType.badResponse:
        // This case should have been handled above with status code
        return error.message ?? "Bad response from server";
      case DioExceptionType.unknown:
        return error.message ?? "An unexpected error occurred";
    }
  }
}
