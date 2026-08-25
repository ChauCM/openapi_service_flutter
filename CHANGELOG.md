# Changelog

## 3.0.1

No behaviour change. Documents and pins the rule that decides field
nullability, after a consumer asked whether a non-nullable collection could
reach Dart as a non-nullable `List<T>`.

It already can, and the answer is spec-side: a property that carries a
`default:` is emitted as `@Default(<value>) T name`, for arrays (`default: []`),
maps, scalars and enums alike. A property that is neither `required:` nor
defaulted stays `T?` on purpose — the schema says the value is never null *when
present* and says nothing about the key being absent, so emitting a
non-nullable field with no default would throw on any payload that omits it.

- README: a "Field nullability" section giving the full rule, and why
  `default:` is the forgiving lever and `required:` the strict one (the
  generated `fromJson` throws on an absent required key).
- New `test/collection_defaults_test.dart` + fixture, covering array, `$ref`
  array, map, scalar and non-empty defaults, the deliberately-nullable case,
  and `required:` taking precedence over `default:`.
- New `example/tool/collection_defaults_roundtrip.dart`, which proves through
  real freezed + json_serializable output that an omitted key — and an
  explicitly `null` one — actually lands on the default, and that the default
  is `const` rather than a shared growable list. A test keeps its spec
  byte-identical to the generator fixture.

## 3.0.0

### Breaking changes

- Multipart binary parts now take in-memory bytes instead of a file handle.
  Generated upload methods accept `Uint8List <name>` plus an optional named
  `String? <name>Filename` (defaults to the part name) and send the part with
  `MultipartFile.fromBytes`. Callers that passed a `dart:io` `File` should pass
  `await file.readAsBytes()` and, if the server cares about the name,
  `<name>Filename: file.uri.pathSegments.last`. Multipart methods no longer
  depend on `dart:io`.
- The unused `_getFileName` helper is no longer emitted into generated
  services.

### Fixes

- Binary (`application/octet-stream`) responses are now requested with
  `Options(responseType: ResponseType.bytes)` so `response.data` really is a
  `Uint8List`. Previously Dio decoded the body as a `String` and the generated
  cast threw at runtime. This also applies when the same endpoint takes a
  binary request body.

## 2.1.1

- Header parameters are sent to Dio via `Options`.
- Enum query/path parameters serialize to their wire value.
- `DioExceptionType` switches are forward-compatible across dio versions.
- OAS 3.1 nullable patterns supported (`oneOf [null, $ref]`, type arrays,
  enum with null).
