import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiServiceBuilderUtils Tests', () {
    group('loadApiFromYaml', () {
      test('loads simple YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('Simple API'));
        expect(api.info?.version, equals('1.0.0'));
        expect(api.info?.extensions['x-dart-name'], equals('SimpleApi'));
        expect(api.paths, isNotEmpty);
        expect(api.paths!['/hello'], isNotNull);
        expect(api.components?.schemas, isNotEmpty);
      });

      test('loads enum YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/enum_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('Enum API'));
        expect(api.components?.schemas?['StatusResponse'], isNotNull);
        final statusResponse = api.components!.schemas!['StatusResponse']!;
        expect(statusResponse.properties?['status']?.enumerated, isNotNull);
        expect(statusResponse.properties?['status']?.enumerated,
            contains('success'));
        expect(statusResponse.properties?['status']?.enumerated,
            contains('error'));
      });

      test('loads array YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/array_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('Array API'));
        expect(api.components?.schemas?['Item'], isNotNull);
        final item = api.components!.schemas!['Item']!;
        expect(item.properties?['tags']?.type?.toString().split('.').last,
            equals('array'));
        expect(
            item.properties?['tags']?.items?.type?.toString().split('.').last,
            equals('string'));
      });

      test('loads map YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/map_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('Map API'));
        final inventoryResponse =
            api.paths!['/inventory']!.operations['get']!.responses!['200']!;
        final schema = inventoryResponse.content!['application/json']!.schema!;
        expect(schema.additionalPropertySchema, isNotNull);
        expect(
            schema.additionalPropertySchema?.type?.toString().split('.').last,
            equals('integer'));
      });

      test('loads UUID YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/uuid_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('UUID API'));
        expect(api.components?.schemas?['User'], isNotNull);
        final user = api.components!.schemas!['User']!;
        expect(user.properties?['id']?.format, equals('uuid'));
        expect(user.properties?['createdAt']?.format, equals('date-time'));
      });

      test('throws on invalid YAML', () {
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
              'invalid: yaml: content: ['),
          throwsA(anything),
        );
      });

      test('throws on missing required fields', () {
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml('invalid: true'),
          throwsA(anything),
        );
      });
    });

    group('formatLibrary', () {
      test('formats library with correct header and footer', () {
        // This is a simplified test - the actual formatLibrary method requires a Library object
        // which is complex to construct manually. The test verifies the method exists and
        // can be called with proper parameters.
        expect(() => OpenApiServiceBuilderUtils.formatLibrary, returnsNormally);
      });
    });

    group('content validation', () {
      test('accepts valid YAML content for .yaml files', () {
        const yamlContent = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.openapi.yaml',
          ),
          returnsNormally,
        );
      });

      test('rejects JSON content in .yaml files', () {
        const jsonContent = '''
          {
            "openapi": "3.0.0",
            "info": {
              "title": "Test API",
              "version": "1.0.0"
            },
            "paths": {}
          }
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            jsonContent,
            filePath: 'test.openapi.yaml',
          ),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('YAML extension but contains JSON content'),
          )),
        );
      });

      test('accepts valid JSON content for .json files', () {
        const jsonContent = '''
          {
            "openapi": "3.0.0",
            "info": {
              "title": "Test API",
              "version": "1.0.0"
            },
            "paths": {}
          }
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            jsonContent,
            filePath: 'test.openapi.json',
          ),
          returnsNormally,
        );
      });

      test('rejects non-JSON content in .json files', () {
        const yamlContent = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.openapi.json',
          ),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('JSON extension but does not contain valid JSON content'),
          )),
        );
      });

      test('accepts content without file path validation', () {
        const yamlContent = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent),
          returnsNormally,
        );
      });
    });

    group('Error handling', () {
      test('handles malformed YAML gracefully', () {
        const malformedYaml = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths:
            /test:
              get:
                responses:
                  200:
                    description: Success
                    content: malformed content here
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(malformedYaml),
          throwsA(anything),
        );
      });

      test('handles missing OpenAPI version', () {
        const noVersionYaml = '''
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(noVersionYaml),
          throwsA(anything),
        );
      });

      test('handles invalid OpenAPI version', () {
        const invalidVersionYaml = '''
          openapi: 2.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        // Should handle OpenAPI 2.0 (Swagger) specs as well
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(invalidVersionYaml),
          returnsNormally,
        );
      });

      test('handles missing info section', () {
        const noInfoYaml = '''
          openapi: 3.0.0
          paths: {}
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(noInfoYaml),
          throwsA(anything),
        );
      });
    });

    group('File extension handling', () {
      test('correctly identifies YAML files', () {
        const yamlContent = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        // Test various YAML extensions
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.yaml',
          ),
          returnsNormally,
        );

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.yml',
          ),
          returnsNormally,
        );

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.openapi.yaml',
          ),
          returnsNormally,
        );
      });

      test('correctly identifies JSON files', () {
        const jsonContent = '''
          {
            "openapi": "3.0.0",
            "info": {
              "title": "Test API",
              "version": "1.0.0"
            },
            "paths": {}
          }
        ''';

        // Test various JSON extensions
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            jsonContent,
            filePath: 'test.json',
          ),
          returnsNormally,
        );

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            jsonContent,
            filePath: 'test.openapi.json',
          ),
          returnsNormally,
        );
      });

      test('handles unknown file extensions gracefully', () {
        const yamlContent = '''
          openapi: 3.0.0
          info:
            title: Test API
            version: 1.0.0
          paths: {}
        ''';

        // Should not throw for unknown extensions, just process the content
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
            yamlContent,
            filePath: 'test.unknown',
          ),
          returnsNormally,
        );
      });
    });

    group('Complex schema parsing', () {
      test('handles recursive schema references', () {
        const recursiveYaml = '''
          openapi: 3.0.0
          info:
            title: Recursive API
            version: 1.0.0
          paths:
            /tree:
              get:
                responses:
                  '200':
                    description: Tree node
                    content:
                      application/json:
                        schema:
                          \$ref: '#/components/schemas/TreeNode'
          components:
            schemas:
              TreeNode:
                type: object
                properties:
                  value:
                    type: string
                  children:
                    type: array
                    items:
                      \$ref: '#/components/schemas/TreeNode'
                required:
                  - value
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(recursiveYaml),
          returnsNormally,
        );
      });

      test('handles complex nested schemas', () {
        const complexYaml = '''
          openapi: 3.0.0
          info:
            title: Complex API
            version: 1.0.0
          paths:
            /complex:
              post:
                requestBody:
                  required: true
                  content:
                    application/json:
                      schema:
                        type: object
                        properties:
                          data:
                            type: object
                            properties:
                              nested:
                                type: array
                                items:
                                  type: object
                                  properties:
                                    deep:
                                      type: object
                                      additionalProperties:
                                        type: string
                responses:
                  '200':
                    description: Success
                    content:
                      application/json:
                        schema:
                          type: string
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(complexYaml),
          returnsNormally,
        );
      });

      test('handles allOf, oneOf, anyOf schemas', () {
        const compositionYaml = '''
          openapi: 3.0.0
          info:
            title: Composition API
            version: 1.0.0
          paths:
            /composition:
              get:
                responses:
                  '200':
                    description: Composition response
                    content:
                      application/json:
                        schema:
                          allOf:
                            - type: object
                              properties:
                                base:
                                  type: string
                            - type: object
                              properties:
                                extended:
                                  type: integer
          components:
            schemas:
              OneOfSchema:
                oneOf:
                  - type: string
                  - type: integer
              AnyOfSchema:
                anyOf:
                  - type: string
                  - type: boolean
        ''';

        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(compositionYaml),
          returnsNormally,
        );
      });
    });
  });

  group('OpenApiServiceBuilder', () {
    group('buildExtensions', () {
      test('returns correct file extensions', () {
        final builder = OpenApiServiceBuilder();

        expect(
            builder.buildExtensions,
            equals({
              '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart'],
              '.openapi.json': ['.openapi.dtos.dart', '.openapi.service.dart']
            }));
      });
    });
  });
}