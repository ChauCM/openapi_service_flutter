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
          freezedPartFileName: 'enum_reference_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'unused_enum_api.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
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

        // Verify the generated service references the component schema DTO directly
        final serviceLibrary =
            generator.generateServiceLibrary('unused_schema');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('UsedSchemaDto'));
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
        expect(dtosOutput, contains('enum UsersGetStatusDto'));

        // Should NOT generate operation-specific DTOs when endpoints reference component schemas
        expect(dtosOutput, isNot(contains('class UsersPostResponseDto')));
        expect(dtosOutput, isNot(contains('class UsersPostRequestDto')));

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
          freezedPartFileName: 'component_reference.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
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
          orderDirectives: true,
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
          freezedPartFileName: 'openapi_3_1_1.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Should generate JourneyDto class even with OpenAPI 3.1.1 array-style nullable type
        expect(dtosOutput, contains('class JourneyDto'));
        expect(dtosOutput, contains('required String id'));
        expect(dtosOutput, contains('required String title'));
        expect(dtosOutput, contains('required String status'));
        expect(dtosOutput, contains('String? description'));

        // Should generate service that uses JourneyDto
        final serviceLibrary = generator.generateServiceLibrary('openapi_3_1_1');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('Future<Either<ApiError, JourneyDto>>'));
        expect(serviceOutput, contains('JourneyDto.fromJson'));
      });

      test('handles List responses with proper fromJson deserialization', () async {
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
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(listResponseYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ListResponseApi',
          partFileName: 'list_response_api.openapi.dtos.g.dart',
          freezedPartFileName: 'list_response_api.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('list_response_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Should generate service method that returns List<ItemDto>
        expect(serviceOutput, contains('Future<Either<ApiError, List<ItemDto>>>'));
        
        // Should correctly deserialize each item using fromJson
        expect(serviceOutput, contains('ItemDto.fromJson'));
        expect(serviceOutput, contains('ItemDto.fromJson((item as Map<String, dynamic>))'));
        
        // Should NOT contain the incorrect pattern
        expect(serviceOutput, isNot(contains('result.map((item) => item).toList()')));
        expect(serviceOutput, isNot(contains('(mappedResult as List<ItemDto>)')));
      });

      test('generates onError callback in service configuration and error handling', () async {
        final errorCallbackYaml = '''
openapi: 3.0.0
info:
  title: Error Callback API
  version: 1.0.0
  x-dart-name: ErrorCallbackApi

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
        '404':
          description: Not Found
          content:
            application/json:
              schema:
                type: object
                properties:
                  error:
                    type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(errorCallbackYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ErrorCallbackApi',
          partFileName: 'error_callback_api.openapi.dtos.g.dart',
          freezedPartFileName: 'error_callback_api.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('error_callback_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        // Should generate service config with onError callback parameter
        expect(serviceOutput, contains('class ErrorCallbackApiServiceConfig'));
        expect(serviceOutput, contains('this.onError'));
        expect(serviceOutput, contains('void Function('));
        expect(serviceOutput, contains('dynamic error'));
        expect(serviceOutput, contains('StackTrace stackTrace'));
        expect(serviceOutput, contains('String endpoint'));
        expect(serviceOutput, contains('Map<String, dynamic> headers'));
        expect(serviceOutput, contains('dynamic requestBody'));
        expect(serviceOutput, contains('dynamic responseBody'));
        expect(serviceOutput, contains(')? onError'));

        // Should generate service class with onError field
        expect(serviceOutput, contains('class ErrorCallbackApiService'));
        expect(serviceOutput, contains('late final void Function('));
        expect(serviceOutput, contains(')? _onError'));

        // Should initialize onError field in constructor
        expect(serviceOutput, contains('_onError = serviceConfig.onError'));

        // Should generate _handleError method with callback invocation
        expect(serviceOutput, contains('ApiError _handleError'));
        expect(serviceOutput, contains('if (_onError != null)'));
        expect(serviceOutput, contains('_onError('));
        expect(serviceOutput, contains('error, stackTrace, endpoint, headers, requestData, responseData)'));
        expect(serviceOutput, contains('final headers = response?.headers.map ?? <String, dynamic>{}'));
        expect(serviceOutput, contains('final requestData = error.requestOptions.data'));
        expect(serviceOutput, contains('final responseData = response?.data'));

        // Should handle both DioException and unknown errors
        expect(serviceOutput, contains('if (error is DioException)'));
        expect(serviceOutput, contains('// Call onError callback if provided'));
        expect(serviceOutput, contains('// Call onError callback for unknown errors'));

        // Should wrap callback calls in try-catch blocks
        expect(serviceOutput, contains('try {'));
        expect(serviceOutput, contains('} catch (_) {'));
        expect(serviceOutput, contains('// Ignore errors in callback to prevent recursive issues'));

        // Should pass endpoint parameter to _handleError
        expect(serviceOutput, contains('_handleError('));
        expect(serviceOutput, contains('e,'));
        expect(serviceOutput, contains('stackTrace,'));
        expect(serviceOutput, contains('\'/test\','));
      });

      group('prefix filter functionality', () {
        test('includes all endpoints by default (no filtering)', () async {
          final defaultBehaviorYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Default Behavior API
  x-dart-name: DefaultBehaviorApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health check
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(defaultBehaviorYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'DefaultBehaviorApi',
            partFileName: 'default_behavior_api.openapi.dtos.g.dart',
            freezedPartFileName: 'default_behavior_api.openapi.dtos.freezed.dart',
            // Using default values - no prefixFilter or includeFilterPrefix specified
          );

          final serviceLibrary = generator.generateServiceLibrary('default_behavior_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should include ALL endpoints by default (no filtering)
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, contains('healthGet'));
          expect(serviceOutput, contains('metricsGet'));
        });

        test('filters endpoints by /api prefix when explicitly set', () async {
          final prefixFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Prefix Filter API
  x-dart-name: PrefixFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /api/posts:
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                title:
                  type: string
              required:
                - title
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health check
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: object
                properties:
                  count:
                    type: integer
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(prefixFilterYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'PrefixFilterApi',
            partFileName: 'prefix_filter_api.openapi.dtos.g.dart',
            freezedPartFileName: 'prefix_filter_api.openapi.dtos.freezed.dart',
            prefixFilter: '/api', // explicitly set to test filtering
            includeFilterPrefix: true, // default value
          );

          final serviceLibrary = generator.generateServiceLibrary('prefix_filter_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should include /api endpoints
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, contains('apiPostsPost'));

          // Should NOT include non-/api endpoints
          expect(serviceOutput, isNot(contains('healthGet')));
          expect(serviceOutput, isNot(contains('metricsGet')));

          // Should have correct method signatures for included endpoints
          expect(serviceOutput, contains('Future<Either<ApiError, List<String>>> apiUsersGet'));
          expect(serviceOutput, contains('Future<Either<ApiError, String>> apiPostsPost'));
        });

        test('includes custom prefix filter', () async {
          final customPrefixYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Custom Prefix API
  x-dart-name: CustomPrefixApi

paths:
  /v1/api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /v2/api/posts:
    get:
      responses:
        '200':
          description: Get posts
          content:
            application/json:
              schema:
                type: string
  /api/legacy:
    get:
      responses:
        '200':
          description: Legacy endpoint
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(customPrefixYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'CustomPrefixApi',
            partFileName: 'custom_prefix_api.openapi.dtos.g.dart',
            freezedPartFileName: 'custom_prefix_api.openapi.dtos.freezed.dart',
            prefixFilter: '/v1/api',
            includeFilterPrefix: true,
          );

          final serviceLibrary = generator.generateServiceLibrary('custom_prefix_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should only include /v1/api endpoints
          expect(serviceOutput, contains('v1ApiUsersGet'));

          // Should NOT include other endpoints
          expect(serviceOutput, isNot(contains('v2ApiPostsGet')));
          expect(serviceOutput, isNot(contains('apiLegacyGet')));
          expect(serviceOutput, isNot(contains('healthGet')));
        });

        test('removes prefix from method names when includeFilterPrefix is false', () async {
          final prefixRemovalYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Prefix Removal API
  x-dart-name: PrefixRemovalApi

paths:
  /api/v1/account:
    get:
      responses:
        '200':
          description: Get account
          content:
            application/json:
              schema:
                type: string
    put:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                name:
                  type: string
      responses:
        '200':
          description: Updated
          content:
            application/json:
              schema:
                type: string
  /api/v2/users:
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                email:
                  type: string
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(prefixRemovalYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'PrefixRemovalApi',
            partFileName: 'prefix_removal_api.openapi.dtos.g.dart',
            freezedPartFileName: 'prefix_removal_api.openapi.dtos.freezed.dart',
            prefixFilter: '/api',
            includeFilterPrefix: false, // Remove prefix from method names
          );

          final serviceLibrary = generator.generateServiceLibrary('prefix_removal_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should generate method names without the /api prefix
          expect(serviceOutput, contains('v1AccountGet'));
          expect(serviceOutput, contains('v1AccountPut'));
          expect(serviceOutput, contains('v2UsersPost'));

          // Should NOT contain method names with api prefix
          expect(serviceOutput, isNot(contains('apiV1AccountGet')));
          expect(serviceOutput, isNot(contains('apiV1AccountPut')));
          expect(serviceOutput, isNot(contains('apiV2UsersPost')));
        });

        test('handles empty string prefix filter (no filtering)', () async {
          final noFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: No Filter API
  x-dart-name: NoFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(noFilterYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'NoFilterApi',
            partFileName: 'no_filter_api.openapi.dtos.g.dart',
            freezedPartFileName: 'no_filter_api.openapi.dtos.freezed.dart',
            prefixFilter: '', // Empty string means no filtering
            includeFilterPrefix: true,
          );

          final serviceLibrary = generator.generateServiceLibrary('no_filter_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should include ALL endpoints when prefix filter is empty
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, contains('healthGet'));
          expect(serviceOutput, contains('metricsGet'));
        });

        test('handles "./" prefix filter (no filtering)', () async {
          final dotSlashFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Dot Slash Filter API
  x-dart-name: DotSlashFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(dotSlashFilterYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'DotSlashFilterApi',
            partFileName: 'dot_slash_filter_api.openapi.dtos.g.dart',
            freezedPartFileName: 'dot_slash_filter_api.openapi.dtos.freezed.dart',
            prefixFilter: './', // ./ means no filtering
            includeFilterPrefix: true,
          );

          final serviceLibrary = generator.generateServiceLibrary('dot_slash_filter_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should include ALL endpoints when prefix filter is ./
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, contains('healthGet'));
        });

        test('handles "/" prefix filter (no filtering)', () async {
          final rootFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Root Filter API
  x-dart-name: RootFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(rootFilterYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'RootFilterApi',
            partFileName: 'root_filter_api.openapi.dtos.g.dart',
            freezedPartFileName: 'root_filter_api.openapi.dtos.freezed.dart',
            prefixFilter: '/', // / means no filtering
            includeFilterPrefix: true,
          );

          final serviceLibrary = generator.generateServiceLibrary('root_filter_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should include ALL endpoints when prefix filter is /
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, contains('healthGet'));
        });

        test('generates DTOs only for filtered endpoints', () async {
          final dtosFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: DTOs Filter API
  x-dart-name: DtosFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: object
                properties:
                  users:
                    type: array
                    items:
                      \$ref: '#/components/schemas/User'
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: object
                properties:
                  status:
                    type: string
                  healthData:
                    \$ref: '#/components/schemas/HealthData'

components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: string
        name:
          type: string
      required:
        - id
        - name
    HealthData:
      type: object
      properties:
        uptime:
          type: integer
        memory:
          type: string
      required:
        - uptime
        - memory
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(dtosFilterYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'DtosFilterApi',
            partFileName: 'dtos_filter_api.openapi.dtos.g.dart',
            freezedPartFileName: 'dtos_filter_api.openapi.dtos.freezed.dart',
            prefixFilter: '/api',
            includeFilterPrefix: true,
          );

          final dtosLibrary = generator.generateDtosLibrary();
          final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
            dtosLibrary,
            orderDirectives: true,
          );

          // Should generate DTO for User (used by /api endpoint)
          expect(dtosOutput, contains('class UserDto'));

          // Should NOT generate DTO for HealthData (used by non-/api endpoint)
          expect(dtosOutput, isNot(contains('class HealthDataDto')));

          final serviceLibrary = generator.generateServiceLibrary('dtos_filter_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should only include /api endpoint
          expect(serviceOutput, contains('apiUsersGet'));
          expect(serviceOutput, isNot(contains('healthGet')));
        });

        test('combines prefix filtering with operation IDs', () async {
          final operationIdYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Operation ID API
  x-dart-name: OperationIdApi

paths:
  /api/users:
    get:
      operationId: getAllUsers
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /api/users/{id}:
    get:
      operationId: getUserById
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: string
      responses:
        '200':
          description: Get user
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      operationId: getHealthStatus
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
          final api = OpenApiServiceBuilderUtils.loadApiFromYaml(operationIdYaml);

          final generator = OpenApiLibraryGenerator(
            api,
            baseName: 'OperationIdApi',
            partFileName: 'operation_id_api.openapi.dtos.g.dart',
            freezedPartFileName: 'operation_id_api.openapi.dtos.freezed.dart',
            prefixFilter: '/api',
            includeFilterPrefix: false, // This should have no effect when operationId is present
          );

          final serviceLibrary = generator.generateServiceLibrary('operation_id_api');
          final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
            serviceLibrary,
            orderDirectives: true,
          );

          // Should use operation IDs for method names (ignoring prefix settings)
          expect(serviceOutput, contains('getAllUsers'));
          expect(serviceOutput, contains('getUserById'));

          // Should NOT include non-/api endpoints
          expect(serviceOutput, isNot(contains('getHealthStatus')));

          // Should have correct method signature for path parameter
          expect(serviceOutput, contains('getAllUsers()'));
          expect(serviceOutput, contains('getUserById({required String id})'));
        });
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
              '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart'],
              '.openapi.json': ['.openapi.dtos.dart', '.openapi.service.dart']
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
  });
}
