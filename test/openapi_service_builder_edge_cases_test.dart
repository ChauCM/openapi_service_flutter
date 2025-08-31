import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiServiceBuilder Edge Cases', () {
    group('error handling', () {
      test('handles multiple error response codes', () async {
        final errorCasesYaml =
            await File('test/fixtures/error_cases.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(errorCasesYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ErrorCases',
          partFileName: 'error_cases.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        expect(dtosOutput, contains('List<String>'));

        final serviceLibrary = generator.generateServiceLibrary('error_cases');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('Either<ApiError,'));
        expect(serviceOutput, contains('_errorHandler.handleError'));
      });

      test('handles invalid YAML gracefully', () async {
        expect(
          () => OpenApiServiceBuilderUtils.loadApiFromYaml(
              'invalid: yaml: content: ['),
          throwsA(anything),
        );
      });

      test('handles missing required OpenAPI fields', () async {
        final incompleteYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Incomplete API
# Missing paths section
''';

        // This should load successfully but generate minimal content
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(incompleteYaml);
        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'IncompleteApi',
          partFileName: 'incomplete.openapi.dtos.g.dart',
        );

        // Should generate libraries without errors, even if minimal
        final dtosLibrary = generator.generateDtosLibrary();
        final serviceLibrary = generator.generateServiceLibrary('incomplete');

        expect(dtosLibrary, isNotNull);
        expect(serviceLibrary, isNotNull);
      });
    });

    group('complex types', () {
      test('handles inheritance and recursive types', () async {
        final complexTypesYaml =
            await File('test/fixtures/complex_types.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(complexTypesYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ComplexTypes',
          partFileName: 'complex_types.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Check for DTO generation - may have different naming
        expect(dtosOutput, contains('Dto'));

        final serviceLibrary =
            generator.generateServiceLibrary('complex_types');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('ComplexTypesService'));
      });

      test('handles empty schemas gracefully', () async {
        final emptySchemaYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Empty Schema API
  x-dart-name: EmptySchemaApi

paths:
  /empty:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: object

components:
  schemas:
    EmptySchema:
      type: object
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(emptySchemaYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'EmptySchemaApi',
          partFileName: 'empty_schema.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('empty_schema');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('EmptySchemaApiService'));
      });

      test('handles binary data types', () async {
        final binaryYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Binary API
  x-dart-name: BinaryApi

paths:
  /upload:
    post:
      requestBody:
        content:
          application/octet-stream:
            schema:
              type: string
              format: binary
      responses:
        '200':
          description: Success
          content:
            application/octet-stream:
              schema:
                type: string
                format: binary
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryApi',
          partFileName: 'binary.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('Uint8List'));
        expect(serviceOutput, contains('BinaryApiService'));
      });
    });

    group('parameter handling', () {
      test('handles various parameter types and locations', () async {
        final parameterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Parameter API
  x-dart-name: ParameterApi

paths:
  /test/{pathParam}:
    parameters:
      - name: pathParam
        in: path
        required: true
        schema:
          type: string
    get:
      parameters:
        - name: queryParam
          in: query
          required: false
          schema:
            type: string
        - name: headerParam
          in: header
          required: false
          schema:
            type: string
        - name: enumParam
          in: query
          required: true
          schema:
            type: string
            enum:
              - option1
              - option2
              - option3
        - name: arrayParam
          in: query
          required: false
          schema:
            type: array
            items:
              type: string
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(parameterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ParameterApi',
          partFileName: 'parameter.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        expect(dtosOutput, contains('enum'));

        final serviceLibrary = generator.generateServiceLibrary('parameter');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('String? queryParam'));
        expect(serviceOutput, contains('enumParam'));
        expect(serviceOutput, contains('List<String>? arrayParam'));
      });
    });

    group('response handling', () {
      test('handles various response content types', () async {
        final responseYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Response API
  x-dart-name: ResponseApi

paths:
  /json:
    get:
      responses:
        '200':
          description: JSON response
          content:
            application/json:
              schema:
                type: object
                properties:
                  data:
                    type: string
  /text:
    get:
      responses:
        '200':
          description: Text response
          content:
            text/plain:
              schema:
                type: string
  /xml:
    get:
      responses:
        '200':
          description: XML response
          content:
            application/xml:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(responseYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ResponseApi',
          partFileName: 'response.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('response');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        expect(serviceOutput, contains('ResponseApiService'));
        expect(serviceOutput, contains('jsonGet'));
        expect(serviceOutput, contains('textGet'));
        expect(serviceOutput, contains('xmlGet'));
      });

      test('handles native types without fromJson method', () async {
        final nativeTypeYaml = '''
openapi: 3.1.1
info:
  version: 1.0.0
  title: Native Type API
  x-dart-name: NativeTypeApi

paths:
  /count:
    get:
      operationId: getCount
      responses:
        '200':
          description: Returns an integer count
          content:
            application/json:
              schema:
                type: [integer, "null"]
  /rating:
    get:
      operationId: getRating
      responses:
        '200':
          description: Returns a number rating
          content:
            application/json:
              schema:
                type: number
  /flag:
    get:
      operationId: getFlag
      responses:
        '200':
          description: Returns a boolean flag
          content:
            application/json:
              schema:
                type: boolean
  /name:
    get:
      operationId: getName
      responses:
        '200':
          description: Returns a string name
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(nativeTypeYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'NativeTypeApi',
          partFileName: 'native_type.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('native_type');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should NOT contain any fromJson calls for native types
        expect(serviceOutput, isNot(contains('int.fromJson')));
        expect(serviceOutput, isNot(contains('double.fromJson')));
        expect(serviceOutput, isNot(contains('bool.fromJson')));
        expect(serviceOutput, isNot(contains('String.fromJson')));
        expect(serviceOutput, isNot(contains('num.fromJson')));

        // Should contain proper casting instead
        expect(serviceOutput, contains('(response.data as int)'));
        expect(serviceOutput, contains('(response.data as num)'));
        expect(serviceOutput, contains('(response.data as bool)'));
        expect(serviceOutput, contains('(response.data as String)'));

        expect(serviceOutput, contains('NativeTypeApiService'));
        expect(serviceOutput, contains('getCount'));
        expect(serviceOutput, contains('getRating'));
        expect(serviceOutput, contains('getFlag'));
        expect(serviceOutput, contains('getName'));
      });
    });

    group('NullableOf enum handling', () {
      test('handles NullableOf* enums correctly', () async {
        final nullableEnumYaml =
            await File('test/fixtures/nullable_enum_api.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(nullableEnumYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'NullableEnumApi',
          partFileName: 'nullable_enum_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Should rename NullableOfUserRole to UserRoleDto
        expect(dtosOutput, contains('enum UserRoleDto'));
        expect(dtosOutput, isNot(contains('enum NullableOfUserRoleDto')));

        // Should rename NullableOfStatus to StatusDto
        expect(dtosOutput, contains('enum StatusDto'));
        expect(dtosOutput, isNot(contains('enum NullableOfStatusDto')));

        // Should not contain null values in enum definitions
        expect(dtosOutput, isNot(contains('@JsonValue(\'null\')')));
        expect(dtosOutput, isNot(contains('\$null')));

        // Should contain the actual enum values
        expect(dtosOutput, contains('@JsonValue(\'Admin\')'));
        expect(dtosOutput, contains('@JsonValue(\'Moderator\')'));
        expect(dtosOutput, contains('@JsonValue(\'User\')'));
        expect(dtosOutput, contains('@JsonValue(\'Active\')'));
        expect(dtosOutput, contains('@JsonValue(\'Inactive\')'));
        expect(dtosOutput, contains('@JsonValue(\'Suspended\')'));

        // Should keep regular enums unchanged
        expect(dtosOutput, contains('enum RegularEnumDto'));
        expect(dtosOutput, contains('@JsonValue(\'Option1\')'));

        // Properties should be nullable for NullableOf* enums but required for regular enums
        expect(dtosOutput, contains('UserRoleDto? role'));
        expect(dtosOutput, contains('StatusDto? status'));
        expect(dtosOutput, contains('required RegularEnumDto priority'));

        // Extension methods should not include null in the switch statement
        expect(dtosOutput, contains('String get name => switch (this)'));
        expect(dtosOutput, contains('UserRoleDto.admin => \'Admin\''));
        expect(dtosOutput, isNot(contains('=> \'null\'')));
      });

      test('handles reserved keywords in enum values', () async {
        final reservedKeywordYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Reserved Keyword API
  x-dart-name: ReservedKeywordApi

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/TestObject'

components:
  schemas:
    TestObject:
      type: object
      properties:
        keywordField:
          \$ref: '#/components/schemas/NullableOfKeyword'
      required:
        - keywordField
    
    NullableOfKeyword:
      enum:
        - class
        - enum
        - null
        - true
        - false
        ''';

        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(reservedKeywordYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'ReservedKeywordApi',
          partFileName: 'reserved_keyword_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Should rename to KeywordDto and handle reserved words
        expect(dtosOutput, contains('enum KeywordDto'));
        expect(dtosOutput,
            contains('\$class')); // class is reserved, should be prefixed
        expect(dtosOutput,
            contains('\$enum')); // enum is reserved, should be prefixed
        expect(dtosOutput,
            contains('\$true')); // true is reserved, should be prefixed
        expect(dtosOutput,
            contains('\$false')); // false is reserved, should be prefixed

        // Should not contain null value
        expect(dtosOutput, isNot(contains('@JsonValue(\'null\')')));

        // Should contain proper JSON annotations
        expect(dtosOutput, contains('@JsonValue(\'class\')'));
        expect(dtosOutput, contains('@JsonValue(\'enum\')'));
        expect(dtosOutput, contains('@JsonValue(\'true\')'));
        expect(dtosOutput, contains('@JsonValue(\'false\')'));

        // Property should be nullable due to NullableOf pattern
        expect(dtosOutput, contains('KeywordDto? keywordField'));
      });

      test('handles mixed enum types in same spec', () async {
        final mixedEnumYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Mixed Enum API
  x-dart-name: MixedEnumApi

paths:
  /test:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/MixedObject'

components:
  schemas:
    MixedObject:
      type: object
      properties:
        nullableRole:
          \$ref: '#/components/schemas/NullableOfRole'
        regularStatus:
          \$ref: '#/components/schemas/Status'
      required:
        - nullableRole
        - regularStatus
    
    NullableOfRole:
      enum:
        - Admin
        - User
        - null
    
    Status:
      enum:
        - Active
        - Inactive
        ''';

        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(mixedEnumYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'MixedEnumApi',
          partFileName: 'mixed_enum_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // NullableOf* enum should be renamed and made nullable
        expect(dtosOutput, contains('enum RoleDto'));
        expect(dtosOutput, contains('RoleDto? nullableRole'));

        // Regular enum should remain unchanged and required
        expect(dtosOutput, contains('enum StatusDto'));
        expect(dtosOutput, contains('required StatusDto regularStatus'));

        // Should not contain null values
        expect(dtosOutput, isNot(contains('@JsonValue(\'null\')')));
      });

      test(
          'prevents duplicate enum generation for base and NullableOf patterns',
          () async {
        final duplicateEnumYaml =
            await File('test/fixtures/duplicate_enum_api.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(duplicateEnumYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DuplicateEnumApi',
          partFileName: 'duplicate_enum_api.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Count occurrences of each enum to ensure no duplicates
        final feedbackStatusMatches =
            'enum FeedbackStatusDto'.allMatches(dtosOutput).length;
        final feedbackTypeMatches =
            'enum FeedbackTypeDto'.allMatches(dtosOutput).length;

        // Should have exactly one occurrence of each enum
        expect(feedbackStatusMatches, equals(1),
            reason:
                'Should have exactly one FeedbackStatusDto enum, found $feedbackStatusMatches');
        expect(feedbackTypeMatches, equals(1),
            reason:
                'Should have exactly one FeedbackTypeDto enum, found $feedbackTypeMatches');

        // Should contain the enum values
        expect(dtosOutput, contains('enum FeedbackStatusDto'));
        expect(dtosOutput, contains('@JsonValue(\'Open\')'));
        expect(dtosOutput, contains('@JsonValue(\'InProgress\')'));
        expect(dtosOutput, contains('enum FeedbackTypeDto'));
        expect(dtosOutput, contains('@JsonValue(\'BugReport\')'));
        expect(dtosOutput, contains('@JsonValue(\'FeatureRequest\')'));

        // Should not contain the NullableOf prefix in generated enum names
        expect(dtosOutput, isNot(contains('enum NullableOfFeedbackStatusDto')));
        expect(dtosOutput, isNot(contains('enum NullableOfFeedbackTypeDto')));

        // Should not contain null values in enum definitions
        expect(dtosOutput, isNot(contains('@JsonValue(\'null\')')));
      });

      test('handles duplicate parameter names in path and query', () async {
        final duplicateParamsYaml =
            await File('test/fixtures/duplicate_params.openapi.yaml')
                .readAsString();
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(duplicateParamsYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DuplicateParamsApi',
          partFileName: 'duplicate_params.openapi.dtos.g.dart',
        );

        final serviceLibrary =
            generator.generateServiceLibrary('duplicate_params');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Check that duplicate parameters are renamed with suffixes
        expect(serviceOutput, contains('getResourceDetails'));
        expect(
            serviceOutput, contains('required String id,')); // Path parameter
        expect(serviceOutput,
            contains('required String resourceId,')); // Path parameter
        expect(serviceOutput,
            contains('String? idQuery,')); // Query parameter renamed
        expect(serviceOutput,
            contains('String? resourceIdQuery,')); // Query parameter renamed

        // Check the teacher classes endpoint
        expect(serviceOutput, contains('getTeacherClasses'));
        expect(serviceOutput,
            contains('required String academicYearId,')); // Path parameter
        expect(serviceOutput,
            contains('required String schoolId,')); // Path parameter
        expect(
            serviceOutput,
            contains(
                'String? academicYearIdQuery,')); // Query parameter renamed
        expect(serviceOutput,
            contains('String? schoolIdQuery,')); // Query parameter renamed

        // Verify the renamed parameters are used correctly in query building
        expect(serviceOutput,
            contains('if (idQuery != null) queryParams[\'id\'] = idQuery;'));
        expect(
            serviceOutput,
            contains(
                'if (resourceIdQuery != null) queryParams[\'resourceId\'] = resourceIdQuery;'));
        // The actual output has a different formatting with newlines
        expect(serviceOutput, contains('if (academicYearIdQuery != null)'));
        expect(serviceOutput,
            contains('queryParams[\'academicYearId\'] = academicYearIdQuery;'));
        expect(
            serviceOutput,
            contains(
                'if (schoolIdQuery != null) queryParams[\'schoolId\'] = schoolIdQuery;'));
      });

      test('handles field names with @ symbols (like @odata.type)', () async {
        final atSymbolYaml =
            await File('test/fixtures/at_symbol_fields.openapi.yaml')
                .readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(atSymbolYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'AtSymbolApi',
          partFileName: 'at_symbol.openapi.dtos.g.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Check that @ symbol fields are properly sanitized to valid Dart identifiers
        // The @odata.type field should become odataType
        expect(dtosOutput, contains('String? odataType'));
        expect(dtosOutput, contains('String? odataEtag'));
        expect(dtosOutput, contains('String? odataContext'));
        expect(dtosOutput, contains('String? odataId'));
        expect(dtosOutput, contains('String? odataEditLink'));
        expect(dtosOutput, contains('String? metadataSource'));
        expect(dtosOutput, contains('String? microsoftGraphTips'));

        // Check that JsonKey annotations preserve the original field names
        expect(dtosOutput, contains('@JsonKey(name: \'@odata.type\')'));
        expect(dtosOutput, contains('@JsonKey(name: \'@odata.etag\')'));
        expect(dtosOutput, contains('@JsonKey(name: \'@odata.context\')'));
        expect(dtosOutput, contains('@JsonKey(name: \'@odata.id\')'));
        expect(dtosOutput, contains('@JsonKey(name: \'@odata.editLink\')'));
        expect(dtosOutput, contains('@JsonKey(name: \'@metadata.source\')'));
        expect(
            dtosOutput, contains('@JsonKey(name: \'@microsoft.graph.tips\')'));

        // Check that the generated DTOs are valid Dart code (should not have @ in field names)
        expect(dtosOutput, isNot(contains('String? @odata')));
        expect(dtosOutput, isNot(contains('String? @metadata')));
        expect(dtosOutput, isNot(contains('String? @microsoft')));

        // Generate service to ensure it also handles the DTOs correctly
        final serviceLibrary = generator.generateServiceLibrary('at_symbol');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Service should reference the DTOs correctly
        expect(serviceOutput, contains('CalendarEventDto'));
        expect(serviceOutput, contains('UserProfileDto'));
        expect(serviceOutput, contains('getCalendarEvents'));
        expect(serviceOutput, contains('createCalendarEvent'));
        expect(serviceOutput, contains('getUserProfile'));
      });
    });
  });
}
