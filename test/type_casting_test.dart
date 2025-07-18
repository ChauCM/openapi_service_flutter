import 'package:test/test.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';

void main() {
  group('Type Casting Tests', () {
    test('should handle tags field with nullable strings', () {
      // Test case that reproduces the type casting issue
      final yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /test:
    get:
      tags:
        - user
        - admin
      summary: Test endpoint
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';

      // This should not throw a type casting error
      expect(() {
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        final operation = api.paths?['/test']?.operations['get'];
        expect(operation?.tags, isNotNull);
        expect(operation?.tags, equals(['user', 'admin']));
      }, returnsNormally);
    });

    test('should handle tags field with null values in array', () {
      // Test case with null values that should be filtered out
      final yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /test:
    get:
      tags:
        - user
        - null
        - admin
      summary: Test endpoint
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';

      // This should filter out null values and not crash
      expect(() {
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        final operation = api.paths?['/test']?.operations['get'];
        expect(operation?.tags, isNotNull);
        expect(operation?.tags, equals(['user', 'admin']));
      }, returnsNormally);
    });

    test('should handle empty tags array', () {
      final yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /test:
    get:
      tags: []
      summary: Test endpoint
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';

      expect(() {
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        final operation = api.paths?['/test']?.operations['get'];
        expect(operation?.tags, isNotNull);
        expect(operation?.tags, isEmpty);
      }, returnsNormally);
    });

    test('should handle missing tags field', () {
      final yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /test:
    get:
      summary: Test endpoint
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';

      expect(() {
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        final operation = api.paths?['/test']?.operations['get'];
        expect(operation?.tags, isNull);
      }, returnsNormally);
    });

    test('should handle OpenAPI 3.1.1 array type syntax [null, string]', () {
      // Test case with OpenAPI 3.1.1 array type syntax
      final yamlContent = '''
openapi: 3.1.1
info:
  title: Test API
  version: 1.0.0
paths:
  /test:
    get:
      tags:
        - user
      summary: Test endpoint
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: object
                properties:
                  nullableString:
                    type: [null, string]
                  mixedType:
                    type: [integer, string]
''';

      // This should not throw an error and should handle the array type syntax correctly
      expect(() {
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        final operation = api.paths?['/test']?.operations['get'];
        expect(operation?.tags, isNotNull);
        expect(operation?.tags, equals(['user']));

        // Check that the response schema has the expected structure
        final response = operation?.responses?['200'];
        expect(response, isNotNull);
        expect(response?.content, isNotNull);
        expect(response?.content?.keys, contains('application/json'));
      }, returnsNormally);
    });
  });
}
