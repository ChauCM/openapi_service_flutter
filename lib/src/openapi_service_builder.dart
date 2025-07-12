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
import 'package:open_api_forked/v3.dart';
import 'package:openapi_service_flutter/src/custom_allocator.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:quiver/check.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

final _logger = Logger('openapi_service_flutter');

class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(
    this.api, {
    required this.baseName,
    required this.partFileName,
    this.freezedPartFileName = '',
    this.apiMethodsWithRequest = false,
  });

  final APIDocument api;

  /// base name for this API. Should be in `PascalCase`
  final String baseName;
  final String freezedPartFileName;
  final String partFileName;
  final bool apiMethodsWithRequest;

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
    // Add freezed part file
    lb.body.insert(1, Directive.part(freezedPartFileName));

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
    dtosLb.body.add(Directive.part(freezedPartFileName));
    dtosLb.body.add(Directive.part(partFileName));

    // Add API Error model
    dtosLb.body.add(_generateApiErrorModel());

    // Track which schemas are actually used by endpoints
    final usedSchemas = <String>{};

    // First pass: collect all schema references from endpoints
    if (api.paths != null) {
      for (final path in api.paths!.entries) {
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
        for (final operation in path.value!.operations.entries) {
          final pathName = path.key.replaceAll(RegExp(r'[{}]'), '').camelCase;
          final operationName = operation.value!.id?.camelCase ??
              '$pathName${operation.key.pascalCase}';

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
          final body = operation.value!.requestBody;
          if (body != null && body.content!.isNotEmpty) {
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
    // Don't generate DTOs for simple types (string, number, boolean, etc.)
    if (schema.type != null && schema.type != APIType.object) {
      return false;
    }

    // Don't generate DTOs for empty objects without properties or composition
    if (schema.type == APIType.object &&
        (schema.properties?.isEmpty ?? true) &&
        (schema.allOf?.isEmpty ?? true) &&
        (schema.oneOf?.isEmpty ?? true) &&
        (schema.anyOf?.isEmpty ?? true)) {
      return false;
    }

    // Generate DTOs for objects with properties or composition
    return schema.type == APIType.object ||
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
    final serviceClass = ClassBuilder()..name = '${baseName}Service';

    // Add static baseUrl constant
    serviceClass.fields.add(Field((fb) => fb
      ..name = 'baseUrl'
      ..type = refer('String')
      ..static = true
      ..modifier = FieldModifier.constant
      ..assignment = literalString('https://api.example.com').code));

    // Constructor with Dio
    serviceClass.constructors.add(Constructor((cb) => cb
      ..requiredParameters.add(Parameter((pb) => pb
        ..name = '_dio'
        ..toThis = true))
      ..body = Block.of([
        refer('_dio')
            .property('options')
            .property('baseUrl')
            .assign(refer('baseUrl'))
            .statement,
        refer('_dio')
            .property('options')
            .property('connectTimeout')
            .assign(refer('Duration')([], {'seconds': literalNum(10)}))
            .statement,
        refer('_dio')
            .property('options')
            .property('receiveTimeout')
            .assign(refer('Duration')([], {'seconds': literalNum(10)}))
            .statement,
      ])));

    // Add _dio field
    serviceClass.fields.add(Field((fb) => fb
      ..name = '_dio'
      ..type = _dio
      ..modifier = FieldModifier.final$));

    // Generate service methods for each API operation
    if (api.paths != null) {
      for (final path in api.paths!.entries) {
        for (final operation in path.value!.operations.entries) {
          final pathName = path.key.replaceAll(RegExp(r'[{}]'), '').camelCase;
          final operationName = operation.value!.id?.camelCase ??
              '$pathName${operation.key.pascalCase}';

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
                successResponseType = toDartType('${operationName}Response', schema);
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

    // Add error handling method
    serviceClass.methods.add(_generateHandleErrorMethod());

    targetLb.body.add(serviceClass.build());
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

    // Generate method body
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

              if (schema.type == APIType.string) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (schema.type == APIType.integer) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (schema.type == APIType.number) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (schema.type == APIType.boolean) {
                return [
                  declareFinal('result')
                      .assign(
                          refer('response').property('data').asA(returnType))
                      .statement,
                  _right([refer('result')]).returned.statement,
                ];
              } else if (schema.type == APIType.array) {
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
                              ..body = returnType.symbol!.startsWith('List<')
                                  ? refer(returnType.symbol!.substring(
                                          5, returnType.symbol!.length - 1))
                                      .property('fromJson')([
                                        refer('item').asA(_referType('Map',
                                            generics: [
                                              refer('String'),
                                              refer('dynamic')
                                            ]))
                                      ])
                                      .code
                                  : refer('item').code).closure
                          ])
                          .property('toList')([]))
                      .statement,
                  _right([refer('mappedResult').asA(returnType)])
                      .returned
                      .statement,
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

      const Code('} catch (e) {'),
      _left([
        refer('_handleError')([refer('e')])
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
      ..requiredParameters.add(Parameter((pb) => pb
        ..name = 'error'
        ..type = refer('dynamic')))
      ..body = Block.of([
        const Code('if (error is DioException) {'),
        declareFinal('response')
            .assign(refer('error').property('response'))
            .statement,
        declareFinal('statusCode')
            .assign(refer('response').nullSafeProperty('statusCode'))
            .statement,
        const Code(''),
        declareVar('message')
            .assign(literalString('An error occurred'))
            .statement,
        const Code('if (response?.data case final data?) {'),
        const Code('try {'),
        const Code('if (data is Map<String, dynamic>) {'),
        refer('message')
            .assign(refer('data').index(literalString('message')))
            .statement,
        const Code('}'),
        const Code('} catch (_) {}'),
        const Code('}'),
        const Code(''),
        const Code('message = error.message ?? \'An error occurred\';'),
        refer('ApiError')
            .call([], {
              'message': refer('message'),
              'statusCode': refer('statusCode'),
              'type': refer('error').property('type').property('name'),
            })
            .returned
            .statement,
        const Code('}'),
        const Code(''),
        refer('ApiError')
            .call([], {
              'message': refer('error').property('toString')([]),
              'type': literalString('parse_error'),
            })
            .returned
            .statement,
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
    switch (schema.type ?? APIType.object) {
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
    // throw StateError(
    //     'Invalid type ${schema.type} - $schema - ${schema.referenceURI}');
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
        literalMap(Map.fromEntries(values!.map((e) =>
            MapEntry(literalString(e.originalValue!), refer(name!).property(e.name!))))),
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

  static APIDocument loadApiFromYaml(String yamlSource) {
    final decoded = _loadYaml(yamlSource)!;
    final api = APIDocument.fromMap(
        Map<String, dynamic>.from(decoded.cast<String, dynamic>()));
    return api;
  }

  static String formatLibrary(Library library, {bool orderDirectives = false}) {
    final emitter = DartEmitter(
      allocator: CustomAllocator(),
      orderDirectives: orderDirectives,
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
    this.orderDirectives = false,
    this.generateProvider = false,
  });

  final bool generateProvider;
  final bool orderDirectives;

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    try {
      final inputId = buildStep.inputId;
      final source = await buildStep.readAsString(inputId);
      checkArgument(inputId.pathSegments.last.endsWith('.openapi.yaml'));
      final inputIdBasename =
          inputId.pathSegments.last.replaceAll('.openapi.yaml', '');
      OpenApiServiceBuilderUtils.loadApiFromYaml(source);
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(source);

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
        freezedPartFileName:
            inputId.changeExtension('.dtos.freezed.dart').pathSegments.last,
      );

      final serviceGenerator = OpenApiLibraryGenerator(
        api,
        baseName: baseName,
        partFileName:
            inputId.changeExtension('.service.g.dart').pathSegments.last,
        freezedPartFileName:
            inputId.changeExtension('.service.freezed.dart').pathSegments.last,
      );

      // Generate DTOs library
      final dtosLibrary = dtosGenerator.generateDtosLibrary();
      final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
        dtosLibrary,
        orderDirectives: true,
      );
      final dtosOutputId = inputId.changeExtension('.dtos.dart');
      await buildStep.writeAsString(dtosOutputId, dtosOutput);

      // Generate Service library
      final serviceLibrary =
          serviceGenerator.generateServiceLibrary(inputIdBasename);
      final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
        serviceLibrary,
        orderDirectives: true,
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
        '.openapi.yaml': ['.openapi.dtos.dart', '.openapi.service.dart']
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
