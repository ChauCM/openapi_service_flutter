import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';
import 'package:test/test.dart';

/// A server may add a value to an enum at any time. A client build already in a
/// user's hands then receives a name it has never heard of, and json_annotation
/// throws `ArgumentError` out of `$enumDecode` unless the field declares an
/// `unknownValue`. Nothing about that is visible in the generated Dart: the enum
/// looks complete, and the throw happens in the `.g.dart` part.
///
/// So every generated enum carries a sentinel and every enum-typed field points
/// at it. These tests pin the three things that are easy to get wrong.
void main() {
  group('Unknown enum values', () {
    late String dtosOutput;

    setUpAll(() async {
      final yaml =
          await File('test/fixtures/unknown_enum_value_api.openapi.yaml')
              .readAsString();
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yaml);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'UnknownEnumValueApi',
        partFileName: 'unknown_enum_value_api.openapi.dtos.g.dart',
      );
      dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
        generator.generateDtosLibrary(),
      );
    });

    test('every generated enum carries the sentinel', () {
      final enumNames = RegExp(r'^enum (\w+) \{', multiLine: true)
          .allMatches(dtosOutput)
          .map((m) => m.group(1)!)
          .toList();
      expect(enumNames, isNotEmpty);
      for (final name in enumNames) {
        final body = RegExp('enum $name \\{(.*?)\\n\\}', dotAll: true)
            .firstMatch(dtosOutput)
            ?.group(1);
        expect(body, isNotNull, reason: 'no body found for enum $name');
        expect(body, contains(r'$unknown'),
            reason: '$name has no sentinel, so an added server value throws');
      }
    });

    test('a required enum field declares the sentinel as unknownValue', () {
      expect(
        dtosOutput,
        contains(r'unknownEnumValue: ThingStateDto.$unknown'),
      );
    });

    test('a nullable enum field declares it too', () {
      expect(
        dtosOutput,
        contains(r'unknownEnumValue: ThingOwnerDto.$unknown'),
      );
    });

    // The one that is easy to miss: the field's own schema is the array, so its
    // `enumerated` is empty and its Dart type is `List`. Without looking through
    // to `items`, a list of enums keeps the old throwing behaviour while every
    // scalar field around it is fixed.
    test('a list of enums names the ELEMENT type as unknownValue', () {
      expect(
        dtosOutput,
        contains(r'unknownEnumValue: ThingMarkDto.$unknown'),
      );
      expect(dtosOutput, contains('List<ThingMarkDto>'));
    });

    // `unknown` is a real domain value in real specs — it means the server knows
    // the answer is unknown, which is a different fact from "this build is too
    // old to have heard of this value". Naming the sentinel `unknown` would emit
    // a duplicate variant here and stop the generated code compiling.
    test('a spec that already uses "unknown" still generates', () {
      final reason = RegExp(r'enum ThingDtoReasonDto \{(.*?)\n\}', dotAll: true)
          .firstMatch(dtosOutput)
          ?.group(1);
      expect(reason, isNotNull);
      expect(reason, contains('unknown,'));
      expect(reason, contains(r'$unknown,'));
      expect(RegExp(r'\$unknown').allMatches(reason!).length, 1);
    });

    test('fromName returns the sentinel rather than throwing', () {
      expect(
        dtosOutput,
        contains(r'_names[name] ?? ThingStateDto.$unknown'),
      );
      expect(dtosOutput, isNot(contains('Invalid enum name')));
    });
  });
}
