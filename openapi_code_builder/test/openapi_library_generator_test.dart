import 'package:openapi_code_builder/src/openapi_code_builder.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiLibraryGenerator', () {
    late OpenApiLibraryGenerator generator;

    setUp(() {
      // Load a simple API for testing
      final testApiYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Test API
  x-dart-name: TestApi

paths:
  /hello:
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
    HelloResponse:
      type: object
      properties:
        message:
          type: string
      required:
        - message
''';

      final api = OpenApiCodeBuilderUtils.loadApiFromYaml(testApiYaml);
      generator = OpenApiLibraryGenerator(
        api,
        baseName: 'TestApi',
        partFileName: 'test_api.openapi.g.dart',
        freezedPartFileName: 'test_api.openapi.freezed.dart',
        useNullSafetySyntax: true,
        apiMethodsWithRequest: false,
        generateProvider: false,
        providerNamePrefix: '',
        ignoreSecuritySchemes: false,
      );
    });

    group('library generation', () {
      test('generates service style library', () {
        final library = generator.generate();

        expect(library, isNotNull);
        expect(library.body, isNotEmpty);

        // Convert to string to check contents
        final formatted = OpenApiCodeBuilderUtils.formatLibrary(
          library,
          useNullSafetySyntax: true,
          orderDirectives: true,
        );

        expect(
            formatted, contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
        expect(formatted, contains('class ApiError'));
        expect(formatted, contains('class TestApiService'));
        expect(formatted, contains('Dio'));
        expect(formatted, contains('Either<ApiError,'));
      });

      test('generates DTOs library separately', () {
        final dtosLibrary = generator.generateDtosLibrary();

        expect(dtosLibrary, isNotNull);
        expect(dtosLibrary.body, isNotEmpty);

        final formatted = OpenApiCodeBuilderUtils.formatLibrary(
          dtosLibrary,
          useNullSafetySyntax: true,
          orderDirectives: true,
        );

        expect(formatted, contains('class ApiError'));
        expect(formatted, contains('part \'test_api.openapi.freezed.dart\''));
        expect(formatted, contains('part \'test_api.openapi.g.dart\''));
        expect(formatted, contains('HelloResponseDto'));
      });

      test('generates service library separately', () {
        final serviceLibrary = generator.generateServiceLibrary('test_api');

        expect(serviceLibrary, isNotNull);
        expect(serviceLibrary.body, isNotEmpty);

        final formatted = OpenApiCodeBuilderUtils.formatLibrary(
          serviceLibrary,
          useNullSafetySyntax: true,
          orderDirectives: true,
        );

        expect(formatted, contains('class TestApiService'));
        expect(formatted, contains('import \'test_api.openapi.dtos.dart\''));
        expect(formatted, contains('Dio'));
        expect(formatted, contains('Either<ApiError,'));
      });
    });

    group('schema handling', () {
      test('detects which schemas should generate DTOs', () {
        // Test with object schema
        final objectSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    ObjectSchema:
      type: object
      properties:
        name:
          type: string
''').components!.schemas!['ObjectSchema']!;

        expect(generator.shouldGenerateDto(objectSchema), isTrue);

        // Test with simple string schema
        final stringSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    StringSchema:
      type: string
''').components!.schemas!['StringSchema']!;

        expect(generator.shouldGenerateDto(stringSchema), isFalse);

        // Test with empty object schema
        final emptyObjectSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    EmptyObjectSchema:
      type: object
''').components!.schemas!['EmptyObjectSchema']!;

        expect(generator.shouldGenerateDto(emptyObjectSchema), isFalse);
      });

      test('collects schema references correctly', () {
        final schemaWithRef = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    Parent:
      type: object
      properties:
        child:
          \$ref: '#/components/schemas/Child'
    Child:
      type: object
      properties:
        name:
          type: string
''').components!.schemas!['Parent']!;

        final usedSchemas = <String>{};
        generator.collectSchemaReferences(schemaWithRef, usedSchemas);

        expect(usedSchemas, contains('Child'));
      });
    });

    group('type mapping', () {
      test('maps basic types correctly', () {
        final stringSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    StringSchema:
      type: string
''').components!.schemas!['StringSchema']!;

        final dartType = generator.toDartType('Test', stringSchema);
        expect(dartType.symbol, equals('String'));

        final intSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    IntSchema:
      type: integer
''').components!.schemas!['IntSchema']!;

        final intDartType = generator.toDartType('Test', intSchema);
        expect(intDartType.symbol, equals('int'));

        final boolSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    BoolSchema:
      type: boolean
''').components!.schemas!['BoolSchema']!;

        final boolDartType = generator.toDartType('Test', boolSchema);
        expect(boolDartType.symbol, equals('bool'));
      });

      test('maps special formats correctly', () {
        final uuidSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    UuidSchema:
      type: string
      format: uuid
''').components!.schemas!['UuidSchema']!;

        final uuidDartType = generator.toDartType('Test', uuidSchema);
        expect(uuidDartType.symbol, equals('ApiUuid'));

        final dateTimeSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    DateTimeSchema:
      type: string
      format: date-time
''').components!.schemas!['DateTimeSchema']!;

        final dateTimeDartType = generator.toDartType('Test', dateTimeSchema);
        expect(dateTimeDartType.symbol, equals('DateTime'));

        final binarySchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    BinarySchema:
      type: string
      format: binary
''').components!.schemas!['BinarySchema']!;

        final binaryDartType = generator.toDartType('Test', binarySchema);
        expect(binaryDartType.symbol, equals('Uint8List'));
      });

      test('maps array types correctly', () {
        final arraySchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    ArraySchema:
      type: array
      items:
        type: string
''').components!.schemas!['ArraySchema']!;

        final arrayDartType = generator.toDartType('Test', arraySchema);
        expect(arrayDartType.symbol, equals('List'));
        expect(arrayDartType.toString(), contains('List<String>'));
      });

      test('maps map types correctly', () {
        final mapSchema = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Test
  version: 1.0.0
components:
  schemas:
    MapSchema:
      type: object
      additionalProperties:
        type: string
''').components!.schemas!['MapSchema']!;

        final mapDartType = generator.toDartType('Test', mapSchema);
        expect(mapDartType.symbol, equals('Map'));
        expect(mapDartType.toString(), contains('Map<String, String>'));
      });
    });

    group('class naming', () {
      test('generates correct class names', () {
        expect(generator.classNameForComponent('user'), equals('UserDto'));
        expect(generator.classNameForComponent('user_profile'),
            equals('UserProfileDto'));
        expect(generator.classNameForComponent('UserProfile'),
            equals('UserProfileDto'));
        expect(generator.classNameForComponent('API_Response'),
            equals('ApiResponseDto'));
      });
    });

    group('error handling', () {
      test('handles missing schemas gracefully', () {
        final emptyApi = OpenApiCodeBuilderUtils.loadApiFromYaml('''
openapi: 3.0.0
info:
  title: Empty API
  version: 1.0.0
paths:
  /test:
    get:
      responses:
        '200':
          description: Success
''');

        final emptyGenerator = OpenApiLibraryGenerator(
          emptyApi,
          baseName: 'EmptyApi',
          partFileName: 'empty.g.dart',
          freezedPartFileName: 'empty.freezed.dart',
          useNullSafetySyntax: true,
        );

        final library = emptyGenerator.generate();
        expect(library, isNotNull);
        expect(library.body, isNotEmpty);

        final formatted = OpenApiCodeBuilderUtils.formatLibrary(
          library,
          useNullSafetySyntax: true,
          orderDirectives: true,
        );

        expect(formatted, contains('class EmptyApiService'));
        expect(formatted, contains('class ApiError'));
      });
    });
  });
}
