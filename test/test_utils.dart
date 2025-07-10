import 'package:openapi_service_flutter/openapi_service_builder.dart';

/// Test utilities for OpenApiServiceBuilder tests
class TestUtils {
  /// Creates a default OpenApiServiceBuilder instance for testing
  static OpenApiServiceBuilder createDefaultBuilder() {
    return OpenApiServiceBuilder(
      useNullSafetySyntax: true,
      orderDirectives: true,
      generateProvider: false,
      providerNamePrefix: '',
      ignoreSecuritySchemes: false,
    );
  }

  /// Creates a builder with custom configuration
  static OpenApiServiceBuilder createCustomBuilder({
    bool useNullSafetySyntax = true,
    bool orderDirectives = true,
    bool generateProvider = false,
    String providerNamePrefix = '',
    bool ignoreSecuritySchemes = false,
  }) {
    return OpenApiServiceBuilder(
      useNullSafetySyntax: useNullSafetySyntax,
      orderDirectives: orderDirectives,
      generateProvider: generateProvider,
      providerNamePrefix: providerNamePrefix,
      ignoreSecuritySchemes: ignoreSecuritySchemes,
    );
  }

  /// Common test assertions for generated DTOs
  static void assertDtosContainsCommonElements(String dtosOutput) {
    // Check for required imports and parts
    assert(dtosOutput.contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
    assert(dtosOutput.contains('part \''));
    assert(dtosOutput.contains('.freezed.dart\''));
    assert(dtosOutput.contains('.g.dart\''));

    // Check for ApiError model
    assert(dtosOutput.contains('class ApiError'));
    assert(dtosOutput.contains('@freezed'));
  }

  /// Common test assertions for generated service files
  static void assertServiceContainsCommonElements(String serviceOutput) {
    // Check for required imports and generation header
    assert(serviceOutput.contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
    assert(serviceOutput.contains('import \''));
    assert(serviceOutput.contains('.openapi.dtos.dart\''));

    // Check for service class structure
    assert(serviceOutput.contains('Service'));
    assert(serviceOutput.contains('Dio'));
    assert(serviceOutput.contains('Either<ApiError,'));
    assert(serviceOutput.contains('_handleError'));
  }

  /// Creates a minimal valid OpenAPI YAML for testing
  static String createMinimalValidYaml({
    String title = 'Test API',
    String dartName = 'TestApi',
    String version = '1.0.0',
  }) {
    return '''
openapi: 3.0.0
info:
  version: $version
  title: $title
  x-dart-name: $dartName

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: object
                properties:
                  message:
                    type: string
                required:
                  - message

components:
  schemas:
    TestResponse:
      type: object
      properties:
        message:
          type: string
      required:
        - message
''';
  }

  /// Creates an OpenAPI YAML with enum types for testing
  static String createEnumYaml({
    String title = 'Enum Test API',
    String dartName = 'EnumTestApi',
  }) {
    return '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: $title
  x-dart-name: $dartName

paths:
  /status:
    get:
      parameters:
        - name: type
          in: query
          required: true
          schema:
            type: string
            enum:
              - active
              - inactive
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/StatusResponse'

components:
  schemas:
    StatusResponse:
      type: object
      properties:
        status:
          type: string
          enum:
            - success
            - error
        message:
          type: string
      required:
        - status
        - message
''';
  }

  /// Creates an OpenAPI YAML with array types for testing
  static String createArrayYaml({
    String title = 'Array Test API',
    String dartName = 'ArrayTestApi',
  }) {
    return '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: $title
  x-dart-name: $dartName

paths:
  /items:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: array
                items:
                  \$ref: '#/components/schemas/Item'

components:
  schemas:
    Item:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        tags:
          type: array
          items:
            type: string
      required:
        - id
        - name
''';
  }
}
