# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is `openapi_service_flutter` - a Dart code generator that creates type-safe client libraries from OpenAPI specifications for Flutter applications. It generates separate DTO (Data Transfer Object) and service files with Freezed models, JSON serialization, and Either-based error handling.

## Key Architecture

### Code Generation Pipeline
- **Input**: `.openapi.yaml` files containing OpenAPI specifications
- **Output**: Two separate files per spec:
  - `.openapi.dtos.dart` - Freezed DTOs with JSON serialization
  - `.openapi.service.dart` - Service class with HTTP methods using Dio

### Core Components
- `OpenApiServiceBuilder` - Main builder class that orchestrates code generation
- `OpenApiLibraryGenerator` - Generates both DTO and service libraries
- `CustomAllocator` - Handles import allocation for generated code
- Build system integration via `build.yaml` configuration

### Generated Code Structure
- DTOs use Freezed for immutable data classes with JSON serialization
- Service classes use Dio for HTTP requests with Either-based error handling
- API errors are wrapped in `ApiError` class with structured error information
- Enum support with proper JSON value annotations

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
- Generated code validation

Key test files:
- `openapi_service_builder_test.dart` - Main functionality tests
- `openapi_service_builder_edge_cases_test.dart` - Edge case handling
- `openapi_library_generator_test.dart` - Library generation tests

## Dependencies and Generated Code

### Key Dependencies
- `build` and `source_gen` for code generation
- `freezed` and `json_annotation` for DTO generation
- `dio` and `dartz` for HTTP client and error handling
- `open_api_forked` for OpenAPI specification parsing

### Generated Code Dependencies
Generated service code depends on:
- `dio` for HTTP requests
- `dartz` for Either-based error handling
- `freezed_annotation` for DTO annotations
- `json_annotation` for JSON serialization

## Build Configuration

The package uses `build.yaml` to configure:
- Builder factories and extensions
- Output file patterns (`.openapi.yaml` → `.openapi.dtos.dart`, `.openapi.service.dart`)
- Build order dependencies (runs before freezed and json_serializable)
- Source generation settings

## Example Usage

Examples are in `example/` directory with various OpenAPI specs:
- `pet_store.openapi.yaml` - Pet store API example
- `test_api.openapi.yaml` - Simple test API
- `stepo.openapi.yaml` - Complex API with nested schemas

Generated files include both DTOs and service classes that can be used directly in Flutter applications.