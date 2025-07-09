import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_code_builder_example/service/test_api.openapi.dart';

final _logger = Logger('example_client');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.fine('Starting API Client...');

  // Create HTTP request sender
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));

  // Create API client instance
  final client = TestApiService(
    dio,
  );

  try {
    // Example: Call GET /hello/{name}
    final _ = await client.helloNameGet(salutation: 'Hello');

    // Example: Call POST /user/register
    final __ = await client.userRegisterPost(
      RegisterRequestDto(email: 'user@example.com'),
    );
  } catch (e) {
    _logger.severe('API call failed: $e');
    print('API call failed: $e');
  } finally {
    // Always dispose the request sender to free resources
    dio.close();
  }
}
