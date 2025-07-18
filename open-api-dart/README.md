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




 Problem Analysis

  The issue is that OpenAPI 3.1.1 introduced support for array types in the type field, but the open_api_forked package's parser only expects a single string value. Here's what's happening:

  OpenAPI 3.0 vs 3.1.1 Difference

  OpenAPI 3.0 (current parser expects):
  schema:
    type: "string"  # Single string value

  OpenAPI 3.1.1 (causing the error):
  schema:
    type: ["integer", "string"]  # Array of types - NEW in 3.1.1

  The Error

  The error type 'ListArchive' is not a subtype of type 'String?' occurs because:

  1. The parser tries to decode the type field as a String?
  2. But encounters a List (which becomes ListArchive in the codable system)
  3. The cast fails, causing the build to crash

  Fix Strategy

  You need to fork open_api_forked and modify the APISchemaObject class to handle both single types and type arrays.