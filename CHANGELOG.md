# Changelog

## 4.0.0

A server that adds an enum value no longer breaks every client already shipped.
Reported by the MaiSay consumer, where seven enums gained values between a
release and the build in users' hands, and the next response carrying one of
them would have thrown out of the JSON decode.

**Breaking for consumers, by design.** Every generated enum gains a `$unknown`
variant, so any `switch` that was exhaustive over a generated enum stops
compiling until it handles it. That break is the point: it moves the discovery
from a user's device to the build, and each site is a real decision about what
to draw when the value cannot be read. Some of those sites will be refusals
rather than fallbacks — a screen that cannot be drawn truthfully should not be
drawn. Read each one; a blanket `_ =>` sweep will silently disarm switches whose
exhaustiveness was deliberate.

### Fixed

- **Decoding an unseen enum value no longer throws.** `$enumDecode` and
  `$enumDecodeNullable` raise `ArgumentError` for any name absent from the
  generated enum map unless the field declares `JsonKey.unknownEnumValue`. Every
  enum-typed field now declares it. This was invisible in the generated Dart, because the
  enum itself looks complete and the throw happens in the `.g.dart` part.
- **A list of enums is covered too.** It is the easy one to miss: the field's own
  schema is the array, so its `enumerated` is empty and its Dart type is `List`.
  The generator looks through to `items` and names the element type.
- `fromName` returns the sentinel instead of throwing a `StateError`.

### Added

- `EnumSpec.unknownSentinel` — the `$unknown` variant carried by every generated
  enum. The `$` prefix is what makes the name safe rather than merely unlikely:
  `_sanitizeEnumValueName` emits `$`-prefixed names only for wire values that
  camelCase onto a Dart reserved word, and `unknown` is not one, so no spec can
  produce this identifier. A plain `unknown` would collide, and specs do use it
  — where it means the server knows the answer is "unknown", a different fact
  from "this build is too old to have heard of this value".
- The annotated parameter is `unknownEnumValue`. `unknownValue` is what
  `$enumDecode` itself takes, and the two the wrong way round fail silently:
  `JsonKey` has no such parameter, json_serializable finds nothing, and the
  emitted decode just omits the argument — so the enum map still gains its
  sentinel and the output looks fixed while every decode still throws.
- The sentinel carries no `@JsonValue`, so a value round-tripped back to the
  server is sent as a string no server accepts and is refused loudly, rather
  than being encoded as some plausible real value the server would act on.

## 3.2.0

A parse failure stops looking like a dead wire. Reported by the MaiSay consumer,
where a `200` the client read wrong reached the screen as "server unreachable"
and could not be diagnosed afterwards, because the body that would have named
the offending field was discarded at the moment it failed.

`openapi_service_runtime` bumps to **1.2.0**. Generated code from 3.2.0 requires
runtime **>= 1.2.0**; regenerate and bump the two together.

### Fixed

- **The generated parse no longer destroys the response.** The request and the
  parse used to share one `try`, so a `fromJson` or cast failure arrived at
  `ErrorHandler.handleError` as a bare `TypeError` with no response attached.
  `DefaultErrorHandler` then reported `statusCode: 0`, `responseBody: null`,
  `type: 'client_error'` — the same `ApiError` a request that never left the
  device produces. The parse now runs in its own inner `try` and rethrows a
  `ResponseParseFailure` carrying the whole `Response`.
- `DefaultErrorHandler` reports the **real status and the real body** for such a
  failure, with `type: 'parse_error'` and the cause's own stack trace (the one
  that names the parse frame). The friendly message is still derived from the
  cause, not the wrapper.
- `shouldLog` receives the real status for a parse failure instead of `null`, so
  an unreadable `200` can be quietened by status like any other outcome.

### Added

- `ResponseParseFailure` in `openapi_service_runtime`, exposing `response`,
  `cause`, `causeStackTrace`, `statusCode` and `responseBody`.
- `ApiError.isParseError`.

### Behavior change

No API is removed and every `ErrorHandler` implementation keeps compiling, but
two observable values change for an unreadable success response:

- `error.statusCode` is now the real status (typically `200`) rather than `0`,
  and `error.type` is `'parse_error'` rather than `'client_error'`. Code that
  treated `statusCode == 0` as "offline" stops mistaking a parse defect for one;
  code that branched on `isClientError` to catch parse failures should branch on
  `isParseError` instead.
- A custom `ErrorHandler` is handed a `ResponseParseFailure` where it previously
  received the raw `TypeError`. Its `toString()` includes the cause, and `cause`
  reaches the original error unchanged.

Dio throws on a non-success status before the parse runs, so this path is only
ever reached for a response the server considered successful.

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
