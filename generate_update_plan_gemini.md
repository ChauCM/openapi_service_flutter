# Plan: Modernize OpenAPI Dart Generator

This document outlines a plan to update the `openapi_code_builder` to generate modern, robust Dart client code utilizing `dio` for networking, `freezed` for data models, and `dartz` for error handling, as inspired by `service_structure.md`.

## 1. Goal

The primary objective is to evolve the code generator to produce a service layer that is:
- **Robust:** With explicit error handling using `Either<ApiError, SuccessDto>`.
- **Modern:** Employing `freezed` for immutable, boilerplate-free data classes.
- **Industry-Standard:** Using `dio` as the HTTP client, which is a de-facto standard in the Flutter/Dart community.

This change will move away from the current custom `OpenApiRequestSender` and sealed response classes, toward a more streamlined and developer-friendly pattern.

## 2. Core Dependencies

The generated code will require the following dependencies to be added to the user's `pubspec.yaml`:

```yaml
dependencies:
  dio: ^5.4.0
  dartz: ^0.10.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.4.8
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

The `openapi_code_builder`'s `README.md` must be updated to reflect these new peer dependencies.

## 3. Generated Code Architecture

The generator will produce two main types of files: DTOs and the Service Client. A new `ApiError` model will also be generated.

### 3.1. DTOs (Data Transfer Objects)

All schema objects from the OpenAPI specification will be generated as `freezed` classes.

**Change:** Modify `OpenApiLibraryGenerator._createSchemaClass`.

**Implementation:**
- Annotate the class with `@freezed`.
- Add the `with _$ClassName` mixin.
- Generate a `const factory ClassName(...) = _ClassName;` for the constructor.
- Generate the `factory ClassName.fromJson(Map<String, dynamic> json) => _$ClassNameFromJson(json);` constructor.
- This requires adding `part '...freezed.dart';` and `part '...g.dart';` directives to the generated file.

**Example DTO:**
```dart
// dtos/pet_dto.dart (generated from Pet schema)
part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class Pet with _$Pet {
  const factory Pet({
    required int id,
    required String name,
    // ... other properties
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
```

### 3.2. API Error Model

A standard, self-contained `ApiError` class will be generated to represent all possible failure scenarios.

**Change:** A new generation step will create this `freezed` class.

**Implementation:**
- Generate a new file (e.g., `api_error.dart`) or include the `ApiError` class within the main generated file.
- The class will be a `freezed` union type as specified in `service_structure.md`.

**Example `ApiError`:**
```dart
// models/api_error.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError.networkError({ required String message, int? statusCode }) = NetworkError;
  const factory ApiError.serverError({ required String message, required int statusCode }) = ServerError;
  const factory ApiError.validationError({ required String message, Map<String, List<String>>? fieldErrors }) = ValidationError;
  // ... other error types
}
```

### 3.3. Service Client

This is the most significant change. The generated client will be a standalone class that uses `dio`.

**Change:** Overhaul the client generation logic in `OpenApiLibraryGenerator`.

**Implementation:**
- The generated client class (e.g., `PetstoreClient`) will no longer implement `OpenApiClient`.
- The constructor will accept a `Dio` instance: `PetstoreClient(this._dio)`.
- All API methods will return a `Future<Either<ApiError, T>>`, where `T` is the success DTO (or `void` if no response body).
- The generation of `sealed` response classes (e.g., `GetPetByIdResponse`) will be removed.
- Each method body will be a `try-catch` block for robust error handling.
- A private `_handleDioError(DioException error)` helper method will be generated inside the client class to map `DioException` types to the corresponding `ApiError` type.

**Example Service Method (`getPetById`):**
```dart
// services/petstore_service.dart
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../dtos/pet.dart';
import '../models/api_error.dart';

class PetstoreClient {
  final Dio _dio;

  PetstoreClient(this._dio) {
    // Optionally configure base URL and timeouts here
  }

  Future<Either<ApiError, Pet>> getPetById({required int petId}) async {
    try {
      final response = await _dio.get('/pet/$petId');
      // Assuming 200 is the success response
      final pet = Pet.fromJson(response.data);
      return Right(pet);
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left(ApiError.parseError(
        message: 'Failed to parse response: ${e.toString()}',
      ));
    }
  }

  // ... other methods

  ApiError _handleDioError(DioException error) {
    // ... implementation to map DioException to ApiError
  }
}
```

## 4. Implementation Strategy in `openapi_code_builder`

### 4.1. Add a Configuration Flag

To maintain backward compatibility, a new option will be introduced in `build.yaml`.

```yaml
targets:
  $default:
    builders:
      openapi_code_builder:
        options:
          # 'legacy' (default) or 'freezed_dio_dartz'
          style: 'freezed_dio_dartz'
```
The `OpenApiCodeBuilder` class will read this option and delegate to the appropriate generator logic.

### 4.2. Update `OpenApiLibraryGenerator`

- **Main `generate` method:**
  - Based on the `style` option, call either the existing generation logic or the new logic.
- **New Logic (`generateFreezedDioDartzStyle`):**
  - **Imports:** Add imports for `dio`, `dartz`, `freezed_annotation`, and the generated `api_error.dart`.
  - **DTOs:** Loop through schemas and call the updated `_createSchemaClass` to generate `freezed` DTOs.
  - **ApiError:** Generate the `ApiError` `freezed` class.
  - **Client:**
    - Generate the client class with a `Dio` constructor.
    - Loop through API paths and operations.
    - For each operation:
      - Determine the success response DTO (typically for `200` or `201`).
      - Generate the method with the `Future<Either<ApiError, SuccessDto>>` signature.
      - The logic for parsing parameters (`_encodeParameter`) can be adapted to build the `dio` request (path, query parameters, body).
      - Generate the `try-catch` block with the `dio` call.
    - Generate the `_handleDioError` helper method at the end of the class.

### 4.3. `openapi_base` Package

- The new generator style will not use `OpenApiClientBase`, `OpenApiRequestSender`, or `OpenApiResponse`. These can be kept for the `legacy` style.
- A potential future improvement is to move the `ApiError` model and `_handleDioError` logic into `openapi_base` to reduce code duplication, but for the initial implementation, generating them directly is acceptable.

## 5. Phased Rollout

1.  **Implement the Plan:** Modify `openapi_code_builder` according to this plan, behind the new `style` flag.
2.  **Update Documentation:** Update `README.md` to explain the new `freezed_dio_dartz` style, its benefits, and the required dependencies.
3.  **Testing:** Add a new example in the `example/` directory that uses the new generation style to ensure it works correctly.
4.  **Release:** Publish a new version of the package. The `legacy` style remains the default to avoid breaking changes for existing users.
5.  **Future:** Consider making the new style the default in a future major version release.