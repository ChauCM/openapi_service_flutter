# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Dart library for reading and writing OpenAPI (Swagger) specifications. It provides utilities to parse OpenAPI documents and work with their components programmatically. The library serves as a dependency for the `openapi_service_flutter` code generator.

## Architecture

### Core Components
- **Entry Points**: `v2.dart` and `v3.dart` provide separate APIs for OpenAPI versions
- **Base Classes**: 
  - `APIObject` - Base class extending `Coding` from `conduit_codable` for serialization
  - `APIDocument` - Main document class representing complete OpenAPI specifications
- **Version-Specific Implementations**:
  - `src/v2/` - OpenAPI 2.0 (Swagger) support
  - `src/v3/` - OpenAPI 3.0/3.1 support

### Key Classes
- **Schema System**: `APISchemaObject` - Represents data schemas (critical for OpenAPI 3.1.1 support)
- **HTTP Operations**: `APIPath`, `APIOperation`, `APIResponse`, `APIParameter`
- **Components**: `APIComponents` - Reusable component definitions
- **Security**: `APISecurityRequirement`, `APISecurityScheme`
- **V3 Specific**: `APIServerDescription`, `APICallback`, `APIRequestBody`, `APIMediaType`

## Development Commands

```bash
# Get dependencies
dart pub get

# Run all tests
dart test

# Run specific test file
dart test test/v3_test.dart

# Run tests matching a pattern
dart test --name "handles array types"

# Analyze code
dart analyze

# Format code
dart format .

# Check formatting without applying
dart format --output=none --set-exit-if-changed .
```

## Dependencies

### Runtime Dependencies
- `conduit_codable` (^5.1.5) - Provides `Coding` and `KeyedArchive` for serialization/deserialization
- `meta` - Provides annotations like `@mustCallSuper`

### Serialization Architecture
The library uses `conduit_codable` for JSON parsing:
- All API objects extend `APIObject` which extends `Coding`
- Objects implement `decode()` and `encode()` methods
- `KeyedArchive` handles the JSON structure traversal

## Critical Issue: OpenAPI 3.1.1 Support

### Problem
OpenAPI 3.1.1 allows arrays for the `type` field: `type: ["integer", "string"]`, but the current implementation only handles single string values.

### Key Code Locations
- `lib/src/v3/schema.dart:277` - Where type decoding happens
- `lib/src/v3/types.dart` - `APITypeCodec` implementation that needs array support
- `lib/src/v2/schema.dart` - V2 also affected but less common

### Implementation Notes
When fixing the array type issue:
1. Update `APITypeCodec` to handle both `String?` and `List<String>?`
2. Modify `APISchemaObject.type` to support multiple types
3. Update encoding/decoding logic in both v2 and v3
4. Ensure backward compatibility with existing single-type specs

## Testing

Test files are organized by version:
- `test/v2_test.dart` - OpenAPI 2.0 tests
- `test/v3_test.dart` - OpenAPI 3.0/3.1 tests
- Test fixtures in `test/specs/` include real-world examples (kubernetes.json, stripe.json)

## Project Origin

This project is cloned from https://github.com/hpoul/open-api-dart and serves as a dependency for the `openapi_service_flutter` code generator. Modifications should maintain compatibility with the parent project's requirements.