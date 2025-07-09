# OpenAPI Dart Client Generator

Generate type-safe Dart client libraries from OpenAPI 3.0 YAML specifications.

This `build_runner` package automatically generates type-safe Dart client code from your OpenAPI schema files, including:
- Client libraries for API consumption
- Data models with JSON serialization
- Type-safe request/response handling

# Usage

1. Update `pubspec.yaml`:
   ```yaml
   dependencies:
     json_annotation: ^4.0.0
     openapi_base: ^2.0.0

   dev_dependencies:
     openapi_code_builder: ^1.6.0
     json_serializable: ^6.0.0
     build_runner: ^2.0.0
   ```
2. Create your OpenAPI schema file in your `lib` folder with `.openapi.yaml` extension
3. Add the Dart API name to your schema:
   ```yaml
   openapi: 3.0.0
   info:
     x-dart-name: MyApiName
   ```
4. Generate the code:
   ```shell
   dart run build_runner build --delete-conflicting-outputs
   ```
5. Use the generated client code


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

## Generated Client Usage

```dart
final requestSender = HttpRequestSender();
final client = TestApiClient(
    Uri.parse('http://localhost:8000'),
    requestSender);

final response = await client.helloNameGet(name: 'World');
response.map(
  on200: (response) => print('Success: ${response.body.message}'),
);

requestSender.dispose();
```

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
