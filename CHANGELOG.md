# Changelog

## 3.1.0

Runtime logging becomes adjustable. Every default is unchanged; each item below
is an optional argument that a host may now pass instead of forking the class
to get at it. Prompted by a consumer that had reimplemented two of these in app
code — `docs/ops/openapi-runtime-feedback.md` in the MaiSay repo.

`openapi_service_runtime` bumps to **1.1.0**.

### Added

- `DefaultErrorHandler({shouldLog, log})`. `shouldLog(int? statusCode, Object?
  error)` decides whether a failure is worth printing and defaults to "always";
  `log` routes the lines and defaults to `print`. The status is **nullable on
  purpose** — it is `null` when the request never produced a response, so a host
  can stay quiet about failures its own interceptor rejected. The constructor is
  still `const`, so the `const DefaultErrorHandler()` that every generated
  service emits is untouched.
- `ApiLogInterceptor` is now public. Previously the only way to reach it was
  `DefaultDio.createWithLogging`, which meant taking the whole `Dio` — including
  `create`'s 30-second `connectTimeout` — in order to get logging. A host that
  has tuned its own client adds `const ApiLogInterceptor()` to it instead.
  It is stateless (per-request timing lives in `RequestOptions.extra`), so one
  `const` instance is safe to share.
- `ApiLogSink` and `assertsEnabled` are exported for hosts wiring their own
  sink or guard.
- `createWithLogging` gains `log` and `redactUri`. `redactUri` renders the
  request URI for the log, for a host whose query string can carry a secret.

### Changed

- **`createWithLogging` now honours the "(debug mode)" its doc has always
  claimed.** There was no guard of any kind: a host that read the name and
  shipped it printed every endpoint a real user hit into the device log. The new
  `enableLogging` argument defaults to `assertsEnabled`, so release AOT builds
  are silent. Pass `enableLogging: true` to keep logging in release.
- The request log reports **elapsed milliseconds** instead of a decoded map's
  field count, and carries a greppable `api` prefix:

  ```
  api → POST /api/v1/auth/refresh
  api ← 200 POST /api/v1/auth/refresh (558ms)
  ```

  Bodies are still reported by size and headers still never logged — now stated
  as a rule on `ApiLogInterceptor`, so a contributor adding "just the body, for
  debugging" is knowingly changing it.

### Removed

- `lib/src/runtime/`, a second copy of the runtime left behind when it moved to
  the `openapi_service_runtime` package. Nothing imported it — there is no
  `lib/runtime.dart` barrel and the generator emits
  `package:openapi_service_runtime/…` — and it had already drifted: it still
  carried the `case DioExceptionType.unknown:` that `9a1eb80` replaced with a
  forward-compatible `default:` in the live copy. Two copies of a file is one
  copy that silently does not get the fix.

### Tests

- `test/runtime_logging_seams_test.dart`, 14 cases. The interceptor ones run
  inside dio's real request chain against a stub adapter rather than by calling
  the handlers directly. Each was proved red by breaking the thing it guards.

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
