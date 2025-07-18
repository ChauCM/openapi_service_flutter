# open_api_dart

Reads and writes OpenAPI (Swagger) specifications.

> **Note**: This project is cloned from [https://github.com/hpoul/open-api-dart](https://github.com/hpoul/open-api-dart) and serves as a dependency for the openapi_service_flutter code generator.

## Features

- Support for OpenAPI v2 (Swagger 2.0) and v3 specifications
- JSON parsing and serialization
- Strongly typed Dart models for OpenAPI components
- Document validation and manipulation

## Example

```dart
final file = File("test/specs/kubernetes.json");
final contents = await file.readAsString();
final doc = APIDocument.fromJSON(contents);

final output = JSON.encode(doc.asMap());
```


