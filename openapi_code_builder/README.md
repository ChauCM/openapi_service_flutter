# OpenAPI Code Builder

A Dart code generator that transforms OpenAPI specifications into type-safe Dart client code for Flutter applications.

## Overview

This package generates Dart client code from OpenAPI 3.0 specifications, providing:

- **Type-safe DTOs** with JSON serialization/deserialization
- **HTTP client interfaces** for API consumption
- **Response handling** with sealed classes and pattern matching
- **Null-safe code generation** with modern Dart syntax

Perfect for Flutter apps that need to consume REST APIs with type safety and excellent developer experience.

## Usage

Add the package to your `pubspec.yaml`:

```yaml
dev_dependencies:
  openapi_code_builder: ^1.6.0
  build_runner: ^2.0.0
  
dependencies:
  openapi_base: ^2.0.0
  json_annotation: ^4.0.0
```

Create a `build.yaml` file:

```yaml
targets:
  $default:
    builders:
      openapi_code_builder:
        generate_for:
          - lib/**.openapi.yaml
```

Place your OpenAPI specification files in your `lib/` directory with the `.openapi.yaml` extension, then run:

```bash
dart run build_runner build
```

## Generated Code

From an OpenAPI specification, the generator creates:

- **Data Transfer Objects (DTOs)**: Immutable classes with JSON serialization
- **API Client**: Type-safe methods for making HTTP requests
- **Response Classes**: Sealed classes with pattern matching for handling different response codes

## Flutter Integration Example

```dart
import 'package:openapi_base/openapi_base.dart';
import 'package:my_app/api/my_api.openapi.dart';

class ApiService {
  late final MyApiClient _client;
  
  ApiService() {
    final requestSender = HttpRequestSender();
    _client = MyApiClient(
      Uri.parse('https://api.example.com'),
      requestSender,
    );
  }
  
  Future<String> getUser(String userId) async {
    final response = await _client.getUserById(id: userId);
    return response.map(
      on200: (success) => success.body.name,
      on404: (notFound) => 'User not found',
      onElse: (error) => 'Error: ${error.status}',
    );
  }
}
```

## Configuration Options

Configure the generator in your `build.yaml`:

```yaml
targets:
  $default:
    builders:
      openapi_code_builder:
        options:
          generateProvider: true
          providerNamePrefix: "Api"
          ignoreSecuritySchemes: false
```

## Examples

See the `example/` directory for complete working examples with OpenAPI specifications and Flutter client usage.