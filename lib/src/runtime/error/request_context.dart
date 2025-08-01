/// Contains comprehensive information about an API request for error handling
class RequestContext {
  const RequestContext({
    required this.method,
    required this.endpoint,
    this.requestBody,
    this.headers,
    this.queryParameters,
    this.pathParameters,
  });

  /// HTTP method (GET, POST, PUT, DELETE, etc.)
  final String method;
  
  /// The endpoint path (e.g., '/pet/123')
  final String endpoint;
  
  /// Request body that was sent (if any)
  final dynamic requestBody;
  
  /// Request headers
  final Map<String, dynamic>? headers;
  
  /// Query parameters
  final Map<String, dynamic>? queryParameters;
  
  /// Path parameters (e.g., {'petId': '123'})
  final Map<String, dynamic>? pathParameters;

  /// Creates a RequestContext from JSON (for serialization if needed)
  factory RequestContext.fromJson(Map<String, dynamic> json) {
    return RequestContext(
      method: json['method'] as String,
      endpoint: json['endpoint'] as String,
      requestBody: json['requestBody'],
      headers: json['headers'] as Map<String, dynamic>?,
      queryParameters: json['queryParameters'] as Map<String, dynamic>?,
      pathParameters: json['pathParameters'] as Map<String, dynamic>?,
    );
  }

  /// Converts RequestContext to JSON (for serialization if needed)
  Map<String, dynamic> toJson() {
    return {
      'method': method,
      'endpoint': endpoint,
      if (requestBody != null) 'requestBody': requestBody,
      if (headers != null) 'headers': headers,
      if (queryParameters != null) 'queryParameters': queryParameters,
      if (pathParameters != null) 'pathParameters': pathParameters,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RequestContext) return false;
    
    return method == other.method &&
           endpoint == other.endpoint &&
           requestBody == other.requestBody &&
           _mapsEqual(headers, other.headers) &&
           _mapsEqual(queryParameters, other.queryParameters) &&
           _mapsEqual(pathParameters, other.pathParameters);
  }

  @override
  int get hashCode => Object.hash(
    method,
    endpoint,
    requestBody,
    headers,
    queryParameters,
    pathParameters,
  );

  @override
  String toString() {
    return 'RequestContext(method: $method, endpoint: $endpoint, '
           'requestBody: $requestBody, headers: $headers, '
           'queryParameters: $queryParameters, pathParameters: $pathParameters)';
  }

  // Helper method for comparing maps
  bool _mapsEqual(Map<String, dynamic>? a, Map<String, dynamic>? b) {
    if (a == null && b == null) return true;
    if (a == null || b == null) return false;
    if (a.length != b.length) return false;
    
    for (final key in a.keys) {
      if (!b.containsKey(key) || a[key] != b[key]) {
        return false;
      }
    }
    return true;
  }
}