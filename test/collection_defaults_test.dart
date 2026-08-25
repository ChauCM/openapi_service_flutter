import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

/// Generates the DTO library output for the collection-defaults fixture.
Future<String> _generateDtos() async {
  final yaml = await File('test/fixtures/collection_defaults_api.openapi.yaml')
      .readAsString();
  final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yaml);
  final generator = OpenApiLibraryGenerator(
    api,
    baseName: 'CollectionDefaultsApi',
    partFileName: 'collection_defaults_api.openapi.dtos.g.dart',
  );
  final library = generator.generateDtosLibrary();
  return OpenApiServiceBuilderUtils.formatLibrary(library);
}

void main() {
  group('property nullability is decided by `required` and `default`', () {
    late String dtos;

    setUpAll(() async {
      dtos = await _generateDtos();
    });

    group('a `default:` makes an optional property non-nullable', () {
      test('array of primitives → @Default([]) List<String>', () {
        expect(
          dtos,
          matches(RegExp(
              r'@Default\(\[\]\)\s+List<String>\s+componentsWithDefault')),
        );
        expect(dtos, isNot(contains('List<String>? componentsWithDefault')));
      });

      test('array of \$refs → @Default([]) List<PieceDto>', () {
        expect(
          dtos,
          matches(
              RegExp(r'@Default\(\[\]\)\s+List<PieceDto>\s+refsWithDefault')),
        );
      });

      test('map → @Default({}) Map<String, String>', () {
        expect(
          dtos,
          matches(RegExp(
              r'@Default\(\{\}\)\s+Map<String,\s*String>\s+mapWithDefault')),
        );
      });

      test('a non-empty collection default keeps its members', () {
        expect(
          dtos,
          matches(RegExp(
              r"@Default\(\[\s*'a',\s*'b',?\s*\]\)\s+List<String>\s+tagsWithSeededDefault")),
        );
      });

      test('scalars get the same treatment', () {
        expect(dtos,
            matches(RegExp(r'@Default\(false\)\s+bool\s+canTraceWithDefault')));
        expect(dtos,
            matches(RegExp(r"@Default\('\'?'?\)\s+String\s+labelWithDefault")));
        expect(dtos,
            matches(RegExp(r'@Default\(0\)\s+int\s+strokeCountWithDefault')));
      });
    });

    group('no `default:` and not `required:` stays nullable', () {
      // This is deliberate, not an oversight. The schema says the value is
      // never null *when present*; it says nothing about the key being absent,
      // and Dart has one value for absent. Emitting a non-nullable field with
      // no default would throw on any payload that omits the key.
      test('an optional non-nullable array stays List<T>?', () {
        expect(dtos, contains('List<String>? componentsNoDefault'));
        expect(dtos,
            isNot(contains('@Default([]) List<String> componentsNoDefault')));
      });

      test('an optional non-nullable scalar stays T?', () {
        expect(dtos, contains('bool? canTraceNoDefault'));
      });
    });

    group('`required:` wins over `default:`', () {
      test('emits a required named parameter and no @Default', () {
        expect(dtos,
            matches(RegExp(r'required\s+List<String>\s+requiredWithDefault')));
        expect(dtos,
            isNot(contains('@Default([]) List<String> requiredWithDefault')));
      });
    });

    group('explicit null in the type array stays nullable', () {
      test("type: ['null', 'string'] → String?", () {
        expect(dtos, contains('String? radical'));
      });
    });

    test('the example package builds the same spec, byte for byte', () async {
      // The assertions above check the code the generator EMITS. Whether a
      // payload that omits the key actually deserialises is a freezed +
      // json_serializable question, which this package's tests cannot answer
      // because they never run those builders.
      //
      // example/tool/collection_defaults_roundtrip.dart answers it against the
      // real generated code. It is only evidence about this fixture if it is
      // generated from this fixture, so the two files are kept identical and
      // this test is what keeps them that way.
      final fixture =
          await File('test/fixtures/collection_defaults_api.openapi.yaml')
              .readAsString();
      final twin =
          await File('example/lib/service/collection_defaults_api.openapi.yaml')
              .readAsString();
      expect(
        twin,
        equals(fixture),
        reason: 'example/lib/service/collection_defaults_api.openapi.yaml has '
            'drifted from test/fixtures/collection_defaults_api.openapi.yaml. '
            'Copy the fixture over it and re-run '
            '`dart run build_runner build --delete-conflicting-outputs` plus '
            '`dart run tool/collection_defaults_roundtrip.dart` in example/.',
      );
    });
  });
}
