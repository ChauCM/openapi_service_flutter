# Changelog

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
