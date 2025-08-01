/// Provides user-friendly error messages for common HTTP status codes
String getFriendlyErrorMessage(int statusCode) {
  switch (statusCode) {
    case 400: 
      return "Error 400 - Invalid request. Please check your input";
    case 401: 
      return "Error 401 - Please sign in to continue";
    case 403: 
      return "Error 403 - You don't have permission to access this";
    case 404: 
      return "Error 404 - Content not found";
    case 408: 
      return "Error 408 - Request took too long. Please try again";
    case 409:
      return "Error 409 - Conflict. The request could not be completed";
    case 410:
      return "Error 410 - The requested resource is no longer available";
    case 413:
      return "Error 413 - Request too large. Please reduce the size";
    case 422: 
      return "Error 422 - Invalid data. Please check your input";
    case 429: 
      return "Error 429 - Too many requests. Please wait and try again";
    case 500: 
      return "Error 500 - Something went wrong. Please try again later";
    case 502: 
      return "Error 502 - Server is temporarily unavailable";
    case 503: 
      return "Error 503 - Service temporarily unavailable. Please try again later";
    case 504: 
      return "Error 504 - Request timeout. Please try again";
    default:
      if (statusCode >= 400 && statusCode < 500) {
        return "Error $statusCode - Request error. Please check your input";
      } else if (statusCode >= 500) {
        return "Error $statusCode - Server error. Please try again later";
      }
      return "Error $statusCode";
  }
}

/// Provides user-friendly error messages for common runtime errors
String getFriendlyRuntimeErrorMessage(dynamic error) {
  final errorString = error.toString();
  
  // Type casting errors
  if (errorString.contains('type') && errorString.contains('is not a subtype of type')) {
    return "Data format error - The server response was unexpected";
  }
  
  // Null errors
  if (errorString.contains("Null check operator used on a null value")) {
    return "Data error - Missing required information from server";
  }
  
  // Format/parsing errors
  if (errorString.contains('FormatException')) {
    if (errorString.contains('DateTime')) {
      return "Date format error - Invalid date format from server";
    }
    if (errorString.contains('number')) {
      return "Number format error - Invalid number format from server";
    }
    return "Format error - Unable to process server response";
  }
  
  // JSON parsing errors
  if (errorString.contains('Unexpected character') || 
      errorString.contains('SyntaxError') ||
      errorString.contains('Unexpected end of input')) {
    return "Response error - Invalid data received from server";
  }
  
  // Range errors
  if (errorString.contains('RangeError')) {
    return "Data error - Unexpected response structure";
  }
  
  // State errors
  if (errorString.contains('StateError')) {
    if (errorString.contains('No element')) {
      return "Data error - Expected data not found in response";
    }
    return "Processing error - Unable to handle server response";
  }
  
  // Timeout from non-Dio source
  if (errorString.contains('TimeoutException')) {
    return "Request timeout - The operation took too long";
  }
  
  // Assertion errors (shouldn't happen in production but good to handle)
  if (errorString.contains('AssertionError')) {
    return "Processing error - Unexpected application state";
  }
  
  // Generic fallback
  return "Unexpected error - Something went wrong while processing the request";
}