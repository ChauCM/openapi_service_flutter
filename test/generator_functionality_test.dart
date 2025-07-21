import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('Generator Functionality Tests', () {
    group('Basic generation', () {
      test('generates DTOs and service libraries for simple API', () async {
        final simpleApiYaml =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(simpleApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'SimpleApi',
          partFileName: 'simple_api.openapi.dtos.g.dart',
        );

        // Generate DTOs library
        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
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
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Verify ApiError class has sealed keyword
        expect(dtosOutput, contains('@freezed'));
        expect(dtosOutput, contains('sealed class ApiError'));
        expect(dtosOutput, contains('with _\$ApiError'));
        expect(dtosOutput, contains('const factory ApiError'));
        expect(dtosOutput, contains('factory ApiError.fromJson'));
      });
    });

    group('Schema handling', () {
      test('generates enum classes correctly', () async {
        final enumApiYaml =
            await File('test/fixtures/enum_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(enumApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EnumApi',
          partFileName: 'enum_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        expect(dtosOutput, contains('enum'));
        expect(dtosOutput, contains('@JsonValue'));

        final serviceLibrary = generator.generateServiceLibrary('enum_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Just verify the service was generated - specific enum references depend on the actual API structure
        expect(serviceOutput, contains('class EnumApiService'));
      });

      test('generates schema reference enums correctly without duplicates',
          () async {
        final enumReferenceApiYaml =
            await File('test/fixtures/enum_reference_api.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(enumReferenceApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EnumReferenceApi',
          partFileName: 'enum_reference_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Verify that a standalone NotificationTypeDto enum is generated
        expect(dtosOutput, contains('enum NotificationTypeDto {'));
        expect(dtosOutput, contains("@JsonValue('Global')"));
        expect(dtosOutput, contains("@JsonValue('UserSpecific')"));
        expect(dtosOutput, contains("@JsonValue('StepComment')"));
        expect(dtosOutput, contains('global,'));
        expect(dtosOutput, contains('userSpecific,'));
        expect(dtosOutput, contains('stepComment,'));

        // Verify that BulkNotificationDto references the correct enum type
        expect(dtosOutput,
            contains('required NotificationTypeDto notificationType'));

        // Verify that NotificationDto also references the same enum type
        expect(dtosOutput, contains('class NotificationDto'));
        expect(dtosOutput,
            contains('required NotificationTypeDto notificationType'));

        // Verify that no duplicate enums are generated
        // Count occurrences of 'enum' keyword - should only be 1 for NotificationTypeDto
        final enumMatches = 'enum NotificationTypeDto'.allMatches(dtosOutput);
        expect(enumMatches.length, equals(1),
            reason:
                'Should have exactly one NotificationTypeDto enum declaration');

        // Verify that there are no wrongly named enums like BulkNotificationDtoNotificationTypeDto
        expect(dtosOutput,
            isNot(contains('BulkNotificationDtoNotificationTypeDto')));
        expect(
            dtosOutput, isNot(contains('NotificationDtoNotificationTypeDto')));

        // Verify that extension methods are generated correctly
        expect(
            dtosOutput,
            contains(
                'extension NotificationTypeDtoExt on NotificationTypeDto'));
        expect(dtosOutput,
            contains('static NotificationTypeDto fromName(String name)'));
      });

      test('does not generate unused enum schemas', () async {
        final unusedEnumApiYaml =
            await File('test/fixtures/unused_enum_api.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(unusedEnumApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'UnusedEnumApi',
          partFileName: 'unused_enum_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // UsedNotificationType should be generated because it's referenced by Notification
        expect(dtosOutput, contains('enum UsedNotificationTypeDto {'));
        expect(dtosOutput, contains("@JsonValue('email')"));
        expect(dtosOutput, contains("@JsonValue('sms')"));
        expect(dtosOutput, contains("@JsonValue('push')"));
        expect(dtosOutput, contains('email,'));
        expect(dtosOutput, contains('sms,'));
        expect(dtosOutput, contains('push,'));

        // UnusedPriority should NOT be generated because it's not used anywhere
        expect(dtosOutput, isNot(contains('enum UnusedPriorityDto')));
        expect(dtosOutput, isNot(contains("@JsonValue('low')")));
        expect(dtosOutput, isNot(contains("@JsonValue('urgent')")));
        expect(dtosOutput, isNot(contains('low,')));
        expect(dtosOutput, isNot(contains('urgent,')));

        // Notification should use the correct enum type
        expect(dtosOutput, contains('required UsedNotificationTypeDto type'));
      });

      test('generates array handling correctly', () async {
        final arrayApiYaml =
            await File('test/fixtures/array_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(arrayApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ArrayApi',
          partFileName: 'array_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        expect(dtosOutput, contains('List<String>'));

        final serviceLibrary = generator.generateServiceLibrary('array_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
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
        );

        final serviceLibrary = generator.generateServiceLibrary('map_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
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
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        expect(dtosOutput, contains('String'));
        expect(dtosOutput, contains('DateTime'));
        expect(dtosOutput, contains('UserDto'));

        final serviceLibrary = generator.generateServiceLibrary('uuid_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('String'));
      });

      test('generates enum default values correctly', () async {
        final enumDefaultValuesApiYaml =
            await File('test/fixtures/enum_default_values_api.openapi.yaml')
                .readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(enumDefaultValuesApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EnumDefaultValuesApi',
          partFileName: 'enum_default_values_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Verify that referenced enum schemas are generated
        expect(dtosOutput, contains('enum UserStatusDto {'));
        expect(dtosOutput, contains('enum UserRoleDto {'));
        expect(dtosOutput, contains("@JsonValue('active')"));
        expect(dtosOutput, contains("@JsonValue('inactive')"));
        expect(dtosOutput, contains("@JsonValue('pending')"));
        expect(dtosOutput, contains("@JsonValue('admin')"));
        expect(dtosOutput, contains("@JsonValue('member')"));
        expect(dtosOutput, contains("@JsonValue('guest')"));

        // Verify that enum default values use enum values instead of strings
        expect(dtosOutput, contains('@Default(UserStatusDto.active)'));
        expect(dtosOutput, contains('@Default(UserRoleDto.member)'));
        
        // Verify inline enum default values also use enum values
        expect(dtosOutput, matches(RegExp(r'@Default\([A-Z][a-zA-Z]*Dto\.[a-z][a-zA-Z]*\)')));

        // Verify that string literals are NOT used for enum defaults
        expect(dtosOutput, isNot(contains("@Default('active')")));
        expect(dtosOutput, isNot(contains("@Default('member')")));
        expect(dtosOutput, isNot(contains("@Default('medium')")));

        // Verify that the DTO classes are generated correctly
        expect(dtosOutput, contains('class UserRequestDto'));
        expect(dtosOutput, contains('class UserResponseDto'));
        expect(dtosOutput, contains('UserStatusDto status'));
        expect(dtosOutput, contains('UserRoleDto role'));
      });
    });

    group('Response handling', () {
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
        );

        final serviceLibrary = generator.generateServiceLibrary('void_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('Either<ApiError, void>'));
        expect(serviceOutput, contains('const Right(null)'));
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
        );

        final serviceLibrary =
            generator.generateServiceLibrary('primitive_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
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

      test('handles List responses with proper fromJson deserialization',
          () async {
        final listResponseYaml = '''
openapi: 3.0.0
info:
  title: List Response API
  version: 1.0.0
  x-dart-name: ListResponseApi

paths:
  /items:
    get:
      responses:
        '200':
          description: Returns a list of items
          content:
            application/json:
              schema:
                type: array
                items:
                  \$ref: '#/components/schemas/ItemDto'

components:
  schemas:
    ItemDto:
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
            OpenApiServiceBuilderUtils.loadApiFromYaml(listResponseYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ListResponseApi',
          partFileName: 'list_response_api.openapi.dtos.g.dart',
        );

        final serviceLibrary =
            generator.generateServiceLibrary('list_response_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should generate service method that returns List<ItemDto>
        expect(
            serviceOutput, contains('Future<Either<ApiError, List<ItemDto>>>'));

        // Should correctly deserialize each item using fromJson
        expect(serviceOutput, contains('ItemDto.fromJson'));
        expect(serviceOutput,
            contains('ItemDto.fromJson((item as Map<String, dynamic>))'));

        // Should NOT contain the incorrect pattern
        expect(serviceOutput,
            isNot(contains('result.map((item) => item).toList()')));
        expect(
            serviceOutput, isNot(contains('(mappedResult as List<ItemDto>)')));
      });
    });

    group('Schema reference handling', () {
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
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Only UsedSchema should be generated since it's referenced by the endpoint
        expect(dtosOutput, contains('class UsedSchemaDto'));

        // UnusedSchema and AlsoUnusedSchema should NOT be generated
        expect(dtosOutput, isNot(contains('class UnusedSchemaDto')));
        expect(dtosOutput, isNot(contains('class AlsoUnusedSchemaDto')));

        // Verify the generated service references the component schema DTO directly
        final serviceLibrary =
            generator.generateServiceLibrary('unused_schema');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('UsedSchemaDto'));
        expect(serviceOutput, isNot(contains('UnusedSchemaDto')));
        expect(serviceOutput, isNot(contains('AlsoUnusedSchemaDto')));
      });

      test('avoids duplicate DTOs when endpoints reference component schemas',
          () async {
        final componentReferenceYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Component Reference API
  x-dart-name: ComponentReferenceApi

paths:
  /account:
    get:
      responses:
        '200':
          description: Get account
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/Account'
    put:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              \$ref: '#/components/schemas/EditUser'
      responses:
        '200':
          description: Update account
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/Account'

components:
  schemas:
    Account:
      type: object
      properties:
        id:
          type: string
        profile:
          \$ref: '#/components/schemas/Profile'
      required:
        - id
        - profile
    Profile:
      type: object
      properties:
        name:
          type: string
        email:
          type: string
      required:
        - name
        - email
    EditUser:
      type: object
      properties:
        displayName:
          type: string
        username:
          type: string
      required:
        - displayName
        - username
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(componentReferenceYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ComponentReferenceApi',
          partFileName: 'component_reference.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Should generate component schema DTOs
        expect(dtosOutput, contains('class AccountDto'));
        expect(dtosOutput, contains('class ProfileDto'));
        expect(dtosOutput, contains('class EditUserDto'));

        // Should NOT generate duplicate operation-specific DTOs for component references
        expect(dtosOutput, isNot(contains('class AccountGetResponseDto')));
        expect(dtosOutput, isNot(contains('class AccountPutResponseDto')));
        expect(dtosOutput, isNot(contains('class AccountPutRequestDto')));

        // Verify service uses component DTOs directly
        final serviceLibrary =
            generator.generateServiceLibrary('component_reference');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Service should reference component DTOs, not operation-specific ones
        expect(serviceOutput, contains('Future<Either<ApiError, AccountDto>>'));
        expect(serviceOutput, contains('EditUserDto body'));
        expect(serviceOutput, contains('AccountDto.fromJson'));

        // Should NOT reference non-existent operation-specific DTOs
        expect(serviceOutput, isNot(contains('AccountGetResponseDto')));
        expect(serviceOutput, isNot(contains('AccountPutResponseDto')));
        expect(serviceOutput, isNot(contains('AccountPutRequestDto')));
      });
    });

    group('Naming conventions', () {
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
        );

        final serviceLibrary = generator.generateServiceLibrary('custom');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
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
        );

        final serviceLibrary =
            generator.generateServiceLibrary('fallback_name');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('FallbackNameService'));
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
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Verify that existing schemas ending with 'Dto' don't get double suffix
        expect(dtosOutput, contains('class ExistingDto'));
        expect(dtosOutput, isNot(contains('class ExistingDtoDto')));

        final serviceLibrary = generator.generateServiceLibrary('dto_naming');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('class DtoNamingTestService'));
        expect(serviceOutput, isNot(contains('DtoDto')));
      });
    });

    group('OpenAPI version support', () {
      test('should support OpenAPI 3.1.1 specifications', () async {
        final openapi311Yaml =
            await File('test/fixtures/openapi_3_1_1.openapi.yaml')
                .readAsString();
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(openapi311Yaml),
          returnsNormally,
          reason:
              'OpenAPI 3.1.1 should be supported - currently fails with ListArchive error',
        );
      });

      test('generates DTOs for OpenAPI 3.1.1 nullable object types', () async {
        final openapi311Yaml = '''
openapi: 3.1.1
info:
  title: OpenAPI 3.1.1 Test API
  version: 1.0.0
  x-dart-name: OpenApi311Test

paths:
  /journey:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/JourneyDto'

components:
  schemas:
    JourneyDto:
      type: ["null", "object"]
      properties:
        id:
          type: string
          format: uuid
        title:
          type: string
        description:
          type: ["null", "string"]
        status:
          type: string
      required:
        - id
        - title
        - status
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(openapi311Yaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'OpenApi311Test',
          partFileName: 'openapi_3_1_1.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Should generate JourneyDto class even with OpenAPI 3.1.1 array-style nullable type
        expect(dtosOutput, contains('class JourneyDto'));
        expect(dtosOutput, contains('required String id'));
        expect(dtosOutput, contains('required String title'));
        expect(dtosOutput, contains('required String status'));
        expect(dtosOutput, contains('String? description'));

        // Should generate service that uses JourneyDto
        final serviceLibrary =
            generator.generateServiceLibrary('openapi_3_1_1');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('Future<Either<ApiError, JourneyDto>>'));
        expect(serviceOutput, contains('JourneyDto.fromJson'));
      });
    });

    group('Edge cases', () {
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
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
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
        );

        // Service should compile without errors
        expect(serviceOutput, contains('class EmptyArrayItemsApiService'));
        expect(serviceOutput,
            contains('Future<Either<ApiError, JourneyGetResponseDto>>'));
      });
    });
  });
}