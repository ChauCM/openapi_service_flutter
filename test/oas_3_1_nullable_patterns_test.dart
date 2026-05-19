import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

/// Generates the DTO library output for the OAS 3.1 nullable-patterns fixture.
Future<String> _generateDtos() async {
  final yaml = await File('test/fixtures/oas_3_1_nullable_api.openapi.yaml')
      .readAsString();
  final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yaml);
  final generator = OpenApiLibraryGenerator(
    api,
    baseName: 'Oas31NullableApi',
    partFileName: 'oas_3_1_nullable_api.openapi.dtos.g.dart',
  );
  final library = generator.generateDtosLibrary();
  return OpenApiServiceBuilderUtils.formatLibrary(library);
}

void main() {
  group('OAS 3.1 nullable patterns', () {
    late String dtos;

    setUpAll(() async {
      dtos = await _generateDtos();
    });

    group('nullable ref via oneOf [null, \$ref]', () {
      test('does not synthesize a per-property wrapper class', () {
        // The pre-fix bug: the generator invented wrappers like
        // AccountOwnerDto / AccountRoleDto / AccountPrimaryRoleDto from the
        // parent property name. They must not appear in the output.
        expect(dtos, isNot(contains('class AccountOwnerDto')));
        expect(dtos, isNot(contains('class AccountRoleDto')));
        expect(dtos, isNot(contains('class AccountInteractionTypeDto')));
        expect(dtos, isNot(contains('class AccountPrimaryRoleDto')));
        expect(dtos, isNot(contains('enum AccountRoleDto')));
        expect(dtos, isNot(contains('enum AccountInteractionTypeDto')));
        expect(dtos, isNot(contains('enum AccountPrimaryRoleDto')));
      });

      test('emits the inner ref type as nullable when not required', () {
        // owner: oneOf [null, UserDto] → UserDto? owner
        expect(dtos, matches(RegExp(r'UserDto\?\s+owner')));
        // role: oneOf [null, UserRoleDto] → UserRoleDto? role
        expect(dtos, matches(RegExp(r'UserRoleDto\?\s+role')));
      });

      test('emits the inner ref as nullable even when in required:', () {
        // primaryRole is in required: but its schema declares null as valid →
        // still nullable.
        expect(dtos, matches(RegExp(r'UserRoleDto\?\s+primaryRole')));
      });

      test('inner ref schema (UserRole enum) is still generated', () {
        expect(dtos, contains('enum UserRoleDto'));
        // null is stripped from enum values
        expect(dtos, contains("@JsonValue('Moderator')"));
        expect(dtos, contains("@JsonValue('Admin')"));
        expect(dtos, contains("@JsonValue('SuperAdmin')"));
      });

      test('inner ref object schema is still generated', () {
        expect(dtos, contains('class UserDto'));
      });
    });

    group('enum schema with `null` value entry', () {
      test('emits the non-null values as a regular Dart enum', () {
        expect(dtos, contains('enum UserRoleDto'));
        // No `null` member, no `\$null`, no junk identifier
        expect(dtos, isNot(matches(RegExp(r'enum UserRoleDto[^}]*\bnull\b'))));
      });
    });

    group('scalar nullable via type-array [null, T]', () {
      test('emits T? for properties NOT in required:', () {
        expect(dtos, matches(RegExp(r'String\?\s+nickname')));
        expect(dtos, matches(RegExp(r'int\?\s+score')));
      });

      test('emits T? for properties IN required:', () {
        // firstStepId is in `required:` but its schema declares null as a
        // valid value, so the property must still be nullable.
        expect(dtos, matches(RegExp(r'String\?\s+firstStepId')));
      });
    });

    group('default value on nullable-oneOf ref to enum', () {
      test('emits @Default(EnumDto.value), not the raw string literal', () {
        // interactionType: oneOf [null, InteractionType] + default: Heart
        expect(dtos, contains('@Default(InteractionTypeDto.heart)'));
        expect(dtos, isNot(contains("@Default('Heart')")));
      });
    });

    test('Account DTO is generated and has the expected fields', () {
      expect(dtos, contains('class AccountDto'));
      // sanity check that the generation didn't bail out
      expect(dtos, contains('factory AccountDto'));
    });
  });
}
