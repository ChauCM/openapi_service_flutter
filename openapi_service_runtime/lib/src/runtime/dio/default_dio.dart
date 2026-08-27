import 'package:dio/dio.dart';
import '../logging.dart';
import 'api_log_interceptor.dart';
import 'smart_upload_interceptor.dart';

/// Creates a default Dio client with opinionated configuration
/// suitable for most API integrations
class DefaultDio {
  /// Creates a default Dio instance with sensible defaults
  ///
  /// Includes smart upload detection that automatically adjusts timeouts
  /// for file upload operations while maintaining fast timeouts for regular API calls.
  static Dio create({
    String? baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
    Duration uploadProgressTimeout = const Duration(seconds: 45),
    Map<String, dynamic>? headers,
    List<Interceptor>? interceptors,
    bool enableSmartUploadTimeout = true,
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

    // Add smart upload interceptor for intelligent timeout handling
    if (enableSmartUploadTimeout) {
      dio.interceptors.add(SmartUploadInterceptor(
        regularSendTimeout: sendTimeout,
        uploadProgressTimeout: uploadProgressTimeout,
      ));
    }

    // Add custom interceptors if provided
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }

    return dio;
  }

  /// Creates a Dio instance that logs one line per request and one per
  /// outcome, with the elapsed time — see [ApiLogInterceptor].
  ///
  /// **Debug builds only, by default.** [enableLogging] defaults to
  /// [assertsEnabled], so a release AOT build logs nothing and shipping this
  /// call by accident cannot print every endpoint a real user hits into the
  /// device log. Pass `enableLogging: true` to log in release deliberately, or
  /// `false` to turn it off.
  ///
  /// A host that builds its own [Dio] — to keep timeouts it has tuned, for
  /// instance — does not need this factory at all; it adds
  /// `const ApiLogInterceptor()` to the client it already has.
  static Dio createWithLogging({
    String? baseUrl,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
    Duration uploadProgressTimeout = const Duration(seconds: 45),
    Map<String, dynamic>? headers,
    List<Interceptor>? interceptors,
    bool enableSmartUploadTimeout = true,
    bool? enableLogging,
    ApiLogSink? log,
    String Function(Uri uri)? redactUri,
  }) {
    final dio = create(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      uploadProgressTimeout: uploadProgressTimeout,
      headers: headers,
      interceptors: interceptors,
      enableSmartUploadTimeout: enableSmartUploadTimeout,
    );

    if (enableLogging ?? assertsEnabled) {
      dio.interceptors.add(ApiLogInterceptor(log: log, redactUri: redactUri));
    }

    return dio;
  }
}
