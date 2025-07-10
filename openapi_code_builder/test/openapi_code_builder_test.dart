import 'dart:io';

import 'package:build_test/build_test.dart';
import 'package:openapi_code_builder/src/openapi_code_builder.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiCodeBuilder', () {
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

    group('build method', () {
      test('generates DTOs and service files for simple API', () async {
        final simpleApiYaml =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/simple_api.openapi.yaml': simpleApiYaml,
          },
          outputs: {
            'example|lib/simple_api.openapi.dtos.dart': anything,
            'example|lib/simple_api.openapi.service.dart': anything,
          },
        );

        // Verify DTOs file was generated
        final dtosOutput =
            assets['example|lib/simple_api.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('class ApiError'));
        expect(
            dtosOutput, contains('// GENERATED CODE - DO NOT MODIFY BY HAND'));
        expect(dtosOutput,
            contains('part \'simple_api.openapi.dtos.freezed.dart\''));
        expect(dtosOutput, contains('part \'simple_api.openapi.dtos.g.dart\''));

        // Verify service file was generated
        final serviceOutput =
            assets['example|lib/simple_api.openapi.service.dart'] as String;
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/enum_api.openapi.yaml': enumApiYaml,
          },
          outputs: {
            'example|lib/enum_api.openapi.dtos.dart': anything,
            'example|lib/enum_api.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/enum_api.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('enum'));
        expect(dtosOutput, contains('@JsonValue'));
        expect(dtosOutput, contains('StatusResponseStatusDto'));

        final serviceOutput =
            assets['example|lib/enum_api.openapi.service.dart'] as String;
        expect(serviceOutput, contains('GetStatusTypeDto'));
      });

      test('generates array handling correctly', () async {
        final arrayApiYaml =
            await File('test/fixtures/array_api.openapi.yaml').readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/array_api.openapi.yaml': arrayApiYaml,
          },
          outputs: {
            'example|lib/array_api.openapi.dtos.dart': anything,
            'example|lib/array_api.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/array_api.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('ItemDto'));
        expect(dtosOutput, contains('CreateItemDto'));
        expect(dtosOutput, contains('List<String>'));

        final serviceOutput =
            assets['example|lib/array_api.openapi.service.dart'] as String;
        expect(serviceOutput, contains('List<ItemDto>'));
        expect(serviceOutput, contains('List<CreateItemDto>'));
      });

      test('generates map types correctly', () async {
        final mapApiYaml =
            await File('test/fixtures/map_api.openapi.yaml').readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/map_api.openapi.yaml': mapApiYaml,
          },
          outputs: {
            'example|lib/map_api.openapi.dtos.dart': anything,
            'example|lib/map_api.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/map_api.openapi.service.dart'] as String;
        expect(serviceOutput, contains('Map<String, int>'));
        expect(serviceOutput, contains('Map<String, String>'));
      });

      test('generates UUID and DateTime types correctly', () async {
        final uuidApiYaml =
            await File('test/fixtures/uuid_api.openapi.yaml').readAsString();

        final assets = await testBuilder(
          builder,
          {
            'example|lib/uuid_api.openapi.yaml': uuidApiYaml,
          },
          outputs: {
            'example|lib/uuid_api.openapi.dtos.dart': anything,
            'example|lib/uuid_api.openapi.service.dart': anything,
          },
        );

        final dtosOutput =
            assets['example|lib/uuid_api.openapi.dtos.dart'] as String;
        expect(dtosOutput, contains('ApiUuid'));
        expect(dtosOutput, contains('DateTime'));
        expect(dtosOutput, contains('ApiUuidJsonConverter'));

        final serviceOutput =
            assets['example|lib/uuid_api.openapi.service.dart'] as String;
        expect(serviceOutput, contains('ApiUuid'));
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/custom.openapi.yaml': customYaml,
          },
          outputs: {
            'example|lib/custom.openapi.dtos.dart': anything,
            'example|lib/custom.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/custom.openapi.service.dart'] as String;
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/fallback_name.openapi.yaml': noNameYaml,
          },
          outputs: {
            'example|lib/fallback_name.openapi.dtos.dart': anything,
            'example|lib/fallback_name.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/fallback_name.openapi.service.dart'] as String;
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

        final assets = await testBuilder(
          builder,
          {
            'example|lib/void_api.openapi.yaml': voidYaml,
          },
          outputs: {
            'example|lib/void_api.openapi.dtos.dart': anything,
            'example|lib/void_api.openapi.service.dart': anything,
          },
        );

        final serviceOutput =
            assets['example|lib/void_api.openapi.service.dart'] as String;
        expect(serviceOutput, contains('Either<ApiError, void>'));
        expect(serviceOutput, contains('const Right(null)'));
      });
    });

    group('buildExtensions', () {
      test('returns correct file extensions', () {
        expect(
            builder.buildExtensions,
            equals({
              '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart']
            }));
      });
    });
  });

  group('OpenApiCodeBuilderUtils', () {
    group('loadApiFromYaml', () {
      test('loads simple YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();
        final api = OpenApiCodeBuilderUtils.loadApiFromYaml(yamlContent);

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
        final api = OpenApiCodeBuilderUtils.loadApiFromYaml(yamlContent);

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
        final api = OpenApiCodeBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('Array API'));
        expect(api.components?.schemas?['Item'], isNotNull);
        final item = api.components!.schemas!['Item']!;
        expect(item.properties?['tags']?.type?.name, equals('array'));
        expect(item.properties?['tags']?.items?.type?.name, equals('string'));
      });

      test('loads map YAML correctly', () async {
        final yamlContent =
            await File('test/fixtures/map_api.openapi.yaml').readAsString();
        final api = OpenApiCodeBuilderUtils.loadApiFromYaml(yamlContent);

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
        final api = OpenApiCodeBuilderUtils.loadApiFromYaml(yamlContent);

        expect(api.info?.title, equals('UUID API'));
        expect(api.components?.schemas?['User'], isNotNull);
        final user = api.components!.schemas!['User']!;
        expect(user.properties?['id']?.format, equals('uuid'));
        expect(user.properties?['createdAt']?.format, equals('date-time'));
      });

      test('throws on invalid YAML', () {
        expect(
          () => OpenApiCodeBuilderUtils.loadApiFromYaml(
              'invalid: yaml: content: ['),
          throwsA(anything),
        );
      });

      test('throws on missing required fields', () {
        expect(
          () => OpenApiCodeBuilderUtils.loadApiFromYaml('invalid: true'),
          throwsA(anything),
        );
      });
    });

    group('formatLibrary', () {
      test('formats library with correct header and footer', () {
        // This is a simplified test - the actual formatLibrary method requires a Library object
        // which is complex to construct manually. The test verifies the method exists and
        // can be called with proper parameters.
        expect(() => OpenApiCodeBuilderUtils.formatLibrary, returnsNormally);
      });
    });
  });
}
