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
          freezedPartFileName: 'error_cases.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        expect(dtosOutput, contains('List<String>'));

        final serviceLibrary = generator.generateServiceLibrary('error_cases');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
        );

        expect(serviceOutput, contains('Either<ApiError,'));
        expect(serviceOutput, contains('_handleError'));
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
          freezedPartFileName: 'incomplete.openapi.dtos.freezed.dart',
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
          freezedPartFileName: 'complex_types.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        // Check for DTO generation - may have different naming
        expect(dtosOutput, contains('Dto'));

        final serviceLibrary =
            generator.generateServiceLibrary('complex_types');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'empty_schema.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('empty_schema');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'binary.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'parameter.openapi.dtos.freezed.dart',
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
          orderDirectives: true,
        );

        expect(dtosOutput, contains('enum'));

        final serviceLibrary = generator.generateServiceLibrary('parameter');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'response.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('response');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
          freezedPartFileName: 'native_type.openapi.dtos.freezed.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('native_type');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
          orderDirectives: true,
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
  });
}
