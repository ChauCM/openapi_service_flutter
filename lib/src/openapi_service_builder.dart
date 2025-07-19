// ignore_for_file: unused_field

import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:code_builder/src/visitors.dart'; // ignore: implementation_imports
import 'package:collection/collection.dart' show IterableExtension;
import 'package:dart_style/dart_style.dart';
import 'package:logging/logging.dart';
import 'package:open_api_dart/v3.dart';
import 'package:openapi_service_flutter/src/custom_allocator.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

final _logger = Logger('openapi_service_flutter');

class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(
    this.api, {
    required this.baseName,
    required this.partFileName,
    this.prefixFilter = '',
    this.includeFilterPrefix = true,
  });

  final APIDocument api;

  /// base name for this API. Should be in `PascalCase`
  final String baseName;
  final String partFileName;

  /// Filter for endpoints by prefix (default '/api')
  final String prefixFilter;

  /// Whether to include the filter prefix in method names (default true)
  final bool includeFilterPrefix;

  final jsonValue = refer('JsonValue');
  final jsonKey = refer('JsonKey');
  final _openApiContent = refer('OpenApiContent');
  final _openApiRequest = refer('OpenApiRequest');
  final _openApiResponse = refer('OpenApiResponse');
  final _openApiResponseBodyJson = refer('OpenApiResponseBodyJson');
  final _openApiResponseBodyString = refer('OpenApiResponseBodyString');
  final _openApiResponseBodyBinary = refer('OpenApiResponseBodyBinary');
  final _openApiEndpoint = refer('ApiEndpoint');
  final _endpointProvider = refer('ApiEndpointProvider');
  final _openApiUrlEncodeMixin = refer('OpenApiUrlEncodeMixin');
  final _openApiClient = refer('OpenApiClient');
  final _openApiClientBase = refer('OpenApiClientBase');
  final _hasSuccessResponse = refer('HasSuccessResponse');
  final _file = refer('File', 'dart:io');
  final _formData = refer('FormData', 'package:dio/dio.dart');
  final _multipartFile = refer('MultipartFile', 'package:dio/dio.dart');
  final _platform = refer('Platform', 'dart:io');

  final _openApiClientRequestBodyJson = refer('OpenApiClientRequestBodyJson');
  final _openApiClientRequestBodyText = refer('OpenApiClientRequestBodyText');
  final _openApiClientRequestBodyBinary =
      refer('OpenApiClientRequestBodyBinary');
  final _openApiClientRequest = refer('OpenApiClientRequest');
  final _openApiClientResponse = refer('OpenApiClientResponse');
  final _openApiRequestSender = refer('OpenApiRequestSender');
  final _responseMapType = refer('ResponseMap');
  final _securityRequirement = refer('SecurityRequirement');
  final _securityRequirementScheme = refer('SecurityRequirementScheme');
  final _securitySchemeHttp = refer('SecuritySchemeHttp');
  final _securitySchemeHttpScheme = refer('SecuritySchemeHttpScheme');
  final _securitySchemeApiKey = refer('SecuritySchemeApiKey');
  final _openApiContentType = refer('OpenApiContentType');
  final _openApiContentTypeNullable =
      (refer('OpenApiContentType').type as TypeReference)
          .rebuild((b) => b.isNullable = true);
  final _apiUuid = refer('ApiUuid');
  final _apiUuidJsonConverter = refer('ApiUuidJsonConverter');
  final _freezed =
      refer('freezed', 'package:freezed_annotation/freezed_annotation.dart');
  final _provider = refer('Provider', 'package:riverpod/riverpod.dart');
  final _streamProvider =
      refer('StreamProvider', 'package:riverpod/riverpod.dart');
  final _dio = refer('Dio', 'package:dio/dio.dart');
  final _dioException = refer('DioException', 'package:dio/dio.dart');
  final _dioExceptionType = refer('DioExceptionType', 'package:dio/dio.dart');
  final _dioResponse = refer('Response', 'package:dio/dio.dart');
  final _either = refer('Either', 'package:either_dart/either.dart');
  final _left = refer('Left', 'package:either_dart/either.dart');
  final _right = refer('Right', 'package:either_dart/either.dart');
  final _required = refer('required', 'package:meta/meta.dart');
  final _override = refer('override');
  final _void = refer('void');
  final _uint8List = refer('Uint8List', 'dart:typed_data');
  final _typeString = refer('String');
  final _typeDouble = refer('double');
  final _typeInteger = refer('int');
  final _typeDateTime = refer('DateTime');
  final _literalNullCode = literalNull.code;

  final createdSchema = <APISchemaObject, Reference>{};
  final createdEnums = <String, Reference>{};
  final securitySchemes = <String, Expression>{};

  final lb = LibraryBuilder();
  final securitySchemesClass = ClassBuilder()..name = 'SecuritySchemes';

  Library generate() {
    lb.body.add(Directive.part(partFileName));
    return _generateServiceStyle();
  }

  Library _generateServiceStyle() {
    // Add API Error model
    lb.body.add(_generateApiErrorModel());

    // Generate freezed DTOs for schemas
    final components = api.components;
    if (components?.schemas != null) {
      for (final schemaEntry in components!.schemas!.entries) {
        _schemaReference(schemaEntry.key, schemaEntry.value!);
      }
    }

    // Generate service class
    _generateServiceClass();

    return lb.build();
  }

  Library generateDtosLibrary() {
    final dtosLb = LibraryBuilder();

    // Add both part directives for Freezed and JSON serialization
    dtosLb.body.add(
        Directive.part(partFileName.replaceAll('.g.dart', '.freezed.dart')));
    dtosLb.body.add(Directive.part(partFileName));

    // Add API Error model
    dtosLb.body.add(_generateApiErrorModel());

    // Track which schemas are actually used by endpoints
    final usedSchemas = <String>{};

    // First pass: collect all schema references from endpoints (filtered by prefix)
    if (api.paths != null) {
      for (final path in api.paths!.entries) {
        // Skip paths that don't match the prefix filter
        if (!_shouldIncludePath(path.key)) {
          continue;
        }

        for (final operation in path.value!.operations.entries) {
          // Check response schemas
          for (final response in operation.value!.responses!.entries) {
            if (response.value?.content != null) {
              for (final content in response.value!.content!.values) {
                if (content?.schema != null) {
                  collectSchemaReferences(content!.schema!, usedSchemas);
                }
              }
            }
          }

          // Check request body schemas
          final body = operation.value!.requestBody;
          if (body?.content != null) {
            for (final content in body!.content!.values) {
              if (content?.schema != null) {
                collectSchemaReferences(content!.schema!, usedSchemas);
              }
            }
          }

          // Check parameter schemas
          final allParameters = [
            ...?path.value!.parameters,
            ...?operation.value!.parameters
          ];
          for (final param in allParameters) {
            if (param?.schema != null) {
              collectSchemaReferences(param!.schema!, usedSchemas);
            }
          }
        }
      }
    }

    // Generate DTOs only for used schemas (either used directly by endpoints or enums)
    final components = api.components;
    if (components?.schemas != null) {
      for (final schemaEntry in components!.schemas!.entries) {
        final schema = schemaEntry.value!;
        final isUsed = usedSchemas.contains(schemaEntry.key);
        final isEnum = schema.enumerated?.isNotEmpty == true;
        final shouldGenerate = shouldGenerateDto(schema);

        // Generate if: used by endpoints AND (should generate DTO OR is an enum)
        if (isUsed && (shouldGenerate || isEnum)) {
          _generateSchemaIntoLibrary(dtosLb, schemaEntry.key, schema);
        }
      }
    }

    // Generate DTOs from API operations (responses, parameters, and request bodies)
    if (api.paths != null) {
      for (final path in api.paths!.entries) {
        // Skip paths that don't match the prefix filter
        if (!_shouldIncludePath(path.key)) {
          continue;
        }

        for (final operation in path.value!.operations.entries) {
          final operationName = _generateOperationName(
              path.key, operation.value!.id, operation.key);

          // Generate response DTOs (only for non-trivial schemas that don't reference components)
          final successResponse = operation.value!.responses!.entries
              .where((e) => e.key.startsWith('2'))
              .firstOrNull;

          if (successResponse?.value?.content != null &&
              successResponse!.value!.content!.isNotEmpty) {
            final content = successResponse.value!.content!.values.first;
            if (content?.schema != null) {
              final schema = content!.schema!;
              // Only generate response DTOs for complex schemas with actual properties
              // AND that don't reference component schemas (avoid duplicates)
              if (shouldGenerateDto(schema) && schema.referenceURI == null) {
                final responseBaseName = '${operationName.pascalCase}Response';
                final responseTypeName = responseBaseName.endsWith('Dto')
                    ? responseBaseName
                    : '${responseBaseName}Dto';
                _generateSchemaIntoLibrary(dtosLb, responseTypeName, schema);
              }
            }
          }

          // Generate parameter DTOs for enums
          final allParameters = [
            ...?path.value!.parameters,
            ...?operation.value!.parameters
          ];
          for (final param in allParameters) {
            // Handle direct enum parameters
            if (param!.schema?.enumerated != null &&
                param.schema!.enumerated!.isNotEmpty) {
              final paramTypeName = '$operationName${param.name!.pascalCase}';
              _generateSchemaIntoLibrary(dtosLb, paramTypeName, param.schema!);
            }
            // Handle array parameters with enum items
            else if (param.schema?.type == APIType.array &&
                param.schema!.items?.enumerated != null &&
                param.schema!.items!.enumerated!.isNotEmpty) {
              final paramTypeName = '$operationName${param.name!.pascalCase}';
              _generateSchemaIntoLibrary(
                  dtosLb, paramTypeName, param.schema!.items!);
            }
          }

          // Generate request body DTOs (only for non-trivial schemas that don't reference components)
          // Skip multipart/form-data requests as they use File objects directly
          final body = operation.value!.requestBody;
          if (body != null &&
              body.content!.isNotEmpty &&
              !_isMultipartFormData(body)) {
            final content = body.content!.values.first;
            if (content?.schema != null) {
              final schema = content!.schema!;
              // Only generate request DTOs for complex schemas with actual properties
              // AND that don't reference component schemas (avoid duplicates)
              if (shouldGenerateDto(schema) && schema.referenceURI == null) {
                final requestBaseName = '${operationName.pascalCase}Request';
                final requestTypeName = requestBaseName.endsWith('Dto')
                    ? requestBaseName
                    : '${requestBaseName}Dto';
                _generateSchemaIntoLibrary(dtosLb, requestTypeName, schema);
              }
            }
          }
        }
      }
    }

    return dtosLb.build();
  }

  void collectSchemaReferences(APISchemaObject schema, Set<String> usedSchemas,
      [Set<APISchemaObject>? visitedSchemas]) {
    // Initialize visited schemas set if not provided
    visitedSchemas ??= <APISchemaObject>{};

    // Check if we've already visited this schema to prevent infinite recursion
    if (visitedSchemas.contains(schema)) {
      return;
    }
    visitedSchemas.add(schema);

    // Add reference if this schema points to a component
    final uri = schema.referenceURI;
    if (uri != null) {
      final segments = uri.pathSegments;
      if (segments.length >= 3 &&
          segments[0] == 'components' &&
          segments[1] == 'schemas') {
        usedSchemas.add(segments[2]);
      }
    }

    // Recursively check nested schemas
    if (schema.properties != null) {
      for (final prop in schema.properties!.values) {
        collectSchemaReferences(prop!, usedSchemas, visitedSchemas);
      }
    }

    if (schema.items != null) {
      collectSchemaReferences(schema.items!, usedSchemas, visitedSchemas);
    }

    if (schema.allOf != null) {
      for (final subSchema in schema.allOf!) {
        collectSchemaReferences(subSchema!, usedSchemas, visitedSchemas);
      }
    }

    if (schema.oneOf != null) {
      for (final subSchema in schema.oneOf!) {
        collectSchemaReferences(subSchema!, usedSchemas, visitedSchemas);
      }
    }

    if (schema.anyOf != null) {
      for (final subSchema in schema.anyOf!) {
        collectSchemaReferences(subSchema!, usedSchemas, visitedSchemas);
      }
    }

    if (schema.additionalPropertySchema != null) {
      collectSchemaReferences(
          schema.additionalPropertySchema!, usedSchemas, visitedSchemas);
    }
  }

  bool shouldGenerateDto(APISchemaObject schema) {
    // Handle OpenAPI 3.1.1 array type syntax: use primaryType for processing
    final effectiveType = schema.primaryType;

    // Don't generate DTOs for simple types (string, number, boolean, etc.)
    if (effectiveType != null && effectiveType != APIType.object) {
      return false;
    }

    // For OpenAPI 3.1.1 compatibility, check if schema has object type in array
    final hasObjectType = (schema.type is List)
        ? (schema.type as List).contains(APIType.object)
        : (schema.type == APIType.object);

    // Don't generate DTOs for empty objects without properties or composition
    if (hasObjectType &&
        (schema.properties?.isEmpty ?? true) &&
        (schema.allOf?.isEmpty ?? true) &&
        (schema.oneOf?.isEmpty ?? true) &&
        (schema.anyOf?.isEmpty ?? true)) {
      return false;
    }

    // Generate DTOs for objects with properties or composition
    return hasObjectType ||
        (schema.properties?.isNotEmpty == true) ||
        (schema.allOf?.isNotEmpty == true) ||
        (schema.oneOf?.isNotEmpty == true) ||
        (schema.anyOf?.isNotEmpty == true);
  }

  void _generateSchemaIntoLibrary(
      LibraryBuilder targetLb, String key, APISchemaObject schemaObject) {
    final componentName = classNameForComponent(key);

    // Handle enums
    if (schemaObject.enumerated?.isNotEmpty == true) {
      final enumSpec = EnumSpec(
        name: componentName,
        values: schemaObject.enumerated!
            .map((dynamic e) => EnumValueSpec(
                  annotations: [
                    jsonValue([literalString(e.toString())])
                  ],
                  name: e.toString().camelCase,
                  originalValue: e.toString(),
                ))
            .toList(),
      );
      targetLb.body.add(enumSpec);

      // Store reference for later use
      createdEnums[componentName] = refer(componentName);
    } else {
      // Handle regular schema classes
      final schemaClass =
          _createFreezedSchemaClass(componentName, schemaObject);
      targetLb.body.add(schemaClass);

      // Store reference for later use
      createdSchema[schemaObject] = refer(componentName);

      // Check for inline enums in properties and generate them (only if they don't reference existing schemas)
      if (schemaObject.properties != null) {
        for (final propEntry in schemaObject.properties!.entries) {
          final propSchema = propEntry.value!;
          // Only generate inline enums if the property schema doesn't have a referenceURI
          if (propSchema.enumerated != null &&
              propSchema.enumerated!.isNotEmpty &&
              propSchema.referenceURI == null) {
            final enumBaseName = '$componentName${propEntry.key.pascalCase}';
            final enumName = enumBaseName.endsWith('Dto')
                ? enumBaseName
                : '${enumBaseName}Dto';
            final enumSpec = EnumSpec(
              name: enumName,
              values: propSchema.enumerated!
                  .map((dynamic e) => EnumValueSpec(
                        annotations: [
                          jsonValue([literalString(e.toString())])
                        ],
                        name: e.toString().camelCase,
                        originalValue: e.toString(),
                      ))
                  .toList(),
            );
            targetLb.body.add(enumSpec);

            // Store reference for later use
            createdEnums[enumName] = refer(enumName);
          }
        }
      }
    }
  }

  Library generateServiceLibrary(String inputIdBasename) {
    final serviceLb = LibraryBuilder();

    // Add import for DTOs first
    final dtosFileName = '$inputIdBasename.openapi.dtos.dart';
    serviceLb.body.add(Directive.import(dtosFileName));

    // Service files don't need .g.dart part directive since they don't use JSON serialization

    // Generate service class directly to serviceLb
    _generateServiceClassToLibrary(serviceLb);

    return serviceLb.build();
  }

  void _generateServiceClassToLibrary(LibraryBuilder targetLb) {
    // First generate ServiceConfig class
    _generateServiceConfigClass(targetLb);

    final serviceClass = ClassBuilder()..name = '${baseName}Service';

    // Constructor with Dio and optional config
    serviceClass.constructors.add(Constructor((cb) => cb
      ..requiredParameters.add(Parameter((pb) => pb
        ..name = '_dio'
        ..toThis = true))
      ..optionalParameters.add(Parameter((pb) => pb
        ..name = 'config'
        ..type = refer('${baseName}ServiceConfig').asNullable(true)
        ..named = true))
      ..body = Block.of([
        declareFinal('serviceConfig')
            .assign(
                CodeExpression(Code('config ?? ${baseName}ServiceConfig()')))
            .statement,
        refer('_onError')
            .assign(refer('serviceConfig').property('onError'))
            .statement,
        refer('_dio')
            .property('options')
            .property('baseUrl')
            .assign(refer('serviceConfig').property('baseUrl'))
            .statement,
        refer('_dio')
            .property('options')
            .property('connectTimeout')
            .assign(refer('serviceConfig').property('connectTimeout'))
            .statement,
        refer('_dio')
            .property('options')
            .property('receiveTimeout')
            .assign(refer('serviceConfig').property('receiveTimeout'))
            .statement,
        refer('_dio')
            .property('interceptors')
            .property('addAll')
            ([refer('serviceConfig').property('interceptors')])
            .statement,
      ])));

    // Add _dio field
    serviceClass.fields.add(Field((fb) => fb
      ..name = '_dio'
      ..type = _dio
      ..modifier = FieldModifier.final$));

    // Add _onError field
    serviceClass.fields.add(Field((fb) => fb
      ..name = '_onError'
      ..type = refer(
              'void Function(dynamic error, StackTrace stackTrace, String endpoint, Map<String, dynamic> headers, dynamic requestBody, dynamic responseBody)')
          .asNullable(true)
      ..late = true
      ..modifier = FieldModifier.final$));

    // Generate service methods for each API operation (filtered by prefix)
    if (api.paths != null) {
      for (final path in api.paths!.entries) {
        // Skip paths that don't match the prefix filter
        if (!_shouldIncludePath(path.key)) {
          continue;
        }

        for (final operation in path.value!.operations.entries) {
          final operationName = _generateOperationName(
              path.key, operation.value!.id, operation.key);

          // Determine response DTO type
          Reference? successResponseType;
          final successResponse = operation.value!.responses!.entries
              .where((e) => e.key.startsWith('2'))
              .firstOrNull;

          if (successResponse?.value?.content != null &&
              successResponse!.value!.content!.isNotEmpty) {
            final content = successResponse.value!.content!.values.first;
            if (content?.schema != null) {
              final schema = content!.schema!;
              // Prefer component schema DTO if it references a component, otherwise use operation-specific DTO
              if (schema.referenceURI != null) {
                // This references a component schema, use toDartType to get the component DTO
                successResponseType =
                    toDartType('${operationName}Response', schema);
              } else if (shouldGenerateDto(schema)) {
                // This is an inline schema that we generated an operation-specific DTO for
                final responseBaseName = '${operationName.pascalCase}Response';
                final responseTypeName = responseBaseName.endsWith('Dto')
                    ? responseBaseName
                    : '${responseBaseName}Dto';
                successResponseType = refer(responseTypeName);
              } else {
                // This is a simple type (string, int, etc.)
                successResponseType =
                    toDartType('${operationName}Response', schema);
              }
            }
          }

          // Generate method
          final method = _generateServiceMethod(
            operationName,
            operation.key,
            path.key,
            operation.value!,
            successResponseType ?? _void,
          );
          serviceClass.methods.add(method);
        }
      }
    }

    // Add error handling methods
    serviceClass.methods.add(_generateHandleErrorMethod());
    serviceClass.methods.add(_generateExtractErrorMessageMethod());

    // Add filename extraction helper method
    serviceClass.methods.add(_generateGetFileNameMethod());

    targetLb.body.add(serviceClass.build());
  }

  void _generateServiceConfigClass(LibraryBuilder targetLb) {
    final configClass = ClassBuilder()..name = '${baseName}ServiceConfig';

    // Constructor
    configClass.constructors.add(Constructor((cb) => cb
      ..constant = true
      ..optionalParameters.addAll([
        Parameter((pb) => pb
          ..name = 'baseUrl'
          ..defaultTo = literalString('').code
          ..named = true
          ..toThis = true),
        Parameter((pb) => pb
          ..name = 'connectTimeout'
          ..defaultTo = const Code('const Duration(seconds: 60)')
          ..named = true
          ..toThis = true),
        Parameter((pb) => pb
          ..name = 'receiveTimeout'
          ..defaultTo = const Code('const Duration(seconds: 60)')
          ..named = true
          ..toThis = true),
        Parameter((pb) => pb
          ..name = 'interceptors'
          ..defaultTo = const Code('const []')
          ..named = true
          ..toThis = true),
        Parameter((pb) => pb
          ..name = 'onError'
          ..named = true
          ..toThis = true),
      ])));

    // Add fields
    configClass.fields.addAll([
      Field((fb) => fb
        ..name = 'baseUrl'
        ..type = refer('String')
        ..modifier = FieldModifier.final$),
      Field((fb) => fb
        ..name = 'connectTimeout'
        ..type = refer('Duration')
        ..modifier = FieldModifier.final$),
      Field((fb) => fb
        ..name = 'receiveTimeout'
        ..type = refer('Duration')
        ..modifier = FieldModifier.final$),
      Field((fb) => fb
        ..name = 'interceptors'
        ..type = _referType('List',
            generics: [refer('Interceptor', 'package:dio/dio.dart')])
        ..modifier = FieldModifier.final$),
      Field((fb) => fb
        ..name = 'onError'
        ..type = refer(
                'void Function(dynamic error, StackTrace stackTrace, String endpoint, Map<String, dynamic> headers, dynamic requestBody, dynamic responseBody)')
            .asNullable(true)
        ..modifier = FieldModifier.final$),
    ]);

    targetLb.body.add(configClass.build());
  }

  Class _generateApiErrorModel() {
    return Class((cb) {
      cb
        ..name = 'ApiError'
        ..sealed = true
        ..annotations.add(_freezed)
        ..mixins.add(refer('_\$ApiError'))
        ..constructors.add(Constructor((ccb) => ccb
          ..factory = true
          ..constant = true
          ..optionalParameters.addAll([
            Parameter((pb) => pb
              ..name = 'message'
              ..type = refer('String')
              ..asRequired(this, true)
              ..named = true),
            Parameter((pb) => pb
              ..name = 'statusCode'
              ..type = refer('int').asNullable(true)
              ..named = true),
            Parameter((pb) => pb
              ..name = 'type'
              ..type = refer('String').asNullable(true)
              ..named = true),
          ])
          ..redirect = refer('_ApiError')))
        ..constructors.add(Constructor((ccb) => ccb
          ..factory = true
          ..name = 'fromJson'
          ..requiredParameters.add(Parameter((pb) => pb
            ..name = 'json'
            ..type = _referType('Map',
                generics: [refer('String'), refer('dynamic')])))
          ..lambda = true
          ..body = refer('_\$ApiErrorFromJson')([refer('json')]).code));
    });
  }

  void _generateServiceClass() {
    _generateServiceClassToLibrary(lb);
  }

  Method _generateServiceMethod(
    String operationName,
    String httpMethod,
    String path,
    APIOperation operation,
    Reference returnType,
  ) {
    final method = MethodBuilder()
      ..name = operationName
      ..modifier = MethodModifier.async
      ..returns = _referType('Future', generics: [
        _either.addGenerics(refer('ApiError')).addGenerics(returnType)
      ]);

    // Add method documentation
    if (operation.summary != null) {
      method.docs.add('/// ${operation.summary}');
    }
    if (operation.description != null) {
      method.docs.add('/// ${operation.description}');
    }
    method.docs.add('/// $httpMethod: $path');

    // Add parameters
    final allParameters = [
      ...?operation.parameters,
    ];

    for (final param in allParameters) {
      Reference paramType;
      // Use correct parameter DTO naming for enums
      if (param!.schema?.enumerated != null &&
          param.schema!.enumerated!.isNotEmpty) {
        final paramBaseName =
            '${operationName.pascalCase}${param.name!.pascalCase}';
        final paramTypeName = paramBaseName.endsWith('Dto')
            ? paramBaseName
            : '${paramBaseName}Dto';
        paramType = refer(paramTypeName);
      } else if (param.schema?.type == APIType.array &&
          param.schema!.items?.enumerated != null &&
          param.schema!.items!.enumerated!.isNotEmpty) {
        final paramBaseName =
            '${operationName.pascalCase}${param.name!.pascalCase}';
        final paramTypeName = paramBaseName.endsWith('Dto')
            ? paramBaseName
            : '${paramBaseName}Dto';
        paramType = _referType('List', generics: [refer(paramTypeName)]);
      } else {
        paramType = toDartType(operationName, param.schema!);
      }
      final paramNameCamelCase = param.name!.camelCase;

      method.optionalParameters.add(Parameter((pb) => pb
        ..name = paramNameCamelCase
        ..type = paramType.asNullable(!param.isRequired)
        ..asRequired(this, param.isRequired)
        ..named = true));
    }

    // Add request body parameter
    final body = operation.requestBody;
    if (body != null && body.content!.isNotEmpty) {
      if (_isMultipartFormData(body)) {
        // Handle multipart/form-data requests differently
        final multipartContent = _getMultipartContent(body);
        if (multipartContent?.schema?.properties != null) {
          final requiredFields = multipartContent!.schema!.required ?? [];

          for (final propEntry
              in multipartContent.schema!.properties!.entries) {
            final propName = propEntry.key.camelCase;
            final propSchema = propEntry.value!;
            final isRequired = requiredFields.contains(propEntry.key);

            // Check if this is a file parameter (binary format or references IFormFile)
            final isFileParameter = propSchema.format == 'binary' ||
                (propSchema.referenceURI?.pathSegments.last == 'IFormFile');

            if (isFileParameter) {
              // Add File parameter - always required for files
              method.requiredParameters.add(Parameter((pb) => pb
                ..name = propName
                ..type = _file));
            } else {
              // Add regular form field parameter
              final paramType = toDartType(
                  '$operationName${propName.pascalCase}', propSchema);

              if (isRequired) {
                method.requiredParameters.add(Parameter((pb) => pb
                  ..name = propName
                  ..type = paramType));
              } else {
                method.optionalParameters.add(Parameter((pb) => pb
                  ..name = propName
                  ..type = paramType.asNullable(true)
                  ..named = true));
              }
            }
          }
        }

        // Add progress callback parameter for file uploads
        method.optionalParameters.add(Parameter((pb) => pb
          ..name = 'onProgress'
          ..type = refer('void Function(int sent, int total)').asNullable(true)
          ..named = true));
      } else {
        // Handle regular JSON request bodies
        final content = body.content!.values.first;
        if (content?.schema != null) {
          final schema = content!.schema!;
          Reference bodyType;
          // Prefer component schema DTO if it references a component, otherwise use operation-specific DTO
          if (schema.referenceURI != null) {
            // This references a component schema, use toDartType to get the component DTO
            bodyType = toDartType('${operationName}Request', schema);
          } else if (shouldGenerateDto(schema)) {
            // This is an inline schema that we generated an operation-specific DTO for
            final requestBaseName = '${operationName.pascalCase}Request';
            final requestTypeName = requestBaseName.endsWith('Dto')
                ? requestBaseName
                : '${requestBaseName}Dto';
            bodyType = refer(requestTypeName);
          } else {
            // This is a simple type (string, int, etc.)
            bodyType = toDartType('${operationName}Request', schema);
          }

          method.requiredParameters.add(Parameter((pb) => pb
            ..name = 'body'
            ..type = bodyType));
        }
      }
    }

    // Generate method body
    // Calculate the actual path with parameters replaced
    final pathParams =
        allParameters.where((p) => p!.location == APIParameterLocation.path);
    var actualPath = path;
    for (final param in pathParams) {
      actualPath = actualPath.replaceAll(
          '{${param!.name}}', '\$${param.name!.camelCase}');
    }

    final methodBody = <Code>[
      const Code('try {'),
      // Build query parameters if any exist
      ...() {
        final queryParams = allParameters
            .where((p) => p!.location == APIParameterLocation.query);
        if (queryParams.isNotEmpty) {
          return [
            declareFinal('queryParams')
                .assign(literalMap({}, refer('String'), refer('dynamic')))
                .statement,
            ...queryParams.map((p) {
              final paramName = p!.name!.camelCase;
              final isRequired = p.isRequired;
              return Code(isRequired
                  ? 'queryParams[\'${p.name}\'] = $paramName;'
                  : 'if ($paramName != null) queryParams[\'${p.name}\'] = $paramName;');
            }),
            const Code(''),
          ];
        }
        return <Code>[];
      }(),

      // Build FormData for multipart requests
      ...() {
        if (_isMultipartFormData(operation.requestBody)) {
          final multipartContent = _getMultipartContent(operation.requestBody);
          if (multipartContent?.schema?.properties != null) {
            final formDataCode = <Code>[
              declareFinal('formData').assign(_formData.call([])).statement,
              const Code(''),
            ];

            for (final propEntry
                in multipartContent!.schema!.properties!.entries) {
              final propName = propEntry.key.camelCase;
              final propSchema = propEntry.value!;

              // Check if this is a file parameter
              final isFileParameter = propSchema.format == 'binary' ||
                  (propSchema.referenceURI?.pathSegments.last == 'IFormFile');

              if (isFileParameter) {
                // Add file as MultipartFile
                formDataCode.add(
                    Code('formData.files.add(MapEntry(\'${propEntry.key}\', '
                        'await MultipartFile.fromFile($propName.path, '
                        'filename: _getFileName($propName.path))));'));
              } else {
                // Add regular form field - handle optional parameters
                final required = multipartContent.schema!.required
                        ?.contains(propEntry.key) ??
                    false;
                if (required) {
                  formDataCode.add(Code(
                      'formData.fields.add(MapEntry(\'${propEntry.key}\', $propName.toString()));'));
                } else {
                  formDataCode.add(Code(
                      'if ($propName != null) formData.fields.add(MapEntry(\'${propEntry.key}\', $propName.toString()));'));
                }
              }
            }

            formDataCode.add(const Code(''));
            return formDataCode;
          }
        }
        return <Code>[];
      }(),

      // Make the HTTP request
      _generateHttpCall(httpMethod, path, operation, allParameters, returnType),

      // Parse response
      if (returnType != _void) ...[
        ...() {
          final successResponse = operation.responses!.entries
              .where((e) => e.key.startsWith('2'))
              .firstOrNull;

          if (successResponse?.value?.content != null &&
              successResponse!.value!.content!.isNotEmpty) {
            final content = successResponse.value!.content!.values.first;
            if (content?.schema != null) {
              final schema = content!.schema!;

              // Handle OpenAPI 3.1.1 array type syntax: use primaryType for processing
              final effectiveType = schema.primaryType ?? schema.type;

              if (effectiveType == APIType.string) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (effectiveType == APIType.integer) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (effectiveType == APIType.number) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (effectiveType == APIType.boolean) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (effectiveType == APIType.array) {
                return [
                  declareFinal('result')
                      .assign(refer('response').property('data').asA(
                          _referType('List', generics: [refer('dynamic')])))
                      .statement,
                  declareFinal('mappedResult')
                      .assign(refer('result')
                          .property('map')([
                            Method((mb) => mb
                              ..lambda = true
                              ..requiredParameters
                                  .add(Parameter((pb) => pb..name = 'item'))
                              ..body = () {
                                // Check if returnType is a List with generic types
                                if (returnType.symbol == 'List' &&
                                    returnType is TypeReference) {
                                  final typeRef = returnType;
                                  if (typeRef.types.isNotEmpty) {
                                    final innerType = typeRef.types.first;
                                    final innerTypeName = innerType.symbol!;

                                    // Check if inner type is a DTO (contains 'Dto' or is a custom type, but not primitive)
                                    final primitiveTypes = [
                                      'String',
                                      'int',
                                      'num',
                                      'bool',
                                      'double',
                                      'dynamic'
                                    ];
                                    if (!primitiveTypes
                                        .contains(innerTypeName)) {
                                      return refer(innerTypeName)
                                          .property('fromJson')([
                                            refer('item').asA(_referType('Map',
                                                generics: [
                                                  refer('String'),
                                                  refer('dynamic')
                                                ]))
                                          ])
                                          .code;
                                    }
                                  }
                                }
                                return refer('item').code;
                              }()).closure
                          ])
                          .property('toList')([]))
                      .statement,
                  _right([refer('mappedResult')]).returned.statement,
                ];
              } else {
                // Object type - check if it's a Map type
                if (returnType.symbol?.startsWith('Map') == true) {
                  // Handle Map types - just cast response.data
                  return [
                    declareFinal('result')
                        .assign(
                            refer('response').property('data').asA(returnType))
                        .statement,
                    _right([refer('result')]).returned.statement,
                  ];
                } else {
                  // Regular DTO type
                  return [
                    declareFinal('result')
                        .assign(refer(returnType.symbol!).property('fromJson')(
                            [refer('response').property('data')]))
                        .statement,
                    _right([refer('result')]).returned.statement,
                  ];
                }
              }
            }
          }

          // Default case - just return the response data
          return [
            declareFinal('result')
                .assign(refer('response').property('data').asA(returnType))
                .statement,
            _right([refer('result')]).returned.statement,
          ];
        }(),
      ] else ...[
        const Code('return const Right(null);'),
      ],

      const Code('} catch (e, stackTrace) {'),
      _left([
        refer('_handleError')(
            [refer('e'), refer('stackTrace'), literalString(actualPath)])
      ]).returned.statement,
      const Code('}'),
    ];

    method.body = Block.of(methodBody);
    return method.build();
  }

  Code _generateHttpCall(
    String httpMethod,
    String path,
    APIOperation operation,
    List<APIParameter?> parameters,
    Reference returnType,
  ) {
    final pathParams =
        parameters.where((p) => p!.location == APIParameterLocation.path);
    var actualPath = path;

    // Replace path parameters
    for (final param in pathParams) {
      actualPath = actualPath.replaceAll(
          '{${param!.name}}', '\$${param.name!.camelCase}');
    }

    final requestArgs = <String, Expression>{};

    // Add query parameters
    final queryParams =
        parameters.where((p) => p!.location == APIParameterLocation.query);
    if (queryParams.isNotEmpty) {
      requestArgs['queryParameters'] = refer('queryParams');
    }

    // Add request body
    if (operation.requestBody != null) {
      if (_isMultipartFormData(operation.requestBody)) {
        // For multipart requests, use formData variable
        requestArgs['data'] = refer('formData');
        // Add progress callback if provided
        requestArgs['onSendProgress'] = refer('onProgress');
      } else {
        // Handle regular JSON request bodies
        final content = operation.requestBody!.content!.values.first;
        if (content?.schema != null) {
          final schema = content!.schema!;
          final isObject = schema.type == null || schema.type == APIType.object;
          if (isObject) {
            requestArgs['data'] = refer('body').property('toJson')([]);
          } else {
            requestArgs['data'] = refer('body');
          }
        }
      }
    }

    // Use '_' for void return types, 'response' for others
    final variableName = returnType == _void ? '_' : 'response';
    return declareFinal(variableName)
        .assign(refer('_dio')
            .property(httpMethod.toLowerCase())
            ([literalString(actualPath)], requestArgs)
            .awaited)
        .statement;
  }

  Method _generateHandleErrorMethod() {
    return Method((mb) => mb
      ..name = '_handleError'
      ..returns = refer('ApiError')
      ..requiredParameters.addAll([
        Parameter((pb) => pb
          ..name = 'error'
          ..type = refer('dynamic')),
        Parameter((pb) => pb
          ..name = 'stackTrace'
          ..type = refer('StackTrace')),
        Parameter((pb) => pb
          ..name = 'endpoint'
          ..type = refer('String')),
      ])
      ..body = Block.of([
        const Code('if (error is DioException) {'),
        declareFinal('response')
            .assign(refer('error').property('response'))
            .statement,
        declareFinal('statusCode')
            .assign(CodeExpression(Code('response?.statusCode ?? 0')))
            .statement,
        const Code(''),

        // Enhanced error type mapping based on status codes
        const Code('final errorType = switch (statusCode) {'),
        const Code('  401 => \'authentication_error\','),
        const Code('  403 => \'authorization_error\','),
        const Code('  404 => \'not_found_error\','),
        const Code('  408 => \'timeout_error\','),
        const Code('  422 => \'validation_error\','),
        const Code('  429 => \'rate_limit_error\','),
        const Code('  >= 500 => \'server_error\','),
        const Code('  _ => error.type.name,'),
        const Code('};'),
        const Code(''),

        // Enhanced message extraction
        const Code('String message = error.message ?? \'An error occurred\';'),
        const Code('if (response?.data case final data?) {'),
        const Code('  message = _extractErrorMessage(data) ?? message;'),
        const Code('}'),
        const Code(''),

        const Code(''),
        const Code('// Call onError callback if provided'),
        const Code('if (_onError != null) {'),
        const Code('  try {'),
        const Code(
            '    final headers = response?.headers.map ?? <String, dynamic>{};'),
        const Code('    final requestData = error.requestOptions.data;'),
        const Code('    final responseData = response?.data;'),
        const Code(
            '    _onError(error, stackTrace, endpoint, headers, requestData, responseData);'),
        const Code('  } catch (_) {'),
        const Code(
            '    // Ignore errors in callback to prevent recursive issues'),
        const Code('  }'),
        const Code('}'),
        const Code(''),
        refer('ApiError')
            .call([], {
              'message': refer('message'),
              'statusCode': refer('statusCode'),
              'type': refer('errorType'),
            })
            .returned
            .statement,
        const Code('}'),
        const Code(''),
        const Code('// Call onError callback for unknown errors'),
        const Code('if (_onError != null) {'),
        const Code('  try {'),
        const Code(
            '    _onError(error, stackTrace, endpoint, <String, dynamic>{}, null, null);'),
        const Code('  } catch (_) {'),
        const Code(
            '    // Ignore errors in callback to prevent recursive issues'),
        const Code('  }'),
        const Code('}'),
        const Code(''),
        refer('ApiError')
            .call([], {
              'message': refer('error').property('toString')([]),
              'type': literalString('unknown_error'),
            })
            .returned
            .statement,
      ]));
  }

  Method _generateExtractErrorMessageMethod() {
    return Method((mb) => mb
      ..name = '_extractErrorMessage'
      ..returns = refer('String').asNullable(true)
      ..requiredParameters.add(Parameter((pb) => pb
        ..name = 'data'
        ..type = refer('dynamic')))
      ..body = Block.of([
        const Code('if (data is Map<String, dynamic>) {'),
        const Code('  // Try common error message fields'),
        const Code('  return data[\'message\'] ?? '),
        const Code('         data[\'error\'] ?? '),
        const Code('         data[\'detail\'] ?? '),
        const Code('         data[\'error_description\'];'),
        const Code('}'),
        const Code(''),
        const Code('if (data is String) {'),
        const Code('  return data;'),
        const Code('}'),
        const Code(''),
        const Code('return null;'),
      ]));
  }

  Method _generateGetFileNameMethod() {
    return Method((mb) => mb
      ..name = '_getFileName'
      ..returns = refer('String')
      ..requiredParameters.add(Parameter((pb) => pb
        ..name = 'filePath'
        ..type = refer('String')))
      ..body = Block.of([
        const Code(
            '// Handle both forward and backward slashes for cross-platform compatibility'),
        const Code(r'final parts = filePath.replaceAll(r"\", "/").split("/");'),
        const Code('return parts.isNotEmpty ? parts.last : \'file\';'),
      ]));
  }

  String classNameForComponent(String componentName) {
    final pascalCaseName = componentName.pascalCase;
    // Avoid double "Dto" suffix
    if (pascalCaseName.endsWith('Dto')) {
      return pascalCaseName;
    }
    return '${pascalCaseName}Dto';
  }

  /// Generates operation name considering prefix filter settings
  String _generateOperationName(
      String path, String? operationId, String httpMethod) {
    String operationName;

    if (operationId != null) {
      operationName = operationId.camelCase;
    } else {
      // Filter path by prefix and optionally remove prefix from method name
      String filteredPath = path;
      if (!includeFilterPrefix && path.startsWith(prefixFilter)) {
        filteredPath = path.substring(prefixFilter.length);
        // Ensure path starts with '/' if it doesn't after prefix removal
        if (!filteredPath.startsWith('/')) {
          filteredPath = '/$filteredPath';
        }
      }

      final pathName = filteredPath.replaceAll(RegExp(r'[{}]'), '').camelCase;
      operationName = '$pathName${httpMethod.pascalCase}';
    }

    return operationName;
  }

  /// Checks if a path should be included based on prefix filter
  bool _shouldIncludePath(String path) {
    // Handle edge cases for no filtering
    if (prefixFilter.isEmpty || prefixFilter == './' || prefixFilter == '/') {
      return true;
    }
    return path.startsWith(prefixFilter);
  }

  /// Checks if a request body has multipart/form-data content type
  bool _isMultipartFormData(APIRequestBody? requestBody) {
    if (requestBody?.content == null) return false;
    return requestBody!.content!.keys.any((contentType) =>
        contentType.toLowerCase().contains('multipart/form-data'));
  }

  /// Gets the multipart/form-data content from request body
  APIMediaType? _getMultipartContent(APIRequestBody? requestBody) {
    if (requestBody?.content == null) return null;
    final multipartKey = requestBody!.content!.keys.firstWhere(
      (contentType) =>
          contentType.toLowerCase().contains('multipart/form-data'),
      orElse: () => '',
    );
    return multipartKey.isNotEmpty ? requestBody.content![multipartKey] : null;
  }

  String? _componentNameFromReferenceUri(Uri? referenceUri) {
    if (referenceUri == null) {
      return null;
    }
    final segments = referenceUri.pathSegments;
    if (segments[0] == 'components' && segments[1] == 'schemas') {
      final name = classNameForComponent(segments[2]);
      return name;
    }
    return null;
  }

  Reference _schemaReference(String key, APISchemaObject schemaObject) {
    _logger.finer('Looking up ${schemaObject.referenceURI}');
    final uri = schemaObject.referenceURI;
    final componentName =
        _componentNameFromReferenceUri(uri) ?? classNameForComponent(key);

    if (createdSchema[schemaObject] case final ref?) {
      _logger.finest('Found already created for this schema reference.');
      return ref;
    }

    final found = createdSchema.values
        .firstWhereOrNull((element) => element.symbol == componentName);
    if (found != null) {
      _logger.finest('We found it.');
      return found;
    }
    final reference = refer(componentName);
    createdSchema[schemaObject] = reference;

    _logger.finer(
        'Creating schema class. for ${schemaObject.referenceURI} / $key');
    if (schemaObject.enumerated?.isNotEmpty == true) {
      final e = _createEnum(componentName, schemaObject.enumerated!);
      return e;
    }
    final c = _createFreezedSchemaClass(componentName, schemaObject);
    lb.body.add(c);

    return reference;
  }

  Class _createFreezedSchemaClass(String className, APISchemaObject obj) {
    final properties = obj.properties ?? {};
    final required = obj.required ?? [];

    return Class((cb) {
      cb
        ..name = className
        ..sealed = true
        ..annotations.add(_freezed)
        ..mixins.add(refer('_\$$className'))
        ..docs.addDartDoc(obj.description);

      // Add factory constructor
      final constructor = Constructor((ccb) => ccb
        ..factory = true
        ..optionalParameters.addAll(properties.entries.map((entry) {
          final fieldName = entry.key.camelCase;
          // Use the schema's reference name if it exists, otherwise use parent context
          final parentContext = entry.value!.referenceURI != null
              ? entry.key.pascalCase
              : '$className${entry.key.pascalCase}';
          final fieldType = toDartType(parentContext, entry.value!);
          final hasDefaultValue = entry.value!.defaultValue != null;
          final isRequired = required.contains(entry.key);

          return Parameter((pb) {
            pb
              ..name = fieldName
              ..type = fieldType.asNullable(!isRequired && !hasDefaultValue)
              ..asRequired(this, isRequired)
              ..named = true;

            // Add JsonKey annotation
            pb.annotations.add(jsonKey([], {
              'name': literalString(entry.key),
            }));

            // Add @Default annotation if needed
            if (hasDefaultValue && !isRequired) {
              pb.annotations.add(refer('Default',
                      'package:freezed_annotation/freezed_annotation.dart')
                  .call([literal(entry.value!.defaultValue)]));
            }

            // Add ApiUuid converter if needed
            if (fieldType == _apiUuid) {
              pb.annotations.add(_apiUuidJsonConverter([]));
            }
          });
        }))
        ..redirect = refer('_$className'));

      cb.constructors.add(constructor);

      // Add fromJson factory constructor
      cb.constructors.add(Constructor((ccb) => ccb
        ..factory = true
        ..name = 'fromJson'
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = 'json'
          ..type =
              _referType('Map', generics: [refer('String'), refer('dynamic')])))
        ..lambda = true
        ..body = refer('_\$${className}FromJson')([refer('json')]).code));
    });
  }

  Reference _createEnum(String name, List<dynamic>? values) {
    return createdEnums.putIfAbsent(name, () {
      lb.body.add(EnumSpec(
        name: name,
        values: values!
            .map(
              (dynamic e) => EnumValueSpec(
                annotations: [
                  jsonValue([literalString(e.toString())])
                ],
                name: e.toString().camelCase,
                originalValue: e.toString(),
              ),
            )
            .toList(),
      ));
      return refer(name);
    });
  }

  Reference toDartType(String parent, APISchemaObject schema) {
    // Handle OpenAPI 3.1.1 array type syntax: use primaryType for processing
    final effectiveType = schema.primaryType ?? APIType.object;

    switch (effectiveType) {
      case APIType.string:
        if (schema.enumerated != null && schema.enumerated!.isNotEmpty) {
          return _schemaReference(parent, schema);
        }
        if (schema.format == 'date-time') {
          return _typeDateTime;
        }
        if (schema.format == 'uuid') {
          return _typeString;
        }
        if (schema.format == 'binary') {
          return _uint8List;
        }
        return _typeString;
      case APIType.number:
        return refer('num');
      case APIType.integer:
        return refer('int');
      case APIType.boolean:
        return refer('bool');
      case APIType.array:
        final type = toDartType(parent, schema.items!);
        return _referType('List', generics: [type]);
      case APIType.object:
        // Handle object type with additionalProperties but no properties
        if ((schema.properties?.isEmpty ?? true) &&
            schema.additionalPropertySchema != null) {
          // This is a map-like object with additionalProperties
          final valueType =
              toDartType('${parent}Value', schema.additionalPropertySchema!);
          return _referType('Map', generics: [_typeString, valueType]);
        } else if ((schema.properties?.isEmpty ?? true) &&
            schema.additionalPropertyPolicy ==
                APISchemaAdditionalPropertyPolicy.freeForm) {
          // This is a free-form object (Map<String, dynamic>)
          return _referType('Map', generics: [_typeString, refer('dynamic')]);
        } else if (!shouldGenerateDto(schema) && schema.referenceURI == null) {
          // This is an empty object schema (like items: {}) - use dynamic
          return refer('dynamic');
        } else {
          // This is a regular object schema that should have a DTO
          return _schemaReference(parent, schema);
        }
    }
  }
}

class EnumSpec extends Spec {
  EnumSpec({this.name, this.values});

  final String? name;
  final List<EnumValueSpec>? values;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) {
    assert(context is StringSink);
    final ctx = context as StringSink;
    ctx.write('enum $name {');
    for (final value in values!) {
      visitor.visitSpec(value, context);
      ctx.write(',');
    }
    ctx.writeln('}');
    ctx.write('extension ${name}Ext on $name {');
    ctx.write('static final Map<String, $name> _names = ');
    visitor.visitSpec(
        literalMap(Map.fromEntries(values!.map((e) => MapEntry(
            literalString(e.originalValue!), refer(name!).property(e.name!))))),
        context);
    ctx.write(';');
    ctx.write('static $name fromName(String name) => _names[name] ??'
        ' _throwStateError(\'Invalid enum name: \$name for $name\');');
    ctx.write('String get name => toString().substring(${name!.length + 1});');
    ctx.writeln('}');
    return context;
  }
}

class EnumValueSpec extends Spec {
  EnumValueSpec({this.annotations, this.name, this.originalValue});

  final List<Expression?>? annotations;
  final String? name;
  final String? originalValue;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) {
    assert(context is StringSink);
    final ctx = context as StringSink;
    for (final annotation in annotations!) {
      visitor.visitAnnotation(annotation!, context);
    }
    ctx.write(name);
    return context;
  }
}

class OpenApiServiceBuilderUtils {
  static bool _isValidYamlContent(String content) {
    // Check if content starts with JSON object/array markers
    final trimmed = content.trim();
    if (trimmed.startsWith('{') || trimmed.startsWith('[')) {
      return false;
    }

    // Additional YAML-specific patterns
    if (trimmed.contains('---') || // YAML document separator
        RegExp(r'^\s*\w+:\s*').hasMatch(trimmed) || // Key-value pairs at start
        RegExp(r'^\s*-\s+').hasMatch(trimmed)) {
      // Array items at start
      return true;
    }

    // If it doesn't look like JSON and doesn't have obvious YAML markers,
    // let the YAML parser determine if it's valid
    return true;
  }

  static bool _isValidJsonContent(String content) {
    final trimmed = content.trim();
    return trimmed.startsWith('{') || trimmed.startsWith('[');
  }

  static Map<String, dynamic>? _loadYaml(String source) {
    final dynamic tmp = loadYaml(source) as dynamic;
    // return json.decode(json.encode(tmp)) as Map<String, dynamic>?;
    try {
      final encoded = json.encode(tmp, toEncodable: (dynamic obj) {
        if (obj is YamlMap) {
          return obj.value.map<String, dynamic>((dynamic key, dynamic value) {
            final String k;
            if (key is String) {
              k = key;
            } else if (key is num) {
              k = key.toString();
            } else {
              throw JsonUnsupportedObjectError(
                  'Key for map must be String (or number). Got: $key (${key.runtimeType})');
            }
            return MapEntry<String, dynamic>(k, value);
          });
          // for (final key in obj.value.keys) {
          //   if (key is! String) {
          //     _logger.severe(
          //         'YamlMap contains key which is not a string?! $key (${key.runtimeType})');
          //   }
          // }
          // return obj.value;
        }
        return obj.toJson();
      });
      return json.decode(encoded) as Map<String, dynamic>?;
    } on JsonUnsupportedObjectError catch (e, stackTrace) {
      _logger.severe('Error converting yaml tree to map objects.', e.cause ?? e,
          stackTrace);
      rethrow;
    }
  }

  static APIDocument loadApiFromYaml(String yamlSource, {String? filePath}) {
    // Validate content format matches file extension
    if (filePath != null) {
      if (filePath.endsWith('.yaml') || filePath.endsWith('.yml')) {
        if (!_isValidYamlContent(yamlSource)) {
          throw ArgumentError(
              'File $filePath has YAML extension but contains JSON content. '
              'YAML files should contain YAML formatted content.');
        }
      } else if (filePath.endsWith('.json')) {
        if (!_isValidJsonContent(yamlSource)) {
          throw ArgumentError(
              'File $filePath has JSON extension but does not contain valid JSON content. '
              'JSON files should start with { or [.');
        }
      }
    }

    final decoded = _loadYaml(yamlSource)!;
    final api = APIDocument.fromMap(
        Map<String, dynamic>.from(decoded.cast<String, dynamic>()));
    return api;
  }

  static String formatLibrary(Library library) {
    final emitter = DartEmitter(
      allocator: CustomAllocator(),
      orderDirectives: true,
      useNullSafetySyntax: true,
    );
    final libraryOutput = DartFormatter(
      languageVersion: Version(3, 2, 0),
    ).format('// GENERATED CODE - DO NOT MODIFY BY HAND\n\n\n'
        '// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target\n\n'
        '${library.accept(emitter)}\n\n'
        'T _throwStateError<T>(String message) => throw StateError(message);\n\n');
    return libraryOutput;
  }
}

class OpenApiServiceBuilder extends Builder {
  OpenApiServiceBuilder({
    this.prefixFilter = '',
    this.includeFilterPrefix = true,
  });

  final String prefixFilter;
  final bool includeFilterPrefix;

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    try {
      final inputId = buildStep.inputId;
      final source = await buildStep.readAsString(inputId);
      final fileName = inputId.pathSegments.last;

      // Support both .openapi.yaml and .openapi.json files
      String inputIdBasename;
      if (fileName.endsWith('.openapi.yaml')) {
        inputIdBasename = fileName.replaceAll('.openapi.yaml', '');
      } else if (fileName.endsWith('.openapi.json')) {
        inputIdBasename = fileName.replaceAll('.openapi.json', '');
      } else {
        throw ArgumentError(
            'Input file must have .openapi.yaml or .openapi.json extension');
      }

      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(source,
          filePath: inputId.path);

      // Safe access to extensions with null checks
      final extensions = api.info?.extensions;
      final dartName =
          extensions != null ? extensions['x-dart-name'] as String? : null;
      final baseName = dartName ?? inputIdBasename.pascalCase;

      // Create separate generators for DTOs and Service with correct part file names
      final dtosGenerator = OpenApiLibraryGenerator(
        api,
        baseName: baseName,
        partFileName: inputId.changeExtension('.dtos.g.dart').pathSegments.last,
        prefixFilter: prefixFilter,
        includeFilterPrefix: includeFilterPrefix,
      );

      final serviceGenerator = OpenApiLibraryGenerator(
        api,
        baseName: baseName,
        partFileName:
            inputId.changeExtension('.service.g.dart').pathSegments.last,
        prefixFilter: prefixFilter,
        includeFilterPrefix: includeFilterPrefix,
      );

      // Generate DTOs library
      final dtosLibrary = dtosGenerator.generateDtosLibrary();
      final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
        dtosLibrary,
      );
      final dtosOutputId = inputId.changeExtension('.dtos.dart');
      await buildStep.writeAsString(dtosOutputId, dtosOutput);

      // Generate Service library
      final serviceLibrary =
          serviceGenerator.generateServiceLibrary(inputIdBasename);
      final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
        serviceLibrary,
      );
      final serviceOutputId = inputId.changeExtension('.service.dart');
      await buildStep.writeAsString(serviceOutputId, serviceOutput);

      // Don't generate the combined .openapi.dart file when splitting
    } catch (e, stackTrace) {
      _logger.severe('Error building OpenAPI code: $e', e, stackTrace);
      rethrow;
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart'],
        '.openapi.json': ['.openapi.dtos.dart', '.openapi.service.dart']
      };
}

TypeReference _referType(
  String name, {
  String? url,
  List<Reference>? generics,
  bool? isNullable,
}) =>
    TypeReference((trb) => trb
      ..symbol = name
      ..url = url
      ..isNullable = isNullable
      ..types.addAll(generics ?? []));

extension on Reference {
  Reference addGenerics(Reference type) {
    final baseTypes =
        this is TypeReference ? (this as TypeReference).types : null;
    return TypeReference((trb) => trb
      ..symbol = symbol
      ..url = url
      ..types.addAll([...?baseTypes, type]));
  }

  Reference asNullable(bool isNullable) {
    if (!isNullable) {
      return this;
    }
    return ((type as TypeReference).toBuilder()..isNullable = true).build();
  }
}

extension on ListBuilder<String> {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) {
    if (helpText != null) {
      if (prefix == null) {
        add('/// $helpText');
      } else {
        add('/// $prefix $helpText');
      }
    }
  }
}

extension on ParameterBuilder {
  void asRequired(OpenApiLibraryGenerator generator, [bool isRequired = true]) {
    required = isRequired;
  }
}

extension DynamicExt<T> on dynamic {
  R let<R>(R Function(dynamic that) op) => op(this);
}

extension ObjectExt<T> on T {
  T? takeIf(bool Function(T that) predicate) => predicate(this) ? this : null;

  R let<R>(R Function(T that) op) => op(this);
}

Block ifStatement(
  Expression conditional,
  Code body, {
  Code? elseCode,
}) =>
    Block.of([
      const Code('if ('),
      conditional.code,
      const Code(') {'),
      body,
      if (elseCode != null) ...[
        const Code('} else {'),
        elseCode,
      ],
      const Code('}'),
    ]);
