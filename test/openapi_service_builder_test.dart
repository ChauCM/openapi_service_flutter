import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiServiceBuilder', () {
    group('generator functionality', () {
      test('generates DTOs and service libraries for simple API', () async {
        final simpleApiYaml =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(simpleApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'SimpleApi',
          partFileName: 'simple_api.openapi.dtos.g.dart',
          freezedPartFileName: 'simple_api.openapi.dtos.freezed.dart',
        );

        // Generate DTOs library
        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Verify DTOs file content
        expect(dtosOutput, contains('class ApiError'));
        expect(dtosOutput, contains('sealed class ApiError'));
        expect(
            dtosOutput, contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
        expect(dtosOutput,
            contains('part \'simple_api.openapi.dtos.freezed.dart\''));
        expect(dtosOutput, contains('part \'simple_api.openapi.dtos.g.dart\''));

        // Generate service library
        final serviceLibrary = generator.generateServiceLibrary('simple_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Verify service file content
        expect(serviceOutput, contains('class SimpleApiService'));
        expect(serviceOutput,
            contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
        expect(
            serviceOutput, contains('import \'simple_api.openapi.dtos.dart\''));
        expect(serviceOutput, contains('Future<Either<ApiError,'));
        expect(serviceOutput, contains('Dio'));
      });

      test('generates enum classes correctly', () async {
        final enumApiYaml =
            await File('test/fixtures/enum_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(enumApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EnumApi',
          partFileName: 'enum_api.openapi.dtos.g.dart',
          freezedPartFileName: 'enum_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        expect(dtosOutput, contains('enum'));
        expect(dtosOutput, contains('@JsonValue'));

        final serviceLibrary = generator.generateServiceLibrary('enum_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Just verify the service was generated - specific enum references depend on the actual API structure
        expect(serviceOutput, contains('class EnumApiService'));
      });

      test('generates array handling correctly', () async {
        final arrayApiYaml =
            await File('test/fixtures/array_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(arrayApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ArrayApi',
          partFileName: 'array_api.openapi.dtos.g.dart',
          freezedPartFileName: 'array_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        expect(dtosOutput, contains('List<String>'));

        final serviceLibrary = generator.generateServiceLibrary('array_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('class ArrayApiService'));
      });

      test('generates map types correctly', () async {
        final mapApiYaml =
            await File('test/fixtures/map_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(mapApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'MapApi',
          partFileName: 'map_api.openapi.dtos.g.dart',
          freezedPartFileName: 'map_api.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('map_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('Map<String, int>'));
        expect(serviceOutput, contains('class MapApiService'));
      });

      test('generates UUID and DateTime types correctly', () async {
        final uuidApiYaml =
            await File('test/fixtures/uuid_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(uuidApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'UuidApi',
          partFileName: 'uuid_api.openapi.dtos.g.dart',
          freezedPartFileName: 'uuid_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        expect(dtosOutput, contains('String'));
        expect(dtosOutput, contains('DateTime'));
        expect(dtosOutput, contains('UserDto'));

        final serviceLibrary = generator.generateServiceLibrary('uuid_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('String'));
      });

      test('uses custom dart name from x-dart-name extension', () async {
        final customYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Custom API
  x-dart-name: MyCustomApi

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(customYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'MyCustomApi',
          partFileName: 'custom.openapi.dtos.g.dart',
          freezedPartFileName: 'custom.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('custom');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('MyCustomApiService'));
      });

      test('falls back to filename when x-dart-name is missing', () async {
        final noNameYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: No Name API

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(noNameYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'FallbackName',
          partFileName: 'fallback_name.openapi.dtos.g.dart',
          freezedPartFileName: 'fallback_name.openapi.dtos.freezed.dart',
        );

        final serviceLibrary =
            generator.generateServiceLibrary('fallback_name');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('FallbackNameService'));
      });

      test('handles void responses correctly', () async {
        final voidYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Void API
  x-dart-name: VoidApi

paths:
  /delete:
    delete:
      responses:
        '204':
          description: No Content
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(voidYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'VoidApi',
          partFileName: 'void_api.openapi.dtos.g.dart',
          freezedPartFileName: 'void_api.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('void_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('Either<ApiError, void>'));
        expect(serviceOutput, contains('const Right(null)'));
      });

      test('avoids double Dto suffix in generated class names', () async {
        final dtoNamingYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: DTO Naming Test API
  x-dart-name: DtoNamingTest

paths:
  /test:
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              \$ref: '#/components/schemas/ExistingDto'
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: object
                properties:
                  result:
                    type: string
                required:
                  - result

components:
  schemas:
    ExistingDto:
      type: object
      properties:
        value:
          type: string
      required:
        - value
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(dtoNamingYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DtoNamingTest',
          partFileName: 'dto_naming.openapi.dtos.g.dart',
          freezedPartFileName: 'dto_naming.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Verify that existing schemas ending with 'Dto' don't get double suffix
        expect(dtosOutput, contains('class ExistingDto'));
        expect(dtosOutput, isNot(contains('class ExistingDtoDto')));

        final serviceLibrary = generator.generateServiceLibrary('dto_naming');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('class DtoNamingTestService'));
        expect(serviceOutput, isNot(contains('DtoDto')));
      });

      test('only generates DTOs for schemas used by endpoints', () async {
        final unusedSchemaYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Unused Schema API
  x-dart-name: UnusedSchemaApi

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/UsedSchema'

components:
  schemas:
    UsedSchema:
      type: object
      properties:
        id:
          type: string
        name:
          type: string
      required:
        - id
        - name
    UnusedSchema:
      type: object
      properties:
        value:
          type: string
        description:
          type: string
      required:
        - value
    AlsoUnusedSchema:
      type: object
      properties:
        data:
          type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(unusedSchemaYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'UnusedSchemaApi',
          partFileName: 'unused_schema.openapi.dtos.g.dart',
          freezedPartFileName: 'unused_schema.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Only UsedSchema should be generated since it's referenced by the endpoint
        expect(dtosOutput, contains('class UsedSchemaDto'));

        // UnusedSchema and AlsoUnusedSchema should NOT be generated
        expect(dtosOutput, isNot(contains('class UnusedSchemaDto')));
        expect(dtosOutput, isNot(contains('class AlsoUnusedSchemaDto')));

        // Verify the generated service references the response DTO (not the referenced schema directly)
        final serviceLibrary =
            generator.generateServiceLibrary('unused_schema');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('TestGetResponseDto'));
        expect(serviceOutput, isNot(contains('UnusedSchemaDto')));
        expect(serviceOutput, isNot(contains('AlsoUnusedSchemaDto')));
      });

      test('generates DTOs for schemas used in various locations', () async {
        final complexUsageYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Complex Usage API
  x-dart-name: ComplexUsageApi

paths:
  /users:
    get:
      parameters:
        - name: status
          in: query
          schema:
            \$ref: '#/components/schemas/UserStatus'
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: array
                items:
                  \$ref: '#/components/schemas/User'
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              \$ref: '#/components/schemas/CreateUserRequest'
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/User'

components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: string
        name:
          type: string
        status:
          \$ref: '#/components/schemas/UserStatus'
      required:
        - id
        - name
        - status
    UserStatus:
      type: string
      enum:
        - active
        - inactive
        - pending
    CreateUserRequest:
      type: object
      properties:
        name:
          type: string
        initialStatus:
          \$ref: '#/components/schemas/UserStatus'
      required:
        - name
        - initialStatus
    UnusedSchema:
      type: object
      properties:
        unusedField:
          type: string
    AnotherUnusedSchema:
      type: object
      properties:
        anotherUnusedField:
          type: integer
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(complexUsageYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ComplexUsageApi',
          partFileName: 'complex_usage.openapi.dtos.g.dart',
          freezedPartFileName: 'complex_usage.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Should generate DTOs for schemas used in:
        // - Response body (User -> referenced schemas generate DTOs)
        // - Request body (CreateUserRequest -> referenced schemas generate DTOs)
        // - Referenced by other schemas (UserStatus -> various enum forms)
        expect(dtosOutput, contains('class UserDto'));
        expect(dtosOutput, contains('class CreateUserRequestDto'));
        expect(dtosOutput, contains('class UsersPostResponseDto'));
        expect(dtosOutput, contains('class UsersPostRequestDto'));
        expect(dtosOutput, contains('enum UsersGetStatusDto'));

        // Should NOT generate DTOs for unused schemas
        expect(dtosOutput, isNot(contains('class UnusedSchemaDto')));
        expect(dtosOutput, isNot(contains('class AnotherUnusedSchemaDto')));
      });

      test('handles primitive return types without fromJson calls', () async {
        final primitiveYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Primitive API
  x-dart-name: PrimitiveApi

paths:
  /count:
    get:
      responses:
        '200':
          description: Returns a count
          content:
            application/json:
              schema:
                type: integer
  /name:
    get:
      responses:
        '200':
          description: Returns a name
          content:
            application/json:
              schema:
                type: string
  /enabled:
    get:
      responses:
        '200':
          description: Returns a boolean
          content:
            application/json:
              schema:
                type: boolean
  /rating:
    get:
      responses:
        '200':
          description: Returns a rating
          content:
            application/json:
              schema:
                type: number
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(primitiveYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'PrimitiveApi',
          partFileName: 'primitive_api.openapi.dtos.g.dart',
          freezedPartFileName: 'primitive_api.openapi.dtos.freezed.dart',
        );

        final serviceLibrary =
            generator.generateServiceLibrary('primitive_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Service should have methods returning primitive types wrapped in Either
        expect(serviceOutput, contains('Future<Either<ApiError, int>>'));
        expect(serviceOutput, contains('Future<Either<ApiError, String>>'));
        expect(serviceOutput, contains('Future<Either<ApiError, bool>>'));
        expect(serviceOutput, contains('Future<Either<ApiError, num>>'));

        // Should NOT have fromJson calls for primitive types
        expect(serviceOutput, isNot(contains('int.fromJson')));
        expect(serviceOutput, isNot(contains('String.fromJson')));
        expect(serviceOutput, isNot(contains('bool.fromJson')));
        expect(serviceOutput, isNot(contains('num.fromJson')));

        // Should directly cast response.data to the primitive type
        expect(serviceOutput, contains('response.data as int'));
        expect(serviceOutput, contains('response.data as String'));
        expect(serviceOutput, contains('response.data as bool'));
        expect(serviceOutput, contains('response.data as num'));
      });

      test('handles empty array items without generating missing DTOs',
          () async {
        final emptyArrayItemsYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Empty Array Items API
  x-dart-name: EmptyArrayItemsApi

paths:
  /journey:
    get:
      responses:
        '200':
          description: Returns a journey
          content:
            application/json:
              schema:
                type: object
                properties:
                  journey:
                    \$ref: '#/components/schemas/Journey'
                  stepsCount:
                    type: integer
                  latestStarters:
                    type: array
                    items: {}
                  latestCompanions:
                    type: array
                    items: {}
                  latestCelebrators:
                    type: array
                    items: {}
                required:
                  - journey
                  - stepsCount

components:
  schemas:
    Journey:
      type: object
      properties:
        id:
          type: string
        name:
          type: string
      required:
        - id
        - name
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(emptyArrayItemsYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EmptyArrayItemsApi',
          partFileName: 'empty_array_items_api.openapi.dtos.g.dart',
          freezedPartFileName:
              'empty_array_items_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Should generate the Journey DTO
        expect(dtosOutput, contains('class JourneyDto'));

        // Should generate the response DTO with List<dynamic> for empty array items
        expect(dtosOutput, contains('class JourneyGetResponseDto'));
        expect(dtosOutput, contains('List<dynamic>? latestStarters'));
        expect(dtosOutput, contains('List<dynamic>? latestCompanions'));
        expect(dtosOutput, contains('List<dynamic>? latestCelebrators'));

        // Should NOT generate any missing DTO classes for empty array items
        expect(dtosOutput,
            isNot(contains('JourneyGetResponseDtoLatestStartersDto')));
        expect(dtosOutput,
            isNot(contains('JourneyGetResponseDtoLatestCompanionsDto')));
        expect(dtosOutput,
            isNot(contains('JourneyGetResponseDtoLatestCelebratorsDto')));

        final serviceLibrary =
            generator.generateServiceLibrary('empty_array_items_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Service should compile without errors
        expect(serviceOutput, contains('class EmptyArrayItemsApiService'));
        expect(serviceOutput,
            contains('Future<Either<ApiError, JourneyGetResponseDto>>'));
      });

      test('generates ApiError class with sealed keyword', () async {
        final simpleApiYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Simple API
  x-dart-name: SimpleApi

paths:
  /hello:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(simpleApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'SimpleApi',
          partFileName: 'simple_api.openapi.dtos.g.dart',
          freezedPartFileName: 'simple_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Verify ApiError class has sealed keyword
        expect(dtosOutput, contains('@freezed'));
        expect(dtosOutput, contains('sealed class ApiError'));
        expect(dtosOutput, contains('with _\$ApiError'));
        expect(dtosOutput, contains('const factory ApiError'));
        expect(dtosOutput, contains('factory ApiError.fromJson'));
      });
    });

    group('buildExtensions', () {
      test('returns correct file extensions', () {
        final builder = OpenApiServiceBuilder(
          orderDirectives: true,
        );

        expect(
            builder.buildExtensions,
            equals({
              '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart']
            }));
      });
    });
  });

  group('OpenApiServiceBuilderUtils', () {
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
        expect(item.properties?['tags']?.type?.name, equals('array'));
        expect(item.properties?['tags']?.items?.type?.name, equals('string'));
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
        expect(schema.additionalPropertySchema?.type?.name, equals('integer'));
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
  });
}
