import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder_example/service/testapi.openapi.dart';

final _logger = Logger('example_client');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.fine('Starting API Client...');

  // Create HTTP request sender
  final requestSender = HttpRequestSender();

  // Create API client instance
  final client = TestApiClient(
    Uri.parse('https://api.example.com'),
    requestSender,
  );

  try {
    // Example: Call GET /hello/{name}
    final response =
        await client.helloNameGet(name: 'Flutter', salutation: 'Hello');

    // Handle response using pattern matching
    response.map(
      on200: (success) {
        _logger.info('Success: ${success.body.message}');
        print('API Response: ${success.body.message}');
      },
      onElse: (error) {
        _logger.warning('Error: ${error.status}');
        print('API Error: ${error.status}');
      },
    );

    // Example: Call POST /user/register
    final registerResponse = await client.userRegisterPost(
      const RegisterRequest(email: 'user@example.com'),
    );

    registerResponse.map(
      on200: (success) {
        _logger.info('User registered successfully');
        print('Registration successful');
      },
      onElse: (error) {
        _logger.warning('Registration failed: ${error.status}');
        print('Registration failed: ${error.status}');
      },
    );
  } catch (e) {
    _logger.severe('API call failed: $e');
    print('API call failed: $e');
  } finally {
    // Always dispose the request sender to free resources
    requestSender.dispose();
  }
}
