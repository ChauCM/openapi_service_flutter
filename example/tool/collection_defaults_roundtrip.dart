// Proof that a `default:` in the spec survives DESERIALISATION, not just
// code generation.
//
// The generator test (test/collection_defaults_test.dart in the parent
// package) asserts the *shape* it emits: `@Default([]) List<String> x`. That
// shape is only safe if freezed + json_serializable actually apply the default
// when the payload omits the key — a non-nullable Dart field with no value
// throws. Unit tests in the generator package cannot check this, because they
// never run freezed. This script does: it is compiled against the real
// generated code in lib/service/.
//
//   dart run tool/collection_defaults_roundtrip.dart
//
// Exits non-zero on the first violated expectation.

import 'package:openapi_service_flutter_example/service/collection_defaults_api.openapi.dtos.dart';

int _failures = 0;

void check(String what, bool ok, [Object? saw]) {
  if (ok) {
    print('  ok   $what');
  } else {
    _failures++;
    print('  FAIL $what${saw == null ? '' : '  (saw: $saw)'}');
  }
}

void main() {
  print('A payload that OMITS every optional key:');
  final absent = CharacterDto.fromJson(<String, dynamic>{'hanzi': '上'});
  check('array default → []', absent.componentsWithDefault.isEmpty,
      absent.componentsWithDefault);
  check('\$ref array default → []', absent.refsWithDefault.isEmpty,
      absent.refsWithDefault);
  check('map default → {}', absent.mapWithDefault.isEmpty,
      absent.mapWithDefault);
  check('bool default → false', absent.canTraceWithDefault == false,
      absent.canTraceWithDefault);
  check("string default → ''", absent.labelWithDefault == '',
      absent.labelWithDefault);
  check('int default → 0', absent.strokeCountWithDefault == 0,
      absent.strokeCountWithDefault);
  check("seeded default → ['a', 'b']",
      absent.tagsWithSeededDefault.join(',') == 'a,b',
      absent.tagsWithSeededDefault);
  check('no default → stays null', absent.componentsNoDefault == null,
      absent.componentsNoDefault);

  print('A payload that sends an explicit null for a defaulted key:');
  final explicitNull = CharacterDto.fromJson(<String, dynamic>{
    'hanzi': '上',
    'componentsWithDefault': null,
    'canTraceWithDefault': null,
  });
  check('null array → []', explicitNull.componentsWithDefault.isEmpty,
      explicitNull.componentsWithDefault);
  check('null bool → false', explicitNull.canTraceWithDefault == false,
      explicitNull.canTraceWithDefault);

  print('A payload that sends a real value:');
  final present = CharacterDto.fromJson(<String, dynamic>{
    'hanzi': '上',
    'componentsWithDefault': ['一', '卜'],
  });
  check('the value wins over the default',
      present.componentsWithDefault.join(',') == '一,卜',
      present.componentsWithDefault);

  print('The default must be const, not a shared growable list:');
  var mutable = false;
  try {
    absent.componentsWithDefault.add('boom');
    mutable = true;
  } on UnsupportedError {
    // expected
  }
  check('default list is unmodifiable', !mutable);

  print('A `required:` property has no default and MUST throw when absent:');
  var threw = false;
  try {
    RequiredHolderDto.fromJson(<String, dynamic>{});
  } catch (_) {
    threw = true;
  }
  check('required + absent key throws', threw);

  if (_failures > 0) {
    print('\n$_failures check(s) failed.');
    throw StateError('collection defaults round-trip failed');
  }
  print('\nAll checks passed.');
}
