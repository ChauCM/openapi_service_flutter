import 'dart:io';

import 'package:build_test/build_test.dart';
import 'package:openapi_code_builder/src/openapi_code_builder.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiCodeBuilder Edge Cases', () {
    late OpenApiCodeBuilder builder;

    setUp(() {
      builder = OpenApiCodeBuilder(
        useNullSafetySyntax: true,
        orderDirectives: true,
        generateProvider: false,
        providerNamePrefix: '',
        ignoreSecuritySchemes: false,
      );
    });

    group('error handling', () {
      test('handles multiple error response codes', () async {
        final errorCasesYaml =
            await File('test/fixtures/error_cases.openapi.yaml').readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/error_cases.openapi.yaml': errorCasesYaml,
          },
          outputs: {
            'example|lib/error_cases.openapi.dtos.dart': anything,
            'example|lib/error_cases.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/error_cases.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('ErrorResponseDto'));
        expect(dtosOutput, contains('List<String>'));

        final serviceOutput =
            assets['example|lib/error_cases.openapi.service.dart'] as String;
        expect(serviceOutput, contains('Either<ApiError, ErrorResponseDto>'));
        expect(serviceOutput, contains('_handleError'));
      });

      test('handles invalid YAML gracefully', () async {
        expect(
          () => testBuilder(
            builder,
            {
              'example|lib/invalid.openapi.yaml': 'invalid: yaml: content: [',
            },
            outputs: {
              'example|lib/invalid.openapi.dtos.dart': anything,
              'example|lib/invalid.openapi.service.dart': anything,
            },
          ),
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

        expect(
          () => testBuilder(
            builder,
            {
              'example|lib/incomplete.openapi.yaml': incompleteYaml,
            },
            outputs: {
              'example|lib/incomplete.openapi.dtos.dart': anything,
              'example|lib/incomplete.openapi.service.dart': anything,
            },
          ),
          throwsA(anything),
        );
      });
    });

    group('complex types', () {
      test('handles inheritance and recursive types', () async {
        final complexTypesYaml =
            await File('test/fixtures/complex_types.openapi.yaml')
                .readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/complex_types.openapi.yaml': complexTypesYaml,
          },
          outputs: {
            'example|lib/complex_types.openapi.dtos.dart': anything,
            'example|lib/complex_types.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/complex_types.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('ComplexRequestDto'));
        expect(dtosOutput, contains('ComplexResponseDto'));
        expect(dtosOutput, contains('BaseResponseDto'));
        expect(dtosOutput, contains('ChildClassDto'));
        expect(dtosOutput, contains('BaseClassDto'));
        expect(dtosOutput, contains('RecursiveTypeDto'));

        // Check for allOf handling
        expect(dtosOutput, contains('extends'));

        // Check for recursive type handling
        expect(dtosOutput, contains('List<RecursiveTypeDto>'));

        final serviceOutput =
            assets['example|lib/complex_types.openapi.service.dart'] as String;
        expect(serviceOutput, contains('ComplexRequestDto'));
        expect(serviceOutput, contains('ComplexResponseDto'));
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/empty_schema.openapi.yaml': emptySchemaYaml,
          },
          outputs: {
            'example|lib/empty_schema.openapi.dtos.dart': anything,
            'example|lib/empty_schema.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/empty_schema.openapi.service.dart'] as String;
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/binary.openapi.yaml': binaryYaml,
          },
          outputs: {
            'example|lib/binary.openapi.dtos.dart': anything,
            'example|lib/binary.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/binary.openapi.service.dart'] as String;
        expect(serviceOutput, contains('Uint8List'));
        expect(serviceOutput, contains('BinaryApiService'));
      });
    });

    group('configuration options', () {
      test('works with different builder configurations', () async {
        final customBuilder = OpenApiCodeBuilder(
          useNullSafetySyntax: false,
          orderDirectives: false,
          generateProvider: true,
          providerNamePrefix: 'test',
          ignoreSecuritySchemes: true,
        );

        final simpleYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Config Test API
  x-dart-name: ConfigTestApi

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

        final assets = await testBuilder(
          customBuilder,
          {
            'example|lib/config_test.openapi.yaml': simpleYaml,
          },
          outputs: {
            'example|lib/config_test.openapi.dtos.dart': anything,
            'example|lib/config_test.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/config_test.openapi.service.dart'] as String;
        expect(serviceOutput, contains('ConfigTestApiService'));
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/parameter.openapi.yaml': parameterYaml,
          },
          outputs: {
            'example|lib/parameter.openapi.dtos.dart': anything,
            'example|lib/parameter.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/parameter.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('enum'));
        expect(dtosOutput, contains('GetTestEnumParamDto'));

        final serviceOutput =
            assets['example|lib/parameter.openapi.service.dart'] as String;
        expect(serviceOutput, contains('required String pathParam'));
        expect(serviceOutput, contains('String? queryParam'));
        expect(serviceOutput, contains('GetTestEnumParamDto enumParam'));
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/response.openapi.yaml': responseYaml,
          },
          outputs: {
            'example|lib/response.openapi.dtos.dart': anything,
            'example|lib/response.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/response.openapi.service.dart'] as String;
        expect(serviceOutput, contains('ResponseApiService'));
        expect(serviceOutput, contains('getJson'));
        expect(serviceOutput, contains('getText'));
        expect(serviceOutput, contains('getXml'));
      });
    });
  });
}
