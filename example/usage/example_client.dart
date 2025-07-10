import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_service_flutter_example/service/test_api.openapi.dtos.dart';
import 'package:openapi_service_flutter_example/service/test_api.openapi.service.dart';

final _logger = Logger('example_client');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.info('Starting API Client Example...');

  // Create HTTP client with configuration
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.example.com',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  // Add request/response interceptors for logging
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    logPrint: (obj) => _logger.fine(obj.toString()),
  ));

  // Create API service instance
  final apiService = TestApiService(dio);

  await _demonstrateApiCalls(apiService);

  // Clean up resources
  dio.close();
  _logger.info('Example completed');
}

Future<void> _demonstrateApiCalls(TestApiService apiService) async {
  _logger.info('=== API Call Examples ===');

  // Example 1: GET request with path parameter
  await _callHelloEndpoint(apiService);

  // Example 2: POST request with body
  await _callUserRegistration(apiService);

  // Example 3: Error handling demonstration
  await _demonstrateErrorHandling(apiService);
}

Future<void> _callHelloEndpoint(TestApiService apiService) async {
  _logger.info('--- GET /hello/{name} Example ---');

  final result = await apiService.helloNameGet(salutation: 'Hello');

  result.fold(
    (error) {
      _logger.severe('Hello API call failed: ${error.message}');
      if (error.statusCode != null) {
        _logger.severe('Status code: ${error.statusCode}');
      }
      print('❌ Hello API Error: ${error.message}');
    },
    (response) {
      _logger.info('Hello API call successful');
      print('✅ Hello API Response: $response');
    },
  );
}

Future<void> _callUserRegistration(TestApiService apiService) async {
  _logger.info('--- POST /user/register Example ---');

  final requestBody = UserRegisterPostRequestDto(
    email: 'user@example.com',
  );

  final result = await apiService.userRegisterPost(requestBody);

  result.fold(
    (error) {
      _logger.severe('User registration failed: ${error.message}');
      if (error.statusCode != null) {
        _logger.severe('Status code: ${error.statusCode}');
      }
      if (error.type != null) {
        _logger.severe('Error type: ${error.type}');
      }
      print('❌ Registration Error: ${error.message}');
    },
    (_) {
      _logger.info('User registration successful');
      print('✅ Registration Response: void');
    },
  );
}

Future<void> _demonstrateErrorHandling(TestApiService apiService) async {
  _logger.info('--- Error Handling Demonstration ---');

  // This would typically fail with a 404 or similar error
  final result =
      await apiService.helloNameGet(salutation: 'NonExistentEndpoint');

  result.fold(
    (error) {
      _logger.info('Expected error occurred - demonstrating error handling');
      print('📝 Error Handling Example:');
      print('   Message: ${error.message}');
      print('   Status Code: ${error.statusCode}');
      print('   Type: ${error.type}');

      // Handle different error types
      switch (error.type) {
        case 'connection_timeout':
          print('   → Connection timeout - retry with exponential backoff');
        case 'receive_timeout':
          print('   → Receive timeout - check network connection');
        case 'response':
          print('   → Server error - check API status');
        default:
          print('   → Unknown error - log for investigation');
      }
    },
    (response) {
      _logger.info('Unexpected success in error demonstration');
      print('✅ Unexpected Success: $response');
    },
  );
}

// Example of how to implement retry logic
Future<T> _retryApiCall<T>(
  Future<T> Function() apiCall, {
  int maxRetries = 3,
  Duration baseDelay = const Duration(seconds: 1),
}) async {
  for (int attempt = 0; attempt < maxRetries; attempt++) {
    try {
      return await apiCall();
    } catch (e) {
      if (attempt == maxRetries - 1) rethrow;

      final delay = baseDelay * (attempt + 1);
      _logger.warning(
          'API call failed (attempt ${attempt + 1}/$maxRetries), retrying in ${delay.inSeconds}s');
      await Future.delayed(delay);
    }
  }

  throw StateError('This should never be reached');
}
