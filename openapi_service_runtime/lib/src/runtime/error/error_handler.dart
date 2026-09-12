import 'api_error.dart';
import 'request_context.dart';

/// Abstract interface for error handling
/// 
/// Implement this class to provide custom error handling logic
/// for your API services.
abstract class ErrorHandler {
  /// Handles an error and returns an [ApiError] with appropriate message and details
  /// 
  /// [error] - The error that occurred. A transport or status failure arrives
  /// as a `DioException`; a success response the client could not parse arrives
  /// as a `ResponseParseFailure`, which carries the `Response` so the status and
  /// body stay available.
  /// [stackTrace] - The stack trace at the time of error
  /// [requestContext] - Complete information about the request that failed
  ApiError handleError(
    dynamic error,
    StackTrace stackTrace,
    RequestContext requestContext,
  );
  
  /// Extracts an error message from response data
  /// 
  /// [data] - The response data (could be String, Map, or other types)
  /// Returns the extracted message or null if no message found
  String? extractErrorMessage(dynamic data);
}