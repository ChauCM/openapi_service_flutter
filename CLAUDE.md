# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Goal

The goal of `openapi_service_flutter` is to generate clean, type-safe service code and DTOs that can be easily integrated into Flutter projects with well-structured service layers. The generated code follows modern Dart/Flutter patterns and provides:

- **Separation of concerns**: DTOs for data modeling, services for API operations
- **Type safety**: Compile-time validation through Freezed models and strict typing
- **Error handling**: Functional error handling with Either types for robust service layers
- **Configuration**: Flexible service configuration for different environments
- **Maintainability**: Clean, readable generated code that follows Dart conventions

This enables developers to quickly integrate OpenAPI-based services into their Flutter applications without manual boilerplate, while maintaining code quality and architectural best practices.

## Project Overview

This is `openapi_service_flutter` - a Dart code generator that creates type-safe client libraries from OpenAPI specifications for Flutter applications. The generator now produces **separate DTO and service files** with Freezed models, JSON serialization, and Either-based error handling using the `either_dart` package.

## Key Architecture Changes

### Code Generation Pipeline
- **Input**: `.openapi.yaml` or `.openapi.json` files containing OpenAPI specifications
- **Output**: Two separate files per spec:
  - `.openapi.dtos.dart` - Freezed DTOs with JSON serialization (includes both `.freezed.dart` and `.g.dart` parts)
  - `.openapi.service.dart` - Service class with HTTP methods using Dio (imports DTOs)

### Core Components
- `OpenApiServiceBuilder` - Main builder class that orchestrates code generation
- `OpenApiLibraryGenerator` - Generates both DTO and service libraries with separate methods:
  - `generateDtosLibrary()` - Creates DTO-only library
  - `generateServiceLibrary()` - Creates service-only library that imports DTOs
- `CustomAllocator` - Handles import allocation for generated code
- Build system integration via `build.yaml` configuration

### Generated Code Structure
- **DTOs**: Use Freezed with `@freezed` annotation, sealed classes, and JSON serialization
- **Services**: Use Dio for HTTP requests with Either-based error handling from `either_dart`
- **API Errors**: Sealed `ApiError` class with enhanced error handling and status code mapping
- **Service Configuration**: Generated `ServiceConfig` class for each API with baseUrl, timeouts, and interceptors
- **Enum Support**: Proper JSON value annotations with `@JsonValue` for enum values

## Enhanced Features

### Service Configuration
Each generated service includes a configuration class:
- `{BaseName}ServiceConfig` with baseUrl, connectTimeout, receiveTimeout, and interceptors
- Constructor accepts optional config parameter with sensible defaults
- Automatic Dio configuration in service constructor

### Enhanced Error Handling
- Status code to error type mapping (401→authentication_error, 403→authorization_error, etc.)
- Error message extraction from common API response fields (message, error, detail, error_description)
- Fallback to DioException message or generic error message
- Optional `onError` callback for custom error handling with stack trace and endpoint information

### Improved Code Organization
- Separate files reduce compilation overhead and improve maintainability
- DTOs can be imported independently for type definitions
- Service classes are leaner and focus on HTTP operations

### Binary File Upload Support
- MIME type detection for binary request bodies
- Progress callbacks for file uploads with `Stream<List<int>>` support
- Appropriate headers for content length and type
- Enhanced error handling for upload operations

### Prefix Filtering
- Optional prefix filtering to selectively include endpoints
- Configuration options for `prefixFilter` and `includeFilterPrefix`
- Allows generating services for specific API subsets

## Common Development Commands

### Building and Testing
```bash
# Run tests
dart test

# Run tests with coverage
dart test --coverage

# Generate code for examples
dart run build_runner build --delete-conflicting-outputs

# Clean build artifacts
dart run build_runner clean
```

### Code Generation
```bash
# Generate code for a specific OpenAPI spec
dart run openapi_service_flutter:openapi_code_builder_cli <path_to_openapi.yaml>

# Run build runner for the example
cd example && dart run build_runner build

# Clean and regenerate
cd example && dart run build_runner clean && dart run build_runner build

# Generate with delete conflicting outputs (recommended)
dart run build_runner build --delete-conflicting-outputs

# Run a specific test
dart test test/openapi_service_builder_test.dart

# Run specific test file with verbose output
dart test test/openapi_service_builder_edge_cases_test.dart -v
```

### Analysis and Formatting
```bash
# Analyze code
dart analyze

# Format code
dart format .

# Fix formatting issues
dart format --fix .
```

## Testing

Tests are located in `test/` directory with fixtures in `test/fixtures/`. The test suite covers:
- Basic code generation functionality
- Edge cases and error scenarios
- Different OpenAPI schema types (arrays, maps, enums, complex types)
- Service enhancements (configuration, error handling)
- Generated code validation

Key test files:
- `openapi_service_builder_test.dart` - Main functionality tests
- `openapi_service_builder_edge_cases_test.dart` - Edge case handling
- `openapi_library_generator_test.dart` - Library generation tests
- `service_enhancements_test.dart` - Service configuration and error handling tests
- `test_utils.dart` - Shared test utilities and helper functions

## Dependencies and Generated Code

### Key Dependencies
- `build` and `source_gen` for code generation
- `freezed` and `json_annotation` for DTO generation
- `dio` and `either_dart` for HTTP client and error handling (changed from `dartz`)
- `open_api_dart` (internal package) for OpenAPI specification parsing
- `recase` for string case conversion
- `dart_style` for code formatting

### Generated Code Dependencies
Generated service code depends on:
- `dio` (^5.3.2) for HTTP requests
- `either_dart` (^1.0.0) for Either-based error handling
- `freezed_annotation` (^3.1.0) for DTO annotations
- `json_annotation` (^4.9.0) for JSON serialization

## Build Configuration

The package uses `build.yaml` to configure:
- Builder factories and extensions
- Output file patterns (`.openapi.yaml/.json` → `.openapi.dtos.dart`, `.openapi.service.dart`)
- Build order dependencies (runs before freezed and json_serializable)
- Auto-apply to dependents with source build target
- Configuration options for prefix filtering and other customization

## Example Usage

Examples are in `example/` directory with various OpenAPI specs:
- `pet_store.openapi.yaml` - Pet store API example
- `test_api.openapi.yaml` - Simple test API
- `stepo.openapi.json` - Complex API with nested schemas (JSON format)
- `stepo_yaml_311.openapi.yaml` - OpenAPI 3.1.1 specification example

Generated files include:
- **DTOs**: `*.openapi.dtos.dart` with Freezed models and JSON serialization
- **Services**: `*.openapi.service.dart` with HTTP methods and configuration
- **Generated files**: `*.freezed.dart` and `*.g.dart` for serialization support

## Internal Architecture

### open-api-dart Package
The project includes an internal `open-api-dart` package for OpenAPI specification parsing:
- Located in `open-api-dart/` directory
- Supports both OpenAPI 2.0 (v2) and 3.0+ (v3) specifications
- Handles schema parsing, validation, and type resolution
- Key classes: `Document`, `Schema`, `Operation`, `Parameter`, `Response`

### Code Generation Flow
1. `OpenApiServiceBuilder` reads `.openapi.yaml` or `.openapi.json` files
2. Uses `open-api-dart` to parse OpenAPI specification into document model
3. `OpenApiLibraryGenerator` transforms document model into Dart code
4. `CustomAllocator` manages imports and code organization
5. Outputs separate `.openapi.dtos.dart` and `.openapi.service.dart` files

