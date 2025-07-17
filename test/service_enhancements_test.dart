// ignore_for_file: lines_longer_than_80_chars

import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  group('Service Enhancements', () {
    group('Service Configuration', () {
      test('should generate ServiceConfig class with all required fields', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check ServiceConfig class generation
        expect(result, contains('class TestAPIServiceConfig'));
        expect(result, contains('final String baseUrl;'));
        expect(result, contains('final Duration connectTimeout;'));
        expect(result, contains('final Duration receiveTimeout;'));
        expect(result, contains('final List<Interceptor> interceptors;'));

        // Check constructor with defaults
        expect(result, contains('const TestAPIServiceConfig({'));
        expect(result, contains('baseUrl = \'\''));
        expect(
            result, contains('connectTimeout = const Duration(seconds: 60)'));
        expect(
            result, contains('receiveTimeout = const Duration(seconds: 60)'));
        expect(result, contains('interceptors = const []'));
      });

      test('should generate service constructor with config parameter', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check service constructor
        expect(result, contains('TestAPIService('));
        expect(result, contains('TestAPIServiceConfig? config'));
        expect(
            result,
            contains(
                'final serviceConfig = config ?? TestAPIServiceConfig();'));
        expect(
            result, contains('_dio.options.baseUrl = serviceConfig.baseUrl;'));
        expect(
            result,
            contains(
                '_dio.options.connectTimeout = serviceConfig.connectTimeout;'));
        expect(
            result,
            contains(
                '_dio.options.receiveTimeout = serviceConfig.receiveTimeout;'));
        expect(result,
            contains('_dio.interceptors.addAll(serviceConfig.interceptors);'));
      });

      test('should support custom configuration in generated service', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: CustomAPI
  version: 1.0.0
paths:
  /data:
    post:
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: object
                properties:
                  id:
                    type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check that custom API name is used
        expect(result, contains('class CustomAPIServiceConfig'));
        expect(result, contains('CustomAPIService('));
        expect(result, contains('CustomAPIServiceConfig? config'));
        expect(
            result,
            contains(
                'final serviceConfig = config ?? CustomAPIServiceConfig();'));
      });
    });

    group('Enhanced Error Handling', () {
      test('should generate enhanced error handling with status code mapping',
          () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check enhanced error handling
        expect(result, contains('final errorType = switch (statusCode) {'));
        expect(result, contains('401 => \'authentication_error\','));
        expect(result, contains('403 => \'authorization_error\','));
        expect(result, contains('404 => \'not_found_error\','));
        expect(result, contains('408 => \'timeout_error\','));
        expect(result, contains('422 => \'validation_error\','));
        expect(result, contains('429 => \'rate_limit_error\','));
        expect(result, contains('>= 500 => \'server_error\','));
        expect(result, contains('_ => error.type.name,'));
      });

      test('should generate error message extraction method', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check error message extraction
        expect(result, contains('String? _extractErrorMessage(dynamic data)'));
        expect(result, contains('if (data is Map<String, dynamic>) {'));
        expect(result, contains('return data[\'message\'] ??'));
        expect(result, contains('data[\'error\'] ??'));
        expect(result, contains('data[\'detail\'] ??'));
        expect(result, contains('data[\'error_description\'];'));
        expect(result, contains('if (data is String) {'));
        expect(result, contains('return data;'));
      });

      test('should use enhanced error handling in main error handler', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check error handler uses enhanced features
        expect(
            result, contains('final statusCode = response?.statusCode ?? 0;'));
        expect(
            result,
            contains(
                'String message = error.message ?? \'An error occurred\';'));
        expect(result,
            contains('message = _extractErrorMessage(data) ?? message;'));
        expect(result, contains('type: errorType,'));
        expect(result, contains('type: \'unknown_error\','));
      });
    });

    group('Integration Tests', () {
      test('should generate service with all enhancements combined', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Enhanced API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: object
                  properties:
                    id:
                      type: string
                    name:
                      type: string
    post:
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                name:
                  type: string
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: object
                properties:
                  id:
                    type: string
                  name:
                    type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Should contain all enhancements
        expect(result, contains('class EnhancedAPIServiceConfig'));
        expect(result, contains('final errorType = switch (statusCode) {'));
        expect(result, contains('_extractErrorMessage'));

        // Should be valid Dart code (basic syntax check)
        expect(result, contains('class EnhancedAPIService'));
        expect(result, contains('Future<Either<ApiError,'));
      });
    });
  });
}
