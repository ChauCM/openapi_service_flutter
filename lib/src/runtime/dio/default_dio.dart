import 'package:dio/dio.dart';

/// Creates a default Dio client with opinionated configuration
/// suitable for most API integrations
class DefaultDio {
  /// Creates a default Dio instance with sensible defaults
  static Dio create({
    String? baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    List<Interceptor>? interceptors,
  }) {
    final dio = Dio();
    
    // Base configuration
    dio.options = BaseOptions(
      baseUrl: baseUrl ?? '',
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        ...?headers,
      },
      responseType: ResponseType.json,
      followRedirects: true,
      maxRedirects: 3,
    );
    
    // Add custom interceptors if provided
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    
    return dio;
  }
  
  /// Creates a Dio instance with logging enabled (debug mode)
  static Dio createWithLogging({
    String? baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
    Map<String, dynamic>? headers,
    List<Interceptor>? interceptors,
  }) {
    final dio = create(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: headers,
      interceptors: interceptors,
    );
    
    // Add logging interceptor for development
    dio.interceptors.add(_createLoggingInterceptor());
    
    return dio;
  }
  
  static Interceptor _createLoggingInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        print('🔵 ${options.method} ${options.uri}');
        if (options.data != null) {
          final dataLength = _getDataLength(options.data);
          print('📤 Request body: $dataLength');
        }
        handler.next(options);
      },
      onResponse: (response, handler) {
        print('🟢 ${response.statusCode} ${response.requestOptions.uri}');
        final responseLength = _getDataLength(response.data);
        print('📥 Response: $responseLength');
        handler.next(response);
      },
      onError: (error, handler) {
        print('🔴 ${error.response?.statusCode ?? 'NO_STATUS'} ${error.requestOptions.uri}');
        print('❌ ${error.message}');
        if (error.response?.data != null) {
          final errorLength = _getDataLength(error.response!.data);
          print('📥 Error response: $errorLength');
        }
        handler.next(error);
      },
    );
  }
  
  static String _getDataLength(dynamic data) {
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
}