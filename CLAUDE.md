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
3. **Output**: Generated `.openapi.dart` files containing client libraries and data models

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
- **Legacy Style**: Client classes extend base client with typed methods, response classes use sealed class pattern with `map()` methods
- **Service Style**: Service classes use Dio for HTTP requests, Freezed for DTOs, and Dartz Either for error handling
- Data models use `json_annotation` for serialization and support inheritance via `allOf`
- Enum support with proper serialization annotations

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
Place OpenAPI specs in `lib/` folders with `.openapi.yaml` extension. The generator will create corresponding `.openapi.dart` files.

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

The `openapi_code_builder/example/` contains working examples:
- `lib/service/test_api.openapi.yaml` - Simple Hello World API with various parameter types
- `lib/service/pet_store.openapi.yaml` - More complex Pet Store API
- `usage/example_client.dart` - Client usage example showing service-style generation

Run the client example to test the code generation pipeline.