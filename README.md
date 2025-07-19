# OpenAPI Service Flutter

A Dart code generator that creates type-safe client libraries from OpenAPI specifications for Flutter applications. This package generates clean, maintainable code with proper error handling and serialization.

## Features

- 🚀 **Type-safe code generation** from OpenAPI 3.0 specifications
- 📦 **Separate DTO and Service files** for better organization
- 🔒 **Freezed integration** for immutable data classes
- 🌐 **Dio HTTP client** with proper error handling
- ⚡ **Either-based error handling** using dartz
- 🎯 **Enum support** with JSON value annotations
- 🔧 **Build runner integration** for seamless development

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  dio: ^5.3.0
  dartz: ^0.10.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  openapi_service_flutter: ^2.0.0
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

## Usage

### 1. Create an OpenAPI Specification

Create a `.openapi.yaml` file in your project (e.g., `lib/api/petstore.openapi.yaml`):

```yaml
openapi: 3.0.0
info:
  title: Pet Store API
  version: 1.0.0
paths:
  /pets:
    get:
      operationId: getPets
      responses:
        '200':
          description: A list of pets
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/Pet'
components:
  schemas:
    Pet:
      type: object
      required:
        - id
        - name
      properties:
        id:
          type: integer
          format: int64
        name:
          type: string
        status:
          type: string
          enum: [available, pending, sold]
```

### 2. Configure Build Runner

Create or update your `build.yaml`:

```yaml
targets:
  $default:
    builders:
      openapi_service_flutter:
        options:
          prefixFilter: ''
          includeFilterPrefix: true
```

### 3. Generate Code

Run the build runner to generate your client code:

```bash
dart run build_runner build
```

This will generate two files:
- `petstore.openapi.dtos.dart` - Data Transfer Objects with Freezed models
- `petstore.openapi.service.dart` - Service class with HTTP methods

### 4. Use the Generated Code

```dart
import 'package:dio/dio.dart';
import 'api/petstore.openapi.dtos.dart';
import 'api/petstore.openapi.service.dart';

void main() async {
  // Create Dio instance
  final dio = Dio();
  
  // Create service
  final petStoreService = PetStoreService(dio);
  
  // Make API call
  final result = await petStoreService.getPets();
  
  result.fold(
    (error) => print('Error: ${error.message}'),
    (pets) => print('Found ${pets.length} pets'),
  );
}
```

## Generated Code Structure

### DTO Files (.openapi.dtos.dart)

Generated DTOs use Freezed for immutable data classes:

```dart
@freezed
class PetDto with _$PetDto {
  const factory PetDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'status') PetStatus? status,
  }) = _PetDto;

  factory PetDto.fromJson(Map<String, dynamic> json) => _$PetDtoFromJson(json);
}

enum PetStatus {
  @JsonValue('available') available,
  @JsonValue('pending') pending,
  @JsonValue('sold') sold,
}
```

### Service Files (.openapi.service.dart)

Generated services use Dio for HTTP requests with Either-based error handling:

```dart
class PetStoreService {
  PetStoreService(this._dio) {
    _dio.options.connectTimeout = const Duration(seconds: 60);
    _dio.options.receiveTimeout = const Duration(seconds: 60);
  }

  final Dio _dio;

  /// Get all pets
  /// GET: /pets
  Future<Either<ApiError, List<PetDto>>> getPets() async {
    try {
      final response = await _dio.get('/pets');
      final result = response.data as List<dynamic>;
      final mappedResult = result.map((item) => 
        PetDto.fromJson(item as Map<String, dynamic>)
      ).toList();
      return Right(mappedResult);
    } catch (e) {
      return Left(_handleError(e));
    }
  }
}
```

## Error Handling

The generated code includes structured error handling:

```dart
@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}
```

## Configuration Options

You can customize the code generation through build.yaml options:

```yaml
targets:
  $default:
    builders:
      openapi_service_flutter:
        options:
          prefixFilter: ''
          includeFilterPrefix: true
```

## Client Usage with Authentication

For apps with authentication, integrate the service with your authentication state management:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'api/stepo.openapi.service.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  late final StepoService _service;
  late final Dio _dio;
  
  AuthenticationCubit() : super(AuthenticationState.unauthenticated()) {
    _dio = Dio();
    _setupAuthInterceptor();
    
    _service = StepoService(
      _dio,
      config: StepoServiceConfig(
        baseUrl: 'https://api.stepo.com',
      ),
    );
  }
  
  void _setupAuthInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add token to every request if available
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) {
        // Handle 401 - token expired
        if (error.response?.statusCode == 401) {
          logout(); // Clear invalid token
        }
        handler.next(error);
      },
    ));
  }
  
  StepoService get service => _service;
  
  String? get token => state.maybeWhen(
    authenticated: (token) => token,
    orElse: () => null,
  );
  
  Future<void> login(String email, String password) async {
    final result = await _service.apiV1AuthLoginPost(LoginDto(
      email: email,
      password: password,
    ));
    
    result.fold(
      (error) => emit(AuthenticationState.error(error.message)),
      (response) => emit(AuthenticationState.authenticated(token: response.token)),
    );
  }
  
  void logout() {
    emit(AuthenticationState.unauthenticated());
  }
}

// App setup
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthenticationCubit()),
        BlocProvider(create: (context) => FetchStepCubit(
          context.read<AuthenticationCubit>().service,
        )),
      ],
      child: MaterialApp(
        home: BlocBuilder<AuthenticationCubit, AuthenticationState>(
          builder: (context, state) {
            return state.isAuthenticated ? HomeScreen() : LoginScreen();
          },
        ),
      ),
    );
  }
}

// Feature cubit using the service
class FetchStepCubit extends Cubit<FetchStepState> {
  final StepoService _service;
  
  FetchStepCubit(this._service) : super(FetchStepInitial());
  
  Future<void> fetchSteps() async {
    emit(FetchStepLoading());
    
    // Service automatically adds token if available
    final result = await _service.apiV1AccountStepsGet();
    
    result.fold(
      (error) => emit(FetchStepError(error.message)),
      (steps) => emit(FetchStepSuccess(steps)),
    );
  }
}
```

This setup provides:
- **Single service instance** for both public and authenticated requests
- **Automatic token injection** for protected endpoints
- **Seamless authentication state changes**
- **Automatic logout** on token expiry (401 errors)

## Examples

Check the `example/` directory for complete examples with different OpenAPI specifications:

- **Pet Store API** - Basic CRUD operations
- **Complex Types** - Nested objects and arrays
- **Enum Support** - Various enum types and usage

## Development

### Running Tests

```bash
# Run all tests
dart test

# Run tests with coverage
dart test --coverage

# Run specific test file
dart test test/openapi_service_builder_test.dart
```

### Code Generation for Examples

```bash
# Generate code for examples
cd example
dart run build_runner build --delete-conflicting-outputs
```

### Analysis and Formatting

```bash
# Analyze code
dart analyze

# Format code
dart format .
```

## Dependencies

### Runtime Dependencies
- `dio` - HTTP client for making API requests
- `dartz` - Functional programming utilities (Either type)
- `freezed_annotation` - Annotations for Freezed
- `json_annotation` - JSON serialization annotations

### Generated Code Dependencies
Your generated code will depend on:
- `dio` - For HTTP requests
- `dartz` - For Either-based error handling
- `freezed_annotation` - For DTO annotations
- `json_annotation` - For JSON serialization

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Run tests and ensure they pass
6. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For issues and questions:
- Create an issue on GitHub
- Check existing issues for similar problems
- Provide minimal reproduction examples

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for detailed changes in each version.