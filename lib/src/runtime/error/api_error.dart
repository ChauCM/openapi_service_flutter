import 'package:dio/dio.dart';
import 'request_context.dart';

/// Represents an API error with user-friendly message and debug information
class ApiError {
  const ApiError({
    required this.message,
    this.statusCode,
    this.type,
    this.technicalDetails,
    this.debugInfo,
  });

  /// User-friendly error message
  final String message;
  
  /// HTTP status code if available
  final int? statusCode;
  
  /// Error type for categorization
  final String? type;
  
  /// Full technical error details for debugging
  final String? technicalDetails;
  
  /// Additional debug information
  final ApiErrorDebugInfo? debugInfo;

  /// Creates an ApiError from JSON (for serialization if needed)
  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      message: json['message'] as String,
      statusCode: json['statusCode'] as int?,
      type: json['type'] as String?,
      technicalDetails: json['technicalDetails'] as String?,
      debugInfo: json['debugInfo'] != null 
          ? ApiErrorDebugInfo.fromJson(json['debugInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  /// Converts ApiError to JSON (for serialization if needed)
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      if (statusCode != null) 'statusCode': statusCode,
      if (type != null) 'type': type,
      if (technicalDetails != null) 'technicalDetails': technicalDetails,
      if (debugInfo != null) 'debugInfo': debugInfo!.toJson(),
    };
  }
  
  // Computed getters for convenience
  
  /// The endpoint that failed
  String? get endpoint => debugInfo?.requestContext.endpoint;
  
  /// Stack trace for debugging
  StackTrace? get stackTrace => debugInfo?.stackTrace;
  
  /// Request context information
  RequestContext? get requestContext => debugInfo?.requestContext;
  
  /// Whether this is a network error
  bool get isNetworkError => type == 'network_error' || 
                             (debugInfo?.originalError is DioException && 
                              (debugInfo!.originalError as DioException).type == DioExceptionType.connectionError);
  
  /// Whether this is a timeout error
  bool get isTimeout => type == 'timeout_error' || statusCode == 408;
  
  /// Whether this is an authentication error
  bool get isAuthenticationError => type == 'authentication_error' || statusCode == 401;
  
  /// Whether this is an authorization error
  bool get isAuthorizationError => type == 'authorization_error' || statusCode == 403;
  
  /// Whether this is a not found error
  bool get isNotFound => type == 'not_found_error' || statusCode == 404;
  
  /// Whether this is a validation error
  bool get isValidationError => type == 'validation_error' || statusCode == 422;
  
  /// Whether this is a server error
  bool get isServerError => type == 'server_error' || (statusCode != null && statusCode! >= 500);
  
  /// Whether this is a client error
  bool get isClientError => type == 'client_error' || (statusCode != null && statusCode! >= 400 && statusCode! < 500);

  @override
  String toString() {
    return 'ApiError(message: $message, statusCode: $statusCode, type: $type)';
  }
}

/// Contains debug information for API errors
class ApiErrorDebugInfo {
  const ApiErrorDebugInfo({
    required this.requestContext,
    this.stackTrace,
    this.responseHeaders,
    this.responseBody,
    this.originalError,
  });

  /// Complete request context information
  final RequestContext requestContext;
  
  /// Stack trace at the time of error (not serialized)
  final StackTrace? stackTrace;
  
  /// Response headers from the failed request
  final Map<String, dynamic>? responseHeaders;
  
  /// Response body that was received (if any)
  final dynamic responseBody;
  
  /// The original error object (e.g., DioException) (not serialized)
  final dynamic originalError;

  /// Creates ApiErrorDebugInfo from JSON (stackTrace and originalError are not deserialized)
  factory ApiErrorDebugInfo.fromJson(Map<String, dynamic> json) {
    return ApiErrorDebugInfo(
      requestContext: RequestContext.fromJson(json['requestContext'] as Map<String, dynamic>),
      responseHeaders: json['responseHeaders'] as Map<String, dynamic>?,
      responseBody: json['responseBody'],
      // stackTrace and originalError are not serialized/deserialized
    );
  }

  /// Converts ApiErrorDebugInfo to JSON (stackTrace and originalError are excluded)
  Map<String, dynamic> toJson() {
    return {
      'requestContext': requestContext.toJson(),
      if (responseHeaders != null) 'responseHeaders': responseHeaders,
      if (responseBody != null) 'responseBody': responseBody,
      // stackTrace and originalError are intentionally excluded from serialization
    };
  }

  @override
  String toString() {
    return 'ApiErrorDebugInfo(requestContext: $requestContext, '
           'responseHeaders: $responseHeaders, responseBody: $responseBody)';
  }
}