# OpenAPI Code Builder Update Plan

## Overview
Update the OpenAPI code builder to generate service classes that utilize freezed, dio, and dartz following the service structure pattern defined in `service_structure.md`.

## Current State Analysis

### Existing Code Generation Pattern
The current `OpenApiLibraryGenerator` generates:
- **Data Classes**: Using `json_annotation` and `JsonSerializable` for DTOs
- **Client Classes**: Extending `OpenApiClientBase` with typed methods
- **Response Classes**: Sealed classes with `map()` methods for response handling
- **Request/Response Flow**: Direct HTTP client implementation

### Key Files to Modify
1. `openapi_code_builder/lib/src/openapi_code_builder.dart` - Main generator logic
2. `openapi_code_builder/lib/src/custom_allocator.dart` - Import management

## Implementation Plan

### Phase 1: Enhanced DTO Generation with Freezed

#### 1.1 Update Data Class Generation
- **Current**: Uses `@JsonSerializable()` with manual class definitions
- **Target**: Generate freezed DTOs with proper json_annotation
- **Changes**:
  - Replace `_createSchemaClass()` method to generate freezed classes
  - Add `@freezed` annotation to generated classes
  - Update constructor patterns to use freezed factory constructors
  - Ensure proper `part` directive generation for `.freezed.dart` files

#### 1.2 Update Import Management
- **File**: `custom_allocator.dart`
- **Changes**:
  - Add `package:freezed_annotation/freezed_annotation.dart` to `_doNotPrefix` list
  - Add `package:dartz/dartz.dart` to `_doNotPrefix` list
  - Add `package:dio/dio.dart` to `_doNotPrefix` list

### Phase 2: Generate ApiError Model

#### 2.1 Create ApiError Generation
- **Target**: Generate the freezed ApiError model as shown in service_structure.md
- **Implementation**:
  - Add new method `_generateApiErrorModel()` to generate the ApiError sealed class
  - Include all error variants: NetworkError, ServerError, TimeoutError, UnauthorizedError, ValidationError, ParseError, UnknownError
  - Add to library generation in `generate()` method

### Phase 3: Service Class Generation

#### 3.1 Replace Client Generation with Service Generation
- **Current**: Generates abstract client interfaces and implementations
- **Target**: Generate service classes that use Dio and return Either<ApiError, T>
- **Changes**:
  - Replace `clientInterface` and `clientClass` generation
  - Generate service classes with Dio dependency injection
  - Update method signatures to return `Future<Either<ApiError, T>>`
  - Add error handling with DioException mapping

#### 3.2 Update Method Generation
- **Current**: Methods return `Future<ResponseClass>`
- **Target**: Methods return `Future<Either<ApiError, DTO>>`
- **Implementation**:
  - Update `_createRequestBodyClient()` to use Dio request patterns
  - Generate try-catch blocks with DioException handling
  - Map HTTP status codes to appropriate ApiError types
  - Use DTO classes for response deserialization

#### 3.3 Add Error Handling Logic
- **Target**: Generate `_handleDioError()` method in service classes
- **Implementation**:
  - Map `DioExceptionType` to `ApiError` variants
  - Handle timeout, network, and server errors
  - Extract error messages from response bodies
  - Support validation error field mapping

### Phase 4: Dependencies and Configuration

#### 4.1 Update Package Dependencies
- **Required additions**:
  - `freezed_annotation: ^2.4.1`
  - `dartz: ^0.10.1`
  - `dio: ^5.3.2`
- **Build dependencies**:
  - `freezed: ^2.4.6`

#### 4.2 Configuration Options
- **Add new generator options**:
  - `generateServiceClasses` - Enable service generation instead of client
  - `baseUrl` - Default base URL for service classes
  - `timeoutDuration` - Default timeout configuration

## Generated Code Structure

### Service Class Example
```dart
class UserService {
  final Dio _dio;
  
  UserService(this._dio) {
    _dio.options.baseUrl = 'https://api.example.com';
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
  }
  
  Future<Either<ApiError, UsersListDto>> getUsers({
    int page = 1,
    int perPage = 20,
  }) async {
    try {
      final response = await _dio.get('/api/v1/users', queryParameters: {
        'page': page,
        'per_page': perPage,
      });
      return Right(UsersListDto.fromJson(response.data));
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left(ApiError.parseError(message: 'Failed to parse response'));
    }
  }
}
```

### DTO Class Example
```dart
@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
```

## Testing Strategy

### Phase 5: Testing and Validation

#### 5.1 Update Example Generation
- **Target**: Update example OpenAPI specs to generate service classes
- **Files to update**:
  - `openapi_code_builder/example/lib/service/testapi.openapi.yaml`
  - `openapi_code_builder/example/lib/service/petstore.openapi.yaml`

#### 5.2 Integration Testing
- **Test generated service classes**:
  - Verify proper freezed DTO generation
  - Test error handling with mock DioExceptions
  - Validate Either return types
  - Test JSON serialization/deserialization

## Implementation Order

1. **Phase 1**: Update DTO generation with freezed (Medium priority)
2. **Phase 2**: Generate ApiError model (Medium priority)  
3. **Phase 3**: Service class generation (High priority)
4. **Phase 4**: Dependencies and configuration (Low priority)
5. **Phase 5**: Testing and validation (Low priority)

## Breaking Changes

- **Service Interface**: Complete replacement of client interface with service classes
- **Return Types**: All methods now return Either<ApiError, T> instead of Response classes
- **Dependencies**: New required dependencies (freezed, dartz, dio)
- **Generated Files**: Additional `.freezed.dart` part files required

## Migration Guide

For existing users:
1. Update dependencies in `pubspec.yaml`
2. Run `dart pub get`
3. Regenerate code with `dart run build_runner build --delete-conflicting-outputs`
4. Update calling code to handle Either return types
5. Replace OpenApiClient usage with generated service classes