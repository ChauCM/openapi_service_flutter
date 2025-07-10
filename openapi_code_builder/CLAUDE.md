# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Structure

This is a monorepo containing three main Dart packages for OpenAPI client code generation:

- **`openapi_base/`** - Base library providing OpenAPI client abstractions and utilities
- **`openapi_code_builder/`** - Core code generation package that transforms OpenAPI YAML specs into Dart client code
- **`openapi_generator_flutter/`** - Flutter web application for testing the code generator

The main focus is on `openapi_code_builder`, which uses `build_runner` to generate type-safe Dart client libraries from OpenAPI 3.0 YAML specifications.

## Key Commands

### Code Generation and Building
```bash
# Generate code from OpenAPI specs (run in any package with .openapi.yaml files)
dart run build_runner build --delete-conflicting-outputs

# Clean generated files
dart run build_runner clean

# Watch for changes and regenerate
dart run build_runner watch
```

### Development Commands
```bash
# Install dependencies for a specific package
dart pub get

# Run linting
dart analyze

# Run example client (from openapi_code_builder/example/)
dart run usage/example_client.dart

# Run Flutter generator app (from openapi_generator_flutter/)
flutter run -d web-server --web-port 8080
```

## Architecture

### Code Generation Flow
1. **Input**: OpenAPI 3.0 YAML files with `.openapi.yaml` extension in `lib/` folders
2. **Processing**: `OpenApiLibraryGenerator` in `openapi_code_builder/src/` parses YAML and generates Dart code
3. **Output**: When `generateServiceClasses: true` is configured, generates two separate files:
   - `*.openapi.dtos.dart` - Data Transfer Objects with Freezed and JSON serialization
   - `*.openapi.service.dart` - Service classes with Dio HTTP client and functional error handling

### Key Components

**OpenAPI Code Builder (`openapi_code_builder/`):**
- `OpenApiLibraryGenerator` - Main code generation engine that supports two generation styles:
  - Legacy style: Generates traditional client classes with response mapping
  - Service style: Generates modern Dart client code using Dio, Freezed, and Dartz for error handling
- `CustomAllocator` - Manages code generation imports and references
- `OpenApiCodeBuilder` - Builder class that integrates with `build_runner`
- Uses `code_builder` package for AST generation and `dart_style` for formatting

**OpenAPI Base (`openapi_base/`):**
- `OpenApiClientBase` - Base class for generated clients
- Request/response abstractions and serialization utilities
- HTTP headers, content types, and UUID handling utilities

**Generated Code Structure:**
- **Legacy Style**: Single `.openapi.dart` file with client classes extending base client, response classes use sealed class pattern with `map()` methods
- **Service Style** (Recommended): Dual-file generation with:
  - **DTOs file**: Freezed-based immutable classes with `json_annotation` serialization, enum support, inheritance via `allOf`
  - **Service file**: Dio-based HTTP client with `Either<ApiError, T>` return types for functional error handling
- **Smart DTO Generation**: Only generates DTOs for schemas actually used by endpoints, filters out empty/unused schemas automatically
- **Type-Safe Maps**: Handles OpenAPI `additionalProperties` as `Map<String, T>` instead of generating unnecessary DTOs

### Build System Integration
- Uses `build_runner` with custom builder configuration in `build.yaml`
- Automatically triggers on `.openapi.yaml` file changes
- Integrates with `json_serializable` and `freezed` for data class generation
- Runs before other code generators in the build pipeline (`runs_before: ['freezed|freezed', 'json_serializable|json_serializable']`)

### Code Generation Modes
The generator supports two architectural styles configured via `generateServiceClasses` flag:

1. **Legacy Style** (default): Traditional OpenAPI client with response mapping
2. **Service Style**: Modern Dart approach with:
   - Dio for HTTP client
   - Freezed for immutable DTOs
   - Dartz Either for functional error handling
   - ApiError model for structured error responses

## Working with OpenAPI Specs

### File Naming Convention
Place OpenAPI specs in `lib/` folders with `.openapi.yaml` extension. 

**File Generation:**
- **Legacy mode**: Creates single `*.openapi.dart` file
- **Service mode** (`generateServiceClasses: true`): Creates two files:
  - `*.openapi.dtos.dart` - Data Transfer Objects
  - `*.openapi.service.dart` - Service classes

### Required Schema Configuration
```yaml
openapi: 3.0.0
info:
  x-dart-name: YourApiName  # Required: sets generated class names
```

### Local Package Dependencies
All packages use path dependencies to reference each other:
```yaml
dependency_overrides:
  openapi_base:
    path: ../openapi_base
```

## Testing Generated Code

The `openapi_code_builder/example/` contains working examples with the following structure:

**Example Directory Structure:**
```
openapi_code_builder/example/
├── lib/service/
│   ├── test_api.openapi.yaml          # Simple Hello World API spec
│   ├── test_api.openapi.dtos.dart     # Generated DTOs
│   ├── test_api.openapi.dtos.dart.bak # Backup of generated DTOs for comparison
│   ├── test_api.openapi.service.dart  # Generated service classes
│   ├── test_api.openapi.service.dart.bak # Backup of generated service for comparison
│   ├── pet_store.openapi.yaml         # Pet Store API spec
│   ├── pet_store.openapi.dtos.dart    # Generated Pet Store DTOs
│   ├── pet_store.openapi.dtos.dart.bak # Backup of Pet Store DTOs
│   ├── pet_store.openapi.service.dart # Generated Pet Store service
│   └── pet_store.openapi.service.dart.bak # Backup of Pet Store service
└── usage/
    └── example_client.dart            # Client usage example
```

**Key Files:**
- `lib/service/test_api.openapi.yaml` - Simple Hello World API with various parameter types
- `lib/service/pet_store.openapi.yaml` - More complex Pet Store API
- `usage/example_client.dart` - Client usage example showing service-style generation
- `*.dart.bak` files - Backup copies of generated files for easier comparison when updating the generator

The example demonstrates:
- Dual-file generation (DTOs + Service)
- Functional error handling with `Either<ApiError, T>`
- Smart DTO filtering (unused schemas like `TypedAdditionalProperties` are automatically excluded)
- Map handling for `additionalProperties` schemas (e.g., inventory endpoint returns `Map<String, int>`)

Run the client example to test the code generation pipeline:
```bash
cd openapi_code_builder/example
dart run build_runner build --delete-conflicting-outputs
dart run usage/example_client.dart
```