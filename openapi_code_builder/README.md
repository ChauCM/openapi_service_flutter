# OpenAPI Dart Client Generator

Generate type-safe Dart client libraries from OpenAPI 3.0 YAML specifications.

This `build_runner` package automatically generates type-safe Dart client code from your OpenAPI schema files, including:
- Service classes for API consumption using Dio, Freezed, and Dartz
- Separate DTO files with optimized data models
- Type-safe request/response handling with functional error management
- Automatic filtering of unused/empty DTOs

# Usage

1. Update `pubspec.yaml`:
   ```yaml
   dependencies:
     json_annotation: ^4.0.0
     openapi_base: ^2.0.0
     dio: ^5.0.0
     dartz: ^0.10.0
     freezed_annotation: ^2.0.0

   dev_dependencies:
     openapi_code_builder: ^1.6.0
     json_serializable: ^6.0.0
     freezed: ^2.0.0
     build_runner: ^2.0.0
   ```
2. Create your OpenAPI schema file in your `lib` folder with `.openapi.yaml` extension
3. Add the Dart API name to your schema:
   ```yaml
   openapi: 3.0.0
   info:
     x-dart-name: MyApiName
   ```
4. Configure service-style generation in `build.yaml`:
   ```yaml
   targets:
     $default:
       builders:
         openapi_code_builder:openapi_code_builder:
           options:
             generateServiceClasses: true
   ```
5. Generate the code:
   ```shell
   dart run build_runner build --delete-conflicting-outputs
   ```
   This will generate two files for each `.openapi.yaml`:
   - `*.openapi.dtos.dart` - Data Transfer Objects with Freezed annotations
   - `*.openapi.service.dart` - Service classes with Dio HTTP client

6. Use the generated client code


# Example

## OpenAPI Schema (`lib/service/testapi.openapi.yaml`)

```yaml
openapi: 3.0.0
info:
  version: 0.1.0
  title: Test API
  x-dart-name: TestApi

paths:
  /hello/{name}:
    parameters:
      - name: name
        in: path
        required: true
        schema:
          type: string
    get:
      summary: Say Hello World to {name}
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/HelloResponse'

components:
  schemas:
    HelloResponse:
      properties:
        message:
          type: string
          description: 'The Hello World greeting'
```

## Generated Client Usage (Service Style)

```dart
import 'package:dio/dio.dart';
import 'service/testapi.openapi.service.dart';

final dio = Dio();
final apiService = TestApiService(dio);

final result = await apiService.helloNameGet(name: 'World');

result.fold(
  (error) => print('Error: ${error.message}'),
  (response) => print('Success: ${response.message}'),
);
```

## Generated Files Structure

For each `myapi.openapi.yaml` file, the generator creates:

### `myapi.openapi.dtos.dart`
- Freezed-based immutable DTOs
- JSON serialization with `json_annotation` 
- Only generates DTOs for schemas actually used by endpoints
- Filters out empty/unused schemas automatically
- Supports complex types, enums, and inheritance

### `myapi.openapi.service.dart`
- Service class with Dio HTTP client
- Methods return `Either<ApiError, ResponseType>` for functional error handling
- Automatic request/response serialization
- Proper handling of path parameters, query parameters, and request bodies
- Type-safe Map handling for `additionalProperties` schemas

## Example Project

See the complete example in the `openapi_code_builder/example` folder which includes:
- Test API and Pet Store OpenAPI specifications  
- Generated client code
- Usage examples for client implementation

Run the client example:
```shell
cd openapi_code_builder/example
dart run usage/example_client.dart  # Run client
```
