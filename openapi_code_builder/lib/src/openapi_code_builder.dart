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
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder/src/custom_allocator.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:quiver/check.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

final _logger = Logger('openapi_code_builder');

/// Interface for schema analysis operations
abstract class SchemaAnalyzer {
  Set<String> collectUsedSchemas(APIDocument api);
  bool shouldGenerateDto(APISchemaObject schema);
}

/// Interface for DTO generation operations
abstract class DtoGenerator {
  Library generateDtosLibrary(APIDocument api, SchemaAnalyzer analyzer);
  Class generateApiErrorModel();
  void generateSchemaIntoLibrary(
      LibraryBuilder targetLb, String key, APISchemaObject schemaObject);
}

/// Interface for service generation operations
abstract class ServiceGenerator {
  Library generateServiceLibrary(APIDocument api, String inputIdBasename);
  void generateServiceClassToLibrary(LibraryBuilder targetLb, APIDocument api);
}

/// Interface for legacy generation operations
abstract class LegacyGenerator {
  Library generateLegacyStyle(APIDocument api, void Function() requireFreezed);
}

/// Main OpenAPI Library Generator with improved separation of concerns
class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(
    this.api, {
    required this.baseName,
    required this.partFileName,
    this.freezedPartFileName = '',
    this.useNullSafetySyntax = false,
    this.apiMethodsWithRequest = false,
    this.generateProvider = false,
    this.providerNamePrefix = '',
    this.ignoreSecuritySchemes = false,
    this.generateServiceClasses = false,
    SchemaAnalyzer? schemaAnalyzer,
    DtoGenerator? dtoGenerator,
    ServiceGenerator? serviceGenerator,
    LegacyGenerator? legacyGenerator,
  }) : _schemaAnalyzer = schemaAnalyzer ?? DefaultSchemaAnalyzer(),
       _dtoGenerator = dtoGenerator ?? DefaultDtoGenerator(baseName, freezedPartFileName, partFileName),
       _serviceGenerator = serviceGenerator ?? DefaultServiceGenerator(baseName),
       _legacyGenerator = legacyGenerator ?? DefaultLegacyGenerator(baseName, freezedPartFileName, partFileName, useNullSafetySyntax, apiMethodsWithRequest, generateProvider, providerNamePrefix, ignoreSecuritySchemes);

  final APIDocument api;

  /// base name for this API. Should be in `PascalCase`
  final String baseName;
  final String freezedPartFileName;
  final String partFileName;
  final bool useNullSafetySyntax;
  final bool apiMethodsWithRequest;
  final bool generateProvider;
  final String providerNamePrefix;
  final bool ignoreSecuritySchemes;
  final bool generateServiceClasses;

  // Injected dependencies for testability
  final SchemaAnalyzer _schemaAnalyzer;
  final DtoGenerator _dtoGenerator;
  final ServiceGenerator _serviceGenerator;
  final LegacyGenerator _legacyGenerator;

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
  final _either = refer('Either', 'package:dartz/dartz.dart');
  final _left = refer('Left', 'package:dartz/dartz.dart');
  final _right = refer('Right', 'package:dartz/dartz.dart');
  final _required = refer('required', 'package:meta/meta.dart');
  final _override = refer('override');
  final _void = refer('void');
  final _uint8List = refer('Uint8List', 'dart:typed_data');
  final _typeString = refer('String');
  final _typeDouble = refer('double');
  final _typeInteger = refer('int');
  final _typeDateTime = refer('DateTime');
  final _literalNullCode = literalNull.code;

  static const mediaTypeJson = OpenApiContentType.json;

  final createdSchema = <APISchemaObject, Reference>{};
  final createdEnums = <String, Reference>{};
  final securitySchemes = <String, Expression>{};

  final lb = LibraryBuilder();
  final securitySchemesClass = ClassBuilder()..name = 'SecuritySchemes';

  Library generate() {
    if (generateServiceClasses) {
      return _generateServiceStyle();
    } else {
      var myRequireFreezed = false;
      void requireFreezed() {
        if (myRequireFreezed) {
          return;
        }
        if (freezedPartFileName.isEmpty) {
          throw StateError(
              'freeze is required, but no freezedPartFileName was given.');
        }
        myRequireFreezed = true;
      }
      return _legacyGenerator.generateLegacyStyle(api, requireFreezed);
    }
  }

  Library _generateServiceStyle() {
    return _dtoGenerator.generateDtosLibrary(api, _schemaAnalyzer);
  }

  Library _generateDtosLibrary() {
    final dtosLb = LibraryBuilder();

    // Add both part directives for Freezed and JSON serialization
    dtosLb.body.add(Directive.part(freezedPartFileName));
    dtosLb.body.add(Directive.part(partFileName));

    // Add API Error model
    dtosLb.body.add(_generateApiErrorModel());

    // Track which schemas are actually used by endpoints
    final usedSchemas = <String>{};
    
    // First pass: collect all schema references from endpoints
    for (final path in api.paths!.entries) {
      for (final operation in path.value!.operations.entries) {
        // Check response schemas
        for (final response in operation.value!.responses!.entries) {
          if (response.value?.content != null) {
            for (final content in response.value!.content!.values) {
              if (content?.schema != null) {
                _collectSchemaReferences(content!.schema!, usedSchemas);
              }
            }
          }
        }
        
        // Check request body schemas
        final body = operation.value!.requestBody;
        if (body?.content != null) {
          for (final content in body!.content!.values) {
            if (content?.schema != null) {
              _collectSchemaReferences(content!.schema!, usedSchemas);
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
            _collectSchemaReferences(param!.schema!, usedSchemas);
          }
        }
      }
    }
    
    // Generate DTOs only for used schemas (either used directly by endpoints or enums)
    for (final schemaEntry in api.components!.schemas!.entries) {
      final schema = schemaEntry.value!;
      final isUsed = usedSchemas.contains(schemaEntry.key);
      final isEnum = schema.enumerated?.isNotEmpty == true;
      final shouldGenerate = _shouldGenerateDto(schema);
      
      // Generate if: (used by endpoints OR is an enum) AND should generate DTO
      if ((isUsed || isEnum) && shouldGenerate) {
        _generateSchemaIntoLibrary(dtosLb, schemaEntry.key, schema);
      }
    }

    // Generate DTOs from API operations (responses, parameters, and request bodies)
    for (final path in api.paths!.entries) {
      for (final operation in path.value!.operations.entries) {
        final pathName = path.key.replaceAll(RegExp(r'[{}]'), '').camelCase;
        final operationName = operation.value!.id?.camelCase ??
            '$pathName${operation.key.pascalCase}';

        // Generate response DTOs (only for non-trivial schemas)
        final successResponse = operation.value!.responses!.entries.firstWhere(
            (e) => e.key.startsWith('2'),
            orElse: () => MapEntry(
                '200', operation.value!.responses!.entries.first.value));

        if (successResponse.value?.content != null &&
            successResponse.value!.content!.isNotEmpty) {
          final content = successResponse.value!.content!.values.first;
          if (content?.schema != null) {
            final schema = content!.schema!;
            // Only generate response DTOs for complex schemas with actual properties
            if (_shouldGenerateDto(schema)) {
              final responseTypeName = '${operationName}Response';
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

        // Generate request body DTOs (only for non-trivial schemas)
        final body = operation.value!.requestBody;
        if (body != null && body.content!.isNotEmpty) {
          final content = body.content!.values.first;
          if (content?.schema != null) {
            final schema = content!.schema!;
            // Only generate request DTOs for complex schemas with actual properties
            if (_shouldGenerateDto(schema)) {
              final requestTypeName = '${operationName}Request';
              _generateSchemaIntoLibrary(dtosLb, requestTypeName, schema);
            }
          }
        }
      }
    }

    return dtosLb.build();
  }

  void _collectSchemaReferences(APISchemaObject schema, Set<String> usedSchemas) {
    // Add reference if this schema points to a component
    final uri = schema.referenceURI;
    if (uri != null) {
      final segments = uri.pathSegments;
      if (segments.length >= 3 && segments[0] == 'components' && segments[1] == 'schemas') {
        usedSchemas.add(segments[2]);
      }
    }
    
    // Recursively check nested schemas
    if (schema.properties != null) {
      for (final prop in schema.properties!.values) {
        _collectSchemaReferences(prop!, usedSchemas);
      }
    }
    
    if (schema.items != null) {
      _collectSchemaReferences(schema.items!, usedSchemas);
    }
    
    if (schema.allOf != null) {
      for (final subSchema in schema.allOf!) {
        _collectSchemaReferences(subSchema!, usedSchemas);
      }
    }
    
    if (schema.oneOf != null) {
      for (final subSchema in schema.oneOf!) {
        _collectSchemaReferences(subSchema!, usedSchemas);
      }
    }
    
    if (schema.anyOf != null) {
      for (final subSchema in schema.anyOf!) {
        _collectSchemaReferences(subSchema!, usedSchemas);
      }
    }
    
    if (schema.additionalPropertySchema != null) {
      _collectSchemaReferences(schema.additionalPropertySchema!, usedSchemas);
    }
  }

  bool _shouldGenerateDto(APISchemaObject schema) {
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
    final componentName = _classNameForComponent(key);

    // Handle enums
    if (schemaObject.enumerated?.isNotEmpty == true) {
      final enumSpec = EnumSpec(
        name: componentName,
        values: schemaObject.enumerated!
            .map((dynamic e) => EnumValueSpec(
                  annotations: [
                    jsonValue([literalString(e.toString())])
                  ],
                  name: e.toString(),
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

      // Check for inline enums in properties and generate them
      if (schemaObject.properties != null) {
        for (final propEntry in schemaObject.properties!.entries) {
          final propSchema = propEntry.value!;
          if (propSchema.enumerated != null &&
              propSchema.enumerated!.isNotEmpty) {
            final enumName = '${componentName}${propEntry.key.pascalCase}Dto';
            final enumSpec = EnumSpec(
              name: enumName,
              values: propSchema.enumerated!
                  .map((dynamic e) => EnumValueSpec(
                        annotations: [
                          jsonValue([literalString(e.toString())])
                        ],
                        name: e.toString(),
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

  Library _generateServiceLibrary(String inputIdBasename) {
    final serviceLb = LibraryBuilder();

    // Add import for DTOs first
    final dtosFileName = '${inputIdBasename}.openapi.dtos.dart';
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
    for (final path in api.paths!.entries) {
      for (final operation in path.value!.operations.entries) {
        final pathName = path.key.replaceAll(RegExp(r'[{}]'), '').camelCase;
        final operationName = operation.value!.id?.camelCase ??
            '$pathName${operation.key.pascalCase}';

        // Determine response DTO type
        Reference? successResponseType;
        final successResponse = operation.value!.responses!.entries.firstWhere(
            (e) => e.key.startsWith('2'),
            orElse: () => MapEntry(
                '200', operation.value!.responses!.entries.first.value));

        if (successResponse.value?.content != null &&
            successResponse.value!.content!.isNotEmpty) {
          final content = successResponse.value!.content!.values.first;
          if (content?.schema != null) {
            final schema = content!.schema!;
            // Only use specific DTO type if we generated one for this schema
            if (_shouldGenerateDto(schema)) {
              successResponseType = refer('${operationName.pascalCase}ResponseDto');
            } else {
              successResponseType = _toDartType('${operationName}Response', schema);
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

    // Add error handling method
    serviceClass.methods.add(_generateHandleErrorMethod());

    targetLb.body.add(serviceClass.build());
  }

  Library _generateLegacyStyle(void Function() requireFreezed) {
    // create class for each schema..
    for (final schemaEntry in api.components!.schemas!.entries) {
      _schemaReference(schemaEntry.key, schemaEntry.value!);
    }
    if (api.components!.securitySchemes != null && !ignoreSecuritySchemes) {
      for (final securityScheme in api.components!.securitySchemes!.entries) {
        _securitySchemeReference(securityScheme.key, securityScheme.value!);
      }
    }

    // Create client interface
    final clientInterface = ClassBuilder()
      ..name = '${baseName}Client'
      ..implements.add(_openApiClient)
      ..abstract = true;
    final fields = [
      MapEntry('baseUri', refer('Uri')),
      MapEntry('requestSender', _openApiRequestSender),
    ];
    final providerClosure = Method((mb) => mb
      ..lambda = true
      ..requiredParameters.add(Parameter((pb) => pb..name = 'ref'))
      ..body = refer('StateError')([literalString('must be overwritten')])
          .thrown
          .code).closure;
    final clientProviderName = '${baseName}ClientProvider'.camelCase;
    if (generateProvider) {
      lb.body.add(declareFinal(clientProviderName)
          .assign(_provider.addGenerics(
              refer(clientInterface.name!.pascalCase))([providerClosure]))
          .statement);
    }

    final urlResolveClass = ClassBuilder()
      ..name = '${baseName}UrlResolve'
      ..mixins.add(_openApiUrlEncodeMixin);
    final clientClass = ClassBuilder()
      ..name = '_${baseName}ClientImpl'
      ..extend = _openApiClientBase
      ..implements.add(refer(clientInterface.name!))
      ..constructors.add(Constructor(
        (cb) => cb
          ..name = '_'
          ..requiredParameters.addAll(fields.map((f) => Parameter((pb) => pb
            ..name = f.key
            ..toThis = true))),
      ))
      ..fields.addAll(fields.map((f) => Field((fb) => fb
        ..name = f.key
        ..type = f.value
        ..annotations.add(_override)
        ..modifier = FieldModifier.final$)));
    clientInterface.constructors.add(Constructor((cb) => cb
      ..factory = true
      ..requiredParameters.addAll(fields.map((f) => Parameter((pb) => pb
        ..name = f.key
        ..type = f.value)))
      ..body = refer(clientClass.name!)
          .newInstanceNamed('_', fields.map((f) => refer(f.key)))
          .code));
    // Generate client methods only - no server implementation needed
    final c = Class((cb) {
      cb.name = baseName;
      cb.abstract = true;
      // Client-only implementation - no server interface needed

      for (final path in api.paths!.entries) {
        for (final operation in path.value!.operations.entries) {
          final pathName = path.key
              .replaceAll(
                  // language=RegExp
                  RegExp(r'[{}]'),
                  '')
              .camelCase;
          final operationName = operation.value!.id == null
              ? '$pathName'
                  '${operation.key.pascalCase}'
              : operation.value!.id!.camelCase;

          final responseClass = ClassBuilder();
          responseClass
            ..name = '${operationName.pascalCase}Response'
            ..sealed = true
            ..extend = _openApiResponse
            ..constructors.add(Constructor());
//            ..constructors.add(Constructor((cb) => cb
//              ..name = '_'
//              ..requiredParameters.add(Parameter((pb) => pb
//                ..name = 'status'
//                ..toThis = true))))
          final mapMethod = MethodBuilder()
            ..name = 'map'
            ..types.add(const Reference('R'))
            ..returns = const Reference('R');
          final mapCode = <Code>[];
          Reference? successResponseBodyType;
          Reference? successResponseCodeType;
          MapEntry<String, APIResponse?>? successApiResponse;
          final clientResponseParse = <String, Expression>{};
          for (final response in operation.value!.responses!.entries) {
            final statusAsParameter = response.key == 'default';
            final codeName = response.key.pascalCase;
            final responseCodeClass = ClassBuilder()
              ..extend = refer(responseClass.name!)
              ..name = '${responseClass.name}$codeName'
              ..fields.add(Field((fb) => fb
                ..name = 'status'
                ..annotations.add(_override)
                ..modifier = FieldModifier.final$
                ..type = refer('int')));
            mapMethod.optionalParameters.add(Parameter((pb) => pb
              ..name = 'on$codeName'
              ..asRequired(this, true)
              ..named = true
              ..type = _responseMapType
                  .addGenerics(refer(responseCodeClass.name!))
                  .addGenerics(const Reference('R'))));
            if (mapCode.isNotEmpty) {
              mapCode.add(const Code(' else '));
            }
            mapCode.add(const Code('if (this is '));
            mapCode.add(refer(responseCodeClass.name!).code);
            mapCode.add(const Code(') {'));
            mapCode.add(refer('on$codeName')(
                    [refer('this').asA(refer(responseCodeClass.name!))])
                .returned
                .statement);
            mapCode.add(const Code('}'));
            final clientResponseParseParams = <Expression>[];
            final constructor = Constructor((cb) {
              cb
                ..name = 'response$codeName'
                ..docs.addDartDoc(response.value!.description);

              refer(cb.name!);
              if (statusAsParameter) {
                cb
                  ..requiredParameters.add(
                    Parameter((pb) => pb
                      ..name = 'status'
                      ..type = refer('int')),
                  )
                  ..initializers
                      .add(refer('status').assign(refer('status')).code);
                clientResponseParseParams
                    .add(refer('response').property('status'));
              } else {
                cb.initializers.add(refer('status')
                    .assign(literalNum(int.parse(response.key)))
                    .code);
              }
              final content =
                  (response.value!.content ?? {})[mediaTypeJson.contentType];
//              OpenApiContentType responseContentType;
              Code? responseContentTypeAssignment = _literalNullCode;
              Reference? bodyType;
              if (content != null) {
                const responseContentType = OpenApiContentType.json;
                responseContentTypeAssignment = _openApiContentType
                    .newInstanceNamed('parse',
                        [literalString(responseContentType.toString())]).code;
                final responseSchema = content.schema!;
                if (responseSchema.type == APIType.string) {
                  bodyType =
                      _toDartType('${responseClass.name}Body', responseSchema);
                  cb.initializers
                      .add(refer('bodyJson').assign(literalMap({})).code);
                  cb.requiredParameters.add(Parameter((pb) => pb
                    ..name = 'body'
                    ..type = bodyType
                    ..toThis = true));
                  clientResponseParseParams.add(
                    _decodeStringType(
                        schema: responseSchema,
                        asString: refer('response')
                            .property('responseBodyJsonDynamic')([])
                            .awaited
                            .asA(_typeString),
                        type: bodyType),
                  );
                } else if (responseSchema.type == APIType.array) {
                  final bodyItemType = _schemaReference(
                      '${responseClass.name}Body$codeName',
                      responseSchema.items!);
                  bodyType = _referType('List', generics: [bodyItemType]);
                  cb.requiredParameters.add(Parameter((pb) => pb
                    ..name = 'body'
                    ..type = bodyType
                    ..toThis = true));
                  cb.initializers
                      .add(refer('bodyJson').assign(literalMap({})).code);
                  clientResponseParseParams.add(refer('response')
                      .property('responseBodyJsonDynamic')([])
                      .awaited
                      .asA(_referType('List', generics: [refer('dynamic')]))
                      .property('map')([
                        Method((mb) {
                          mb.requiredParameters
                              .add(Parameter((pb) => pb..name = 'item'));
                          mb.lambda = true;
                          mb.body = bodyItemType.newInstanceNamed('fromJson', [
                            refer('item').asA(_referType('Map',
                                generics: [refer('String'), refer('dynamic')]))
                          ]).code;
                        }).closure
                      ])
                      .property('toList')([]));
                } else {
                  bodyType = _schemaReference(
                      '${responseClass.name}Body$codeName', content.schema!);
                  cb.requiredParameters.add(Parameter((pb) => pb
                    ..name = 'body'
                    ..type = bodyType
                    ..toThis = true));
                  cb.initializers.add(refer('bodyJson')
                      .assign(refer('body').property('toJson')([]))
                      .code);

                  clientResponseParseParams.add(bodyType.newInstanceNamed(
                      'fromJson', [
                    refer('response').property('responseBodyJson')([]).awaited
                  ]));
                }
                responseCodeClass.fields.add(Field((fb) => fb
                  ..name = 'body'
                  ..type = bodyType
                  ..modifier = FieldModifier.final$));
                responseCodeClass.fields.add(Field((fb) => fb
                  ..name = 'bodyJson'
                  ..annotations.add(_override)
                  ..type = _referType('Map',
                      generics: [_typeString, refer('dynamic')])
                  ..modifier = FieldModifier.final$));
                responseCodeClass.implements.add(_openApiResponseBodyJson);
              } else {
                if (response.value!.content?.length == 1) {
                  final responseContent =
                      response.value!.content!.entries.first;
                  final responseContentType =
                      OpenApiContentType.parse(responseContent.key);
                  responseContentTypeAssignment = _openApiContentType
                      .newInstanceNamed('parse',
                          [literalString(responseContentType.toString())]).code;
                  bodyType = _toDartType('${responseCodeClass}Content',
                      responseContent.value!.schema!);
                  checkState(
                      responseContent.value!.schema!.type == APIType.string,
                      message: 'schema type not supported for content type '
                          '${responseContent.key}: '
                          '${responseContent.value!.schema!.type}');
                  responseCodeClass.fields.add(Field((fb) => fb
                    ..name = 'body'
                    ..type = bodyType
                    ..annotations.add(_override)
                    ..modifier = FieldModifier.final$));
                  if (responseContent.key.contains('*')) {
                    responseContentTypeAssignment = null;
                    cb.requiredParameters.add(Parameter((pb) => pb
                      ..type = _openApiContentType
                      ..name = 'contentType'
                      ..toThis = true));
                    clientResponseParseParams.add(refer('response')
                        .property('responseContentType')([])
                        .nullChecked);
                  }
                  cb.requiredParameters.add(Parameter((pb) => pb
                    ..name = 'body'
                    ..type = bodyType
                    ..toThis = true));
                  if (_typeString == bodyType) {
                    responseCodeClass.implements
                        .add(_openApiResponseBodyString);
                    clientResponseParseParams.add(refer('response')
                        .property('responseBodyString')([])
                        .awaited);
                  } else if (_uint8List == bodyType) {
                    responseCodeClass.implements
                        .add(_openApiResponseBodyBinary);
                    clientResponseParseParams.add(refer('response')
                        .property('responseBodyBytes')([])
                        .awaited);
                  } else {
                    throw StateError(
                        'Unsupported bodyType $bodyType for responses.');
                  }
                }
              }
              if (response.key.startsWith('2') ||
                  (response.key == 'default' &&
                      successResponseBodyType == null)) {
                successResponseCodeType = refer(responseCodeClass.name!);
                successResponseBodyType = bodyType;
                successApiResponse = response;
              }
              responseCodeClass.fields.add(Field(
                (fb) => fb
                  ..name = 'contentType'
                  ..type = responseContentTypeAssignment == _literalNullCode
                      ? _openApiContentTypeNullable
                      : _openApiContentType
                  ..annotations.add(_override)
                  ..modifier = FieldModifier.final$
                  ..assignment = responseContentTypeAssignment,
              ));
            });

            responseCodeClass.constructors.add((constructor.toBuilder()
                  ..requiredParameters.map((pb) => (pb.toBuilder()
                        ..type = pb.toThis ? null : pb.type)
                      .build()))
                .build());
            responseCodeClass.methods.add(Method((mb) => mb
              ..name = 'propertiesToString'
              ..annotations.add(_override)
              ..returns = _referType('Map',
                  generics: [_typeString, refer('Object').asNullable(true)])
              ..lambda = true
              ..body = literalMap(
                Map.fromEntries(responseCodeClass.fields.build().map(
                    (f) => MapEntry(literalString(f.name), refer(f.name)))),
              ).code));
            responseClass.constructors.add((constructor.toBuilder()
                  ..factory = true
                  ..initializers.clear()
                  ..requiredParameters
                      .map((pb) => (pb.toBuilder()..toThis = false).build())
                  ..body = refer(responseCodeClass.name!)
                      .newInstanceNamed(
                          constructor.name!,
                          constructor.requiredParameters
                              .map((e) => refer(e.name))
                              .toList())
                      .code)
                .build());
            clientResponseParse[response.key] = Method((mb) => mb
              ..modifier = MethodModifier.async
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'response'
                ..type = _openApiClientResponse))
              ..body = refer(responseCodeClass.name!)
                  .newInstanceNamed(
                      constructor.name!, clientResponseParseParams)
                  .code).closure;
            lb.body.add(responseCodeClass.build());
          }
          if (mapCode.isNotEmpty) {
            mapMethod.optionalParameters.add(Parameter((pb) => pb
              ..name = 'onElse'
              // ..asRequired(this, true)
              ..named = true
              ..type = _responseMapType
                  .addGenerics(refer(responseClass.name!))
                  .addGenerics(const Reference('R'))
                  .asNullable(true)));
            mapCode.add(const Code('else '));
            mapCode.add(ifStatement(
              refer('onElse').notEqualTo(literalNull),
              refer('onElse')([refer('this')]).returned.statement,
              elseCode: refer('StateError')
                  .newInstance(
                      [literalString(r'Invalid instance of type $this')])
                  .thrown
                  .statement,
            ));
            // mapCode.add(const Code(r'''
            //     if (onElse != null) {
            //       return onElse();
            //     } else {
            //       throw StateError('Invalid instance type $this');
            //     }'''));
            // mapCode.add(const Code('}'));
          }
          mapMethod.body = Block.of(mapCode);
          responseClass.methods.add(mapMethod.build());

          if (successApiResponse != null) {
            ArgumentError.checkNotNull(
                successResponseCodeType, 'successResponseCodeType');
            responseClass.implements.add(_hasSuccessResponse
                .addGenerics(successResponseBodyType ?? _void));
            responseClass.methods.add(
              Method((mb) => mb
                ..name = 'requireSuccess'
                ..addDartDoc(successApiResponse!.value!.description,
                    prefix: 'status ${successApiResponse!.key}: ')
                ..annotations.add(_override)
                ..returns = successResponseBodyType ?? _void
                ..body = Block.of([
                  const Code('if (this is '),
                  successResponseCodeType!.code,
                  const Code(') {'),
                  successResponseBodyType == null
                      // success, but no body.
                      ? const Code('return;')
                      : refer('this')
                          .asA(successResponseCodeType!)
                          .property('body')
                          .returned
                          .statement,
                  const Code('} else {'),
                  const Code(
                      r'''throw StateError('Expected success response, but got $this');'''),
                  const Code('}'),
                ])),
            );
          }

          lb.body.add(responseClass.build());

          final clientDataClass = ClassBuilder()
            ..name = operationName.pascalCase
            ..mixins.add(refer('_\$${operationName.pascalCase}'))
            ..annotations.add(_freezed);
          final clientDataConstructor = ConstructorBuilder()
            ..factory = true
            ..redirect = refer('_${operationName.pascalCase}');

          final clientMethod = MethodBuilder()
            ..name = operationName
            ..addDartDoc(operation.value!.summary)
            ..addDartDoc(operation.value!.description)
            ..docs.add('/// ${operation.key}: ${path.key}')
            ..docs.add('///')
            ..returns =
                _referType('Future', generics: [refer(responseClass.name!)])
            ..modifier = MethodModifier.async;
          final clientCode = <Code>[
            declareFinal('request')
                .assign(_openApiClientRequest.newInstance([
                  literalString(operation.key),
                  literalString(path.key),
                  _operationSecurityRequirements(
                      operation.value!.security ?? api.security),
                ]))
                .statement,
          ];
          final clientCodeRequest = refer('request');

          // Generate client parameters
          final allParameters = [
            ...?path.value!.parameters,
            ...?operation.value!.parameters
          ];
          for (final param in allParameters) {
            final paramType = _toDartType(operationName, param!.schema!);
            final paramNameCamelCase = param.name!.camelCase;
            if (param.description != null) {
              clientMethod.docs
                  .add('/// * [$paramNameCamelCase]: ${param.description}');
            }
            final p = Parameter((pb) => pb
              ..name = paramNameCamelCase
              ..type = paramType.asNullable(!param.isRequired)
              ..asRequired(this, param.isRequired)
              ..named = true);
            clientMethod.optionalParameters.add(p);
            clientDataConstructor.optionalParameters.add(p.rebuild((pb) => pb));

            final paramLocation = ArgumentError.checkNotNull(param.location);
            final paramName = ArgumentError.checkNotNull(param.name);
            clientCode.add(_writeToRequest(
              clientCodeRequest,
              paramLocation,
              paramName,
              _encodeParameter(
                schema: param.schema,
                type: paramType,
                expression: refer(paramNameCamelCase),
                isRequired: param.isRequired,
              ),
            ).statement);
          }

          // Generate request body handling
          final body = operation.value!.requestBody;
          if (body != null && body.content!.isNotEmpty) {
            final entry = body.content!.entries.first;

            if (body.content!.length > 1) {
              _logger.warning('Right now we only support one request body, '
                  'but found: ${body.content!.keys}, only using $entry');
            }

            Map.fromEntries([entry]).forEach((key, reqBody) {
              final contentType = OpenApiContentType.parse(key);
              _createRequestBodyClient(
                contentType,
                reqBody!,
                operationName,
                clientMethod,
                clientCode,
              );
            });
          }

          clientCode.add(refer('sendRequest')(
                  [refer('request'), literalMap(clientResponseParse)])
              .awaited
              .returned
              .statement);

          clientMethod.body = Block.of(clientCode);
          clientClass.methods
              .add((clientMethod..annotations.add(_override)).build());
          clientInterface.methods.add((clientMethod.build().toBuilder()
                ..annotations.clear()
                ..body = null)
              .build());
          if (generateProvider && operation.key.toLowerCase() == 'get') {
            final params = clientDataConstructor.build().optionalParameters;
            clientDataClass.constructors.add(clientDataConstructor.build());
            // clientDataClass.build().fields.
            if (params.length > 1) {
              lb.body.add(clientDataClass.build());
              requireFreezed();
            }

// final baseBaseIdGet = _i1.StreamProvider.family<BaseBaseIdGetResponse, BaseBaseIdGet>((ref, arg) {
//   final client = ref.watch(mywarmApiClientProvider);
//   return Stream.fromFuture(client.baseBaseIdGet(baseId: arg.baseId));
// });
            final m = Method((mb) {
              mb.requiredParameters.add(Parameter((pb) => pb..name = 'ref'));
              if (params.isNotEmpty) {
                mb.requiredParameters.add(Parameter((pb) => pb..name = 'arg'));
              }
              mb.body = Block.of([
                declareFinal('client')
                    .assign(refer('ref')
                        .property('watch')([refer(clientProviderName)]))
                    .statement,
                refer('Stream')
                    .property('fromFuture')(
                      [
                        refer('client').property(operationName)(
                            [],
                            params.isEmpty
                                ? {}
                                : params.length == 1
                                    ? {
                                        params.first.name: refer('arg'),
                                      }
                                    : Map.fromEntries(params.map((f) =>
                                        MapEntry(f.name,
                                            refer('arg').property(f.name))))),
                      ],
                    )
                    .returned
                    .statement,
              ]);
            });
            final providerName =
                '${providerNamePrefix.isEmpty ? operationName.camelCase : '$providerNamePrefix${operationName.pascalCase}'}Provider';
            final Expression createProvider;
            if (params.isEmpty) {
              createProvider = _streamProvider.property('autoDispose')(
                  [m.closure], {}, [refer(responseClass.name!)]);
            } else {
              createProvider = _streamProvider
                  .property('autoDispose')
                  .property('family')
                  .call([
                m.closure
              ], {}, [
                refer(responseClass.name!),
                params.length > 1
                    ? refer(clientDataClass.name!)
                    : params.first.type!
              ]);
            }
            lb.body.add(
                declareFinal(providerName).assign(createProvider).statement);
          }
        }
      }
    });
    lb.body.add(c);
    lb.body.add(clientInterface.build());
    lb.body.add(clientClass.build());
    lb.body.add(urlResolveClass.build());

    // Server router generation removed - client-only code generation
    lb.body.add(securitySchemesClass.build());

//       api.paths.map((key, value) => MapEntry(key, refer('ApiPathConfig').newInstance([value.])))
    return lb.build();
  }

  Class _generateApiErrorModel() {
    return Class((cb) {
      cb
        ..name = 'ApiError'
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
        paramType =
            refer('${operationName.pascalCase}${param.name!.pascalCase}Dto');
      } else if (param.schema?.type == APIType.array &&
          param.schema!.items?.enumerated != null &&
          param.schema!.items!.enumerated!.isNotEmpty) {
        paramType = _referType('List', generics: [
          refer('${operationName.pascalCase}${param.name!.pascalCase}Dto')
        ]);
      } else {
        paramType = _toDartType(operationName, param.schema!);
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
        // Only use specific DTO type if we generated one for this schema
        if (_shouldGenerateDto(schema)) {
          bodyType = refer('${operationName.pascalCase}RequestDto');
        } else {
          bodyType = _toDartType('${operationName}Request', schema);
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
          final successResponse = operation.responses!.entries.firstWhere(
              (e) => e.key.startsWith('2'),
              orElse: () =>
                  MapEntry('200', operation.responses!.entries.first.value));

          if (successResponse.value?.content != null &&
              successResponse.value!.content!.isNotEmpty) {
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
                        .assign(refer('response').property('data').asA(returnType))
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

  Expression _readFromRequest(APIParameterLocation location, String name) {
    switch (location) {
      case APIParameterLocation.query:
        return refer('request')
            .property('queryParameter')([literalString(name)]);
      case APIParameterLocation.header:
        return refer('request')
            .property('headerParameter')([literalString(name)]);
      case APIParameterLocation.path:
        return refer('request')
            .property('pathParameter')([literalString(name)]);
      case APIParameterLocation.cookie:
        return refer('request')
            .property('cookieParameter')([literalString(name)]);
    }
    // throw StateError('Invalid location: $location');
  }

  Expression _writeToRequest(Reference request, APIParameterLocation location,
      String name, Expression value) {
    switch (location) {
      case APIParameterLocation.query:
        return request
            .property('addQueryParameter')([literalString(name), value]);
      case APIParameterLocation.header:
        return request
            .property('addHeaderParameter')([literalString(name), value]);
      case APIParameterLocation.path:
        return request
            .property('addPathParameter')([literalString(name), value]);
      case APIParameterLocation.cookie:
        return request
            .property('addCookieParameter')([literalString(name), value]);
    }
    // throw StateError('Invalid location: $location');
  }

  void _createRequestBodyClient(
      OpenApiContentType contentType,
      APIMediaType reqBody,
      String operationName,
      MethodBuilder clientMethod,
      List<Code> clientCode) {
    _logger.finer('reqBody.schema: ${reqBody.schema}');

    void addRequestBody(Reference bodyType, Expression encodeBody) {
      clientMethod.addDartDoc(reqBody.schema!.description, prefix: '[body]:');
      clientMethod.requiredParameters.add(Parameter((pb) => pb
        ..name = 'body'
        ..type = bodyType));

      clientCode.add(
        refer('request').property('setBody')([encodeBody]).statement,
      );
    }

    clientCode.add(refer('request')
        .property('setHeader')([
          literalString(OpenApiHttpHeaders.contentType),
          literalString(contentType.toString())
        ])
        .statement);

    if (contentType.matches(OpenApiContentType.textPlain)) {
      addRequestBody(
        _typeString,
        _openApiClientRequestBodyText.newInstance([refer('body')]),
      );
    } else if (contentType.matches(OpenApiContentType.octetStream)) {
      addRequestBody(
        _toDartType(operationName, reqBody.schema!),
        _openApiClientRequestBodyBinary.newInstance([refer('body')]),
      );
    } else {
      final schema = reqBody.schema!;
      final reference =
          _toDartType('${operationName.pascalCase}Schema', schema);

      final bodyIsObject = schema.type == null || schema.type == APIType.object;
      final jsonReference = switch (bodyIsObject) {
        true => refer('body').property('toJson')([]),
        false => refer('body'),
      };

      addRequestBody(
        reference,
        _openApiClientRequestBodyJson.newInstance([jsonReference]),
      );
    }
  }

  // Server router configuration removed - client-only

  LiteralListExpression _operationSecurityRequirements(
      List<APISecurityRequirement?>? security) {
    if (ignoreSecuritySchemes) {
      return literalList([]);
    }
    return literalList(
      security?.map(
            (security) => _securityRequirement(
              [],
              {
                'schemes': literalList(security!.requirements.entries
                    .map((req) => _securityRequirementScheme.newInstance([], {
                          'scheme': refer(securitySchemesClass.name!)
                              .property(req.key.camelCase),
                          'scopes': literalList(req.value),
                        }))),
              },
            ),
          ) ??
          [],
    );
  }

  String _classNameForComponent(String componentName) {
    return '${componentName.pascalCase}Dto';
  }

  String? _componentNameFromReferenceUri(Uri? referenceUri) {
    if (referenceUri == null) {
      return null;
    }
    final segments = referenceUri.pathSegments;
    if (segments[0] == 'components' && segments[1] == 'schemas') {
      final name = _classNameForComponent(segments[2]);
      return name;
    }
    return null;
  }

  Reference _schemaReference(String key, APISchemaObject schemaObject) {
    _logger.finer('Looking up ${schemaObject.referenceURI}');
    final uri = schemaObject.referenceURI;
    final componentName =
        _componentNameFromReferenceUri(uri) ?? _classNameForComponent(key);

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
    final c = _createSchemaClass(componentName, schemaObject);
    lb.body.add(c);

    return reference;
  }

  Class _createSchemaClass(String className, APISchemaObject obj) {
    if (generateServiceClasses) {
      return _createFreezedSchemaClass(className, obj);
    }
    return _createLegacySchemaClass(className, obj);
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
          final fieldType =
              _toDartType('$className${entry.key.pascalCase}', entry.value!);
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

  Class _createLegacySchemaClass(String className, APISchemaObject obj) {
    var properties = obj.properties ?? {};
    final override = <String>{};
    final required = obj.required ?? [];
    final implements = <Reference>[];

    // check for inheritance
    var additionalPropertyPolicy = obj.additionalPropertyPolicy;
    var additionalPropertySchema = obj.additionalPropertySchema;
    if (obj.allOf != null) {
      for (final baseObj in obj.allOf!) {
        implements.add(_schemaReference('${className}Base', baseObj!));
        properties = {
          ...baseObj.properties!,
          ...properties,
        };
        override.addAll(baseObj.properties!.entries.map((e) => e.key));
        required.addAll(baseObj.required ?? []);
        // if the base object as "freeForm" property policy we need to expand it.
        if (baseObj.additionalPropertyPolicy ==
            APISchemaAdditionalPropertyPolicy.freeForm) {
          additionalPropertyPolicy = baseObj.additionalPropertyPolicy;
        } else {
          additionalPropertySchema ??= baseObj.additionalPropertySchema;
        }
      }
    }
    // imho this is a bug.. if policy is "restricted" there has to be a schema.
    if (additionalPropertyPolicy ==
            APISchemaAdditionalPropertyPolicy.restricted &&
        additionalPropertySchema == null) {
      additionalPropertyPolicy = APISchemaAdditionalPropertyPolicy.disallowed;
    }
    final additionalPropertyType =
        switch ((additionalPropertyPolicy, additionalPropertySchema)) {
      (null, _) => null,
      (APISchemaAdditionalPropertyPolicy.disallowed, _) => null,
      (APISchemaAdditionalPropertyPolicy.freeForm, _) =>
        _referType('Object', isNullable: true),
      (
        APISchemaAdditionalPropertyPolicy.restricted,
        final additionalPropertySchema?
      ) =>
        _toDartType('${className}AddProp', additionalPropertySchema),
      (APISchemaAdditionalPropertyPolicy.restricted, null) =>
        throw UnimplementedError(
            '$obj has restricted `additionalProperties` but no schema assigned.'),
    };

    final fields = properties.map((key, e) => MapEntry(key, Field((fb) {
          final fieldType = _toDartType('$className${key.pascalCase}', e!);
          fb
            ..addDartDoc(e.description)
            ..annotations.add(jsonKey([], {
              'name': literalString(key),
            }))
            ..annotations.addAll(override.contains(key) ? [_override] : [])
            ..name = key.camelCase
            ..modifier = FieldModifier.final$
            ..type = fieldType
                .asNullable(!required.contains(key) && e.defaultValue == null);
          if (fieldType == _apiUuid) {
            fb.annotations.add(_apiUuidJsonConverter([]));
          }
        })));
    // ignore: avoid_function_literals_in_foreach_calls
    required.forEach((element) {
      if (fields[element] == null) {
        throw StateError('Invalid required "$element" was not '
            'defined as property of $className');
      }
    });

    final c = Class((cb) {
      Expression? toJsonExpression =
          refer('_\$${className}ToJson')([refer('this')]);
      Expression? fromJsonExpression =
          refer('_\$${className}FromJson').call([refer('jsonMap')]);

      if (additionalPropertyType != null) {
        toJsonExpression = refer('Map')
            .property('from')([refer('_additionalProperties')])
            .cascade('addAll')([toJsonExpression]);
        fromJsonExpression = fromJsonExpression
            .cascade('_additionalProperties')
            .property('addEntries')([
          refer('jsonMap')
              .property('entries')
              .property('where')([
                Method((mb) => mb
                  ..lambda = true
                  ..requiredParameters.add(Parameter((pb) => pb..name = 'e'))
                  ..body = literalConstSet(
                          fields.entries
                              .map((e) => literalString(e.key))
                              .toSet(),
                          _typeString)
                      .property('contains')([refer('e').property('key')])
                      .negate()
                      .code).closure
              ])
              .let((e) {
            if (additionalPropertyPolicy !=
                APISchemaAdditionalPropertyPolicy.restricted) {
              return e;
            }
            return e.property('map')([
              Method((mb) => mb
                ..lambda = true
                ..requiredParameters.add(Parameter((pb) => pb..name = 'e'))
                ..body = refer('MapEntry')([
                  refer('e').property('key'),
                  _parseJson(
                    parentName: '${className}AddProp',
                    schema: additionalPropertySchema,
                    type: additionalPropertyType,
                    expression: refer('e').property('value'),
                  ),
                ]).code).closure
            ]);
          })
        ]);
      }

      for (final requiredKey in required) {
        if (!fields.keys.contains(requiredKey)) {
          throw StateError('$requiredKey defined as required for $className -'
              ' but no field found with that name.');
        }
      }
      cb
        ..annotations.add(_apiUuidJsonConverter([]))
        ..name = className
        ..implements.addAll(implements)
        ..docs.addDartDoc(obj.description)
        ..constructors.add(
          Constructor(
            (cb) => cb
              ..optionalParameters
                  .addAll(fields.entries.map((f) => Parameter((pb) => pb
//            ..docs.addAll(f.docs)
                    ..name = f.value.name
                    ..asRequired(this, required.contains(f.key))
                    ..defaultTo = (properties[f.key]?.defaultValue as Object?)
                        ?.let((dynamic it) => literal(it))
                        .code
                    ..named = true
                    ..toThis = true)))
              // TODO we should probably make additional properties immutable.
              ..constant = additionalPropertyType == null
              ..initializers.addAll(useNullSafetySyntax
                  ? []
                  : required.map((e) => refer('assert')(
                      [refer(fields[e]!.name).notEqualTo(literalNull)]).code)),
          ),
        )
        ..constructors.add(Constructor((cb) => cb
              ..name = 'fromJson'
              ..factory = true
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'jsonMap'
                ..type = refer('Map<String, dynamic>')))
              ..lambda = true
              ..body = fromJsonExpression!.code
//              ..body = Block.of([
//                InvokeExpression.newOf(
//                  refer(schemaEntry.key),
//                  [],
//                  obj.properties.map((key, value) => MapEntry(
//                      key,
//                      refer('map')
//                          .index(literalString(key))
//                          .asA(_toDartType(value.type)))),
//                  [],
//                ).returned.statement,
//              ]
//            )
            ))
        ..fields.addAll(fields.values)
        ..methods.add(
          Method(
            (mb) => mb
              ..name = 'toJson'
              ..returns = refer('Map<String, dynamic>')
              ..annotations.addAll(implements.isEmpty ? [] : [_override])
              ..lambda = true
              ..body = toJsonExpression!.code,
          ),
//                ..methods.add(
//                Method(
//                (mb) => mb
//        ..name = 'toJson'
//        ..returns = refer('Map<String, dynamic>')
//          ..lambda = true
//          ..body = literalMap(
//            obj.properties
//                .map((key, value) => MapEntry(key, refer(key))),
//            _typeString,
//            refer('dynamic'),
//          ).code,
//      ),
        )
        ..methods.add(Method((mb) => mb
          ..name = 'toString'
          ..returns = _typeString
          ..annotations.add(_override)
          ..lambda = true
          ..body = refer('toJson')([]).property('toString')([]).code));

      if (additionalPropertyType != null) {
        cb.methods.add(Method((mb) => mb
          ..type = MethodType.getter
          ..name = 'additionalProperties'
          ..returns = _referType(
            'Map',
            generics: [_typeString, additionalPropertyType],
          )
          ..lambda = true
          ..body = refer('_additionalProperties').code));
        cb.fields.add(Field((fb) => fb
          ..name = '_additionalProperties'
          ..type = _referType(
            'Map',
            generics: [_typeString, additionalPropertyType],
          )
          ..assignment =
              literalMap({}, _typeString, additionalPropertyType).code
          ..modifier = FieldModifier.final$));
        cb.methods.add(
          Method((mb) => mb
            ..name = 'operator[]='
            ..returns = refer('void')
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'key'
              ..type = _typeString))
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'value'
              ..type = additionalPropertyType))
            ..lambda = true
            ..body = refer('_additionalProperties')
                .index(refer('key'))
                .assign(refer('value'))
                .code),
        );
        cb.methods.add(
          Method((mb) => mb
            ..name = 'operator[]'
            ..returns = additionalPropertyType.asNullable(true)
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'key'
              ..type = _typeString))
            ..lambda = true
            ..body = refer('_additionalProperties').index(refer('key')).code),
        );
      }
    });
    return c;
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
                name: e.toString(),
              ),
            )
            .toList(),
      ));
      return refer(name);
    });
  }

  Reference _toDartType(String parent, APISchemaObject schema) {
    switch (schema.type ?? APIType.object) {
      case APIType.string:
        if (schema.enumerated != null && schema.enumerated!.isNotEmpty) {
          return _schemaReference(parent, schema);
        }
        if (schema.format == 'date-time') {
          return _typeDateTime;
        }
        if (schema.format == 'uuid') {
          return _apiUuid;
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
        final type = _toDartType(parent, schema.items!);
        return _referType('List', generics: [type]);
      case APIType.object:
        // Handle object type with additionalProperties but no properties
        if ((schema.properties?.isEmpty ?? true) && 
            schema.additionalPropertySchema != null) {
          // This is a map-like object with additionalProperties
          final valueType = _toDartType('${parent}Value', schema.additionalPropertySchema!);
          return _referType('Map', generics: [_typeString, valueType]);
        } else if ((schema.properties?.isEmpty ?? true) && 
                   schema.additionalPropertyPolicy == APISchemaAdditionalPropertyPolicy.freeForm) {
          // This is a free-form object (Map<String, dynamic>)
          return _referType('Map', generics: [_typeString, refer('dynamic')]);
        } else {
          // This is a regular object schema that should have a DTO
          return _schemaReference(parent, schema);
        }
    }
    // throw StateError(
    //     'Invalid type ${schema.type} - $schema - ${schema.referenceURI}');
  }

  Expression _securitySchemeReference(String name, APISecurityScheme value) {
    final schemaType = ArgumentError.checkNotNull(value.type);
    switch (schemaType) {
      case APISecuritySchemeType.http:
        assert(value.scheme == 'bearer');
        securitySchemesClass.fields.add(
          Field((fb) => fb
            ..name = name.camelCase
            ..modifier = FieldModifier.final$
            ..static = true
            ..assignment = _securitySchemeHttp.newInstance([],
                {'scheme': _securitySchemeHttpScheme.property('bearer')}).code),
        );
        return refer(securitySchemesClass.name!).property(name.camelCase);
      case APISecuritySchemeType.apiKey:
        final location = ArgumentError.checkNotNull(value.location);
        final valueName = ArgumentError.checkNotNull(value.name);
        securitySchemesClass.fields.add(
          Field((fb) => fb
            ..name = name.camelCase
            ..modifier = FieldModifier.final$
            ..static = true
            ..assignment = _securitySchemeApiKey.newInstance([], {
              'name': literalString(value.name!),
              'readFromRequest': Method((mb) => mb
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'request'
                  ..type = _openApiRequest))
                ..body = _readFromRequest(location, valueName).code).closure,
              'writeToRequest': Method((mb) => mb
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'request'
                  ..type = _openApiClientRequest))
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'value'
                  ..type = _typeString))
                ..body = _writeToRequest(refer('request'), location, valueName,
                    literalList([refer('value')])).code).closure,
            }).code),
        );
        return refer(securitySchemesClass.name!).property(name.camelCase);
      case APISecuritySchemeType.oauth2:
      case APISecuritySchemeType.openID:
      case APISecuritySchemeType.openIdConnect:
        throw StateError('Unsupported security scheme ${value.type}');
    }
    // throw StateError(
    //     'Should not happen - unsupported security scheme ${value.type}');
  }

  Expression _parseJson({
    required String parentName,
    required APISchemaObject? schema,
    required Reference type,
    required Expression expression,
  }) {
    if (schema == null) {
      throw ArgumentError('schema must not be null');
    }
    final schemaType = schema.type ??
        APIType
            .object; /*ArgumentError.checkNotNull(
        schema.type, 'param.schema.type $parentName $type');*/
    return switch (schemaType) {
      APIType.string => expression.asA(_typeString),
      APIType.number => expression.asA(_typeDouble),
      APIType.integer => expression.asA(_typeInteger),
      APIType.boolean => expression.asA(refer('bool')),
      APIType.array => switch (schema.items) {
          final itemSchema? => expression
              .asA(_referType('Iterable', generics: [refer('dynamic')]))
              .property('map')([
                Method(
                  (mb) => mb
                    ..lambda = true
                    ..requiredParameters.add(Parameter((pb) => pb..name = 'e'))
                    ..body = _parseJson(
                            parentName: '${parentName}ListItem',
                            schema: itemSchema,
                            type: _toDartType(
                                '${parentName}ListItem', itemSchema),
                            expression: refer('e'))
                        .code,
                ).closure
              ])
              .property('toList')([]),
          null => throw UnimplementedError(),
        },
      APIType.object => type.property('fromJson')([expression]),
    };
  }

  Expression _decodeStringType({
    required APISchemaObject schema,
    required Expression asString,
    required Reference type,
  }) {
    if (schema.format == 'uuid') {
      assert(type == _apiUuid);
      return _apiUuid.newInstanceNamed('parse', [asString]);
    } else if (schema.enumerated?.isNotEmpty == true) {
      final paramEnumType = type;
      return refer('${paramEnumType.symbol!}Ext')
          .property('fromName')([asString]);
    } else if (type == _typeDateTime) {
      return _typeDateTime.property('parse')([asString]);
    } else if (type != _typeString) {
      throw StateError('Unsupported paramType for string $type');
    }
    return asString;
  }

  Expression _encodeParameter({
    APISchemaObject? schema,
    required Reference type,
    required Expression expression,
    required bool isRequired,
  }) {
    if (schema == null) {
      throw ArgumentError('schema');
    }
    final schemaType =
        ArgumentError.checkNotNull(schema.type, 'param.schema.type');
    switch (schemaType) {
      case APIType.string:
        if (schema.format == 'uuid') {
          assert(type == _apiUuid);
          if (isRequired) {
            expression = expression.property('encodeToString')([]);
          } else {
            expression = expression.nullSafeProperty('encodeToString')([]);
          }
        } else if (schema.enumerated?.isNotEmpty == true) {
          if (isRequired) {
            expression = expression.property('name');
          } else {
            expression = expression.nullSafeProperty('name');
          }
        } else if (type == _typeDateTime) {
          if (isRequired) {
            expression = expression.property('toIso8601String')([]);
          } else {
            expression = expression.nullSafeProperty('toIso8601String')([]);
          }
        } else if (type != _typeString) {
          // TODO not sure if this makes sense, maybe we should just
          //      use `toString`?
          throw StateError(
              'encodeParameter: Unsupported paramType for string $type');
        }
        return refer('encodeString')([expression]);
      case APIType.number:
        return refer('encodeNum')([expression]);
      case APIType.integer:
        return refer('encodeInt')([expression]);
      case APIType.boolean:
        return refer('encodeBool')([expression]);
      case APIType.array:
        checkState(schema.items!.type == APIType.string);
        if (schema.items!.enumerated != null &&
            schema.items!.enumerated!.isNotEmpty) {
          return expression.property('map')([
            Method(
              (mb) => mb
                ..lambda = true
                ..requiredParameters.add(Parameter((pb) => pb..name = 'e'))
                ..body = refer('e').property('name').code,
            ).closure
          ]);
        }
        return expression;
      case APIType.object:
        return expression;
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
        literalMap(Map.fromEntries(values!.map((e) =>
            MapEntry(literalString(e.name!), refer(name!).property(e.name!))))),
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
  EnumValueSpec({this.annotations, this.name});

  final List<Expression?>? annotations;
  final String? name;

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

class OpenApiCodeBuilderUtils {
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

  static String formatLibrary(Library library,
      {bool orderDirectives = false, required bool useNullSafetySyntax}) {
    final emitter = DartEmitter(
      allocator: CustomAllocator(),
      orderDirectives: orderDirectives,
      useNullSafetySyntax: useNullSafetySyntax,
    );
    final libraryOutput = DartFormatter(
      languageVersion: Version(3, 2, 0),
    ).format('// GENERATED CODE - DO NOT MODIFY BY HAND\n\n\n'
        '// ignore_for_file: unused_element, unnecessary_import, unused_import\n\n'
        '${library.accept(emitter)}\n\n'
        'T _throwStateError<T>(String message) => throw StateError(message);\n\n');
    return libraryOutput;
  }
}

class OpenApiCodeBuilder extends Builder {
  OpenApiCodeBuilder({
    this.orderDirectives = false,
    required this.useNullSafetySyntax,
    this.generateProvider = false,
    this.providerNamePrefix = '',
    this.ignoreSecuritySchemes = false,
    this.generateServiceClasses = false,
  });

  final bool generateProvider;
  final bool orderDirectives;
  final bool useNullSafetySyntax;
  final String providerNamePrefix;
  final bool ignoreSecuritySchemes;
  final bool generateServiceClasses;

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;
    final outputId = inputId.changeExtension('.dart');
    final source = await buildStep.readAsString(inputId);
    checkArgument(inputId.pathSegments.last.endsWith('.openapi.yaml'));
    final inputIdBasename =
        inputId.pathSegments.last.replaceAll('.openapi.yaml', '');
    OpenApiCodeBuilderUtils.loadApiFromYaml(source);
    final api = OpenApiCodeBuilderUtils.loadApiFromYaml(source);

    final baseName = api.info!.extensions['x-dart-name'] as String? ??
        inputIdBasename.pascalCase;

    final generator = OpenApiLibraryGenerator(
      api,
      baseName: baseName,
      partFileName: outputId.changeExtension('.g.dart').pathSegments.last,
      freezedPartFileName:
          outputId.changeExtension('.freezed.dart').pathSegments.last,
      useNullSafetySyntax: useNullSafetySyntax,
      generateProvider: generateProvider,
      providerNamePrefix: providerNamePrefix,
      ignoreSecuritySchemes: ignoreSecuritySchemes,
      generateServiceClasses: generateServiceClasses,
    );

    if (generateServiceClasses) {
      // Create separate generators for DTOs and Service with correct part file names
      final dtosGenerator = OpenApiLibraryGenerator(
        api,
        baseName: baseName,
        partFileName: inputId.changeExtension('.dtos.g.dart').pathSegments.last,
        freezedPartFileName:
            inputId.changeExtension('.dtos.freezed.dart').pathSegments.last,
        useNullSafetySyntax: useNullSafetySyntax,
        generateProvider: generateProvider,
        providerNamePrefix: providerNamePrefix,
        ignoreSecuritySchemes: ignoreSecuritySchemes,
        generateServiceClasses: generateServiceClasses,
      );

      final serviceGenerator = OpenApiLibraryGenerator(
        api,
        baseName: baseName,
        partFileName:
            inputId.changeExtension('.service.g.dart').pathSegments.last,
        freezedPartFileName:
            inputId.changeExtension('.service.freezed.dart').pathSegments.last,
        useNullSafetySyntax: useNullSafetySyntax,
        generateProvider: generateProvider,
        providerNamePrefix: providerNamePrefix,
        ignoreSecuritySchemes: ignoreSecuritySchemes,
        generateServiceClasses: generateServiceClasses,
      );

      // Generate DTOs library
      final dtosLibrary = dtosGenerator._generateDtosLibrary();
      final dtosOutput = OpenApiCodeBuilderUtils.formatLibrary(
        dtosLibrary,
        orderDirectives: true,
        useNullSafetySyntax: useNullSafetySyntax,
      );
      final dtosOutputId = inputId.changeExtension('.dtos.dart');
      await buildStep.writeAsString(dtosOutputId, dtosOutput);

      // Generate Service library
      final serviceLibrary =
          serviceGenerator._generateServiceLibrary(inputIdBasename);
      final serviceOutput = OpenApiCodeBuilderUtils.formatLibrary(
        serviceLibrary,
        orderDirectives: true,
        useNullSafetySyntax: useNullSafetySyntax,
      );
      final serviceOutputId = inputId.changeExtension('.service.dart');
      await buildStep.writeAsString(serviceOutputId, serviceOutput);

      // Don't generate the combined .openapi.dart file when splitting
    } else {
      // Generate single library (legacy mode)
      final l = generator.generate();
      final libraryOutput = OpenApiCodeBuilderUtils.formatLibrary(
        l,
        orderDirectives: true,
        useNullSafetySyntax: useNullSafetySyntax,
      );
      await buildStep.writeAsString(outputId, libraryOutput);
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.openapi.yaml': generateServiceClasses
            ? ['.openapi.dtos.dart', '.openapi.service.dart']
            : ['.openapi.dart']
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

extension on FieldBuilder {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) =>
      docs.addDartDoc(helpText, prefix: prefix);
}

extension on MethodBuilder {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) =>
      docs.addDartDoc(helpText, prefix: prefix);
}

extension on ParameterBuilder {
  void asRequired(OpenApiLibraryGenerator generator, [bool isRequired = true]) {
    if (generator.useNullSafetySyntax) {
      required = isRequired;
    } else if (isRequired) {
      annotations.add(generator._required);
    }
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

/// Default implementation of SchemaAnalyzer
class DefaultSchemaAnalyzer implements SchemaAnalyzer {
  @override
  Set<String> collectUsedSchemas(APIDocument api) {
    final usedSchemas = <String>{};
    
    for (final path in api.paths!.entries) {
      for (final operation in path.value!.operations.entries) {
        _collectSchemasFromOperation(operation.value!, usedSchemas);
      }
    }
    
    return usedSchemas;
  }

  void _collectSchemasFromOperation(APIOperation operation, Set<String> usedSchemas) {
    // Check response schemas
    for (final response in operation.responses!.entries) {
      if (response.value?.content != null) {
        for (final content in response.value!.content!.values) {
          if (content?.schema != null) {
            _collectSchemaReferences(content!.schema!, usedSchemas);
          }
        }
      }
    }
    
    // Check request body schemas
    final body = operation.requestBody;
    if (body?.content != null) {
      for (final content in body!.content!.values) {
        if (content?.schema != null) {
          _collectSchemaReferences(content!.schema!, usedSchemas);
        }
      }
    }
  }

  void _collectSchemaReferences(APISchemaObject schema, Set<String> usedSchemas) {
    final uri = schema.referenceURI;
    if (uri != null) {
      final segments = uri.pathSegments;
      if (segments.length >= 3 && segments[0] == 'components' && segments[1] == 'schemas') {
        usedSchemas.add(segments[2]);
      }
    }
    
    if (schema.properties != null) {
      for (final prop in schema.properties!.values) {
        _collectSchemaReferences(prop!, usedSchemas);
      }
    }
    
    if (schema.items != null) {
      _collectSchemaReferences(schema.items!, usedSchemas);
    }
    
    if (schema.allOf != null) {
      for (final subSchema in schema.allOf!) {
        _collectSchemaReferences(subSchema!, usedSchemas);
      }
    }
  }

  @override
  bool shouldGenerateDto(APISchemaObject schema) {
    if (schema.type != null && schema.type != APIType.object) {
      return false;
    }
    
    if (schema.type == APIType.object && 
        (schema.properties?.isEmpty ?? true) && 
        (schema.allOf?.isEmpty ?? true) &&
        (schema.oneOf?.isEmpty ?? true) &&
        (schema.anyOf?.isEmpty ?? true)) {
      return false;
    }
    
    return schema.type == APIType.object || 
           (schema.properties?.isNotEmpty == true) || 
           (schema.allOf?.isNotEmpty == true) ||
           (schema.oneOf?.isNotEmpty == true) ||
           (schema.anyOf?.isNotEmpty == true);
  }
}

/// Placeholder implementations for other interfaces
class DefaultDtoGenerator implements DtoGenerator {
  final String baseName;
  final String freezedPartFileName;
  final String partFileName;
  
  DefaultDtoGenerator(this.baseName, this.freezedPartFileName, this.partFileName);
  
  @override
  Library generateDtosLibrary(APIDocument api, SchemaAnalyzer analyzer) {
    // TODO: Move the existing _generateDtosLibrary logic here
    return LibraryBuilder().build();
  }

  @override
  Class generateApiErrorModel() {
    // TODO: Move the existing _generateApiErrorModel logic here
    return Class((cb) => cb..name = 'ApiError');
  }

  @override
  void generateSchemaIntoLibrary(
      LibraryBuilder targetLb, String key, APISchemaObject schemaObject) {
    // TODO: Move the existing _generateSchemaIntoLibrary logic here
  }
}

class DefaultServiceGenerator implements ServiceGenerator {
  final String baseName;
  
  DefaultServiceGenerator(this.baseName);
  
  @override
  Library generateServiceLibrary(APIDocument api, String inputIdBasename) {
    // TODO: Move the existing _generateServiceLibrary logic here
    return LibraryBuilder().build();
  }

  @override
  void generateServiceClassToLibrary(LibraryBuilder targetLb, APIDocument api) {
    // TODO: Move the existing _generateServiceClassToLibrary logic here
  }
}

class DefaultLegacyGenerator implements LegacyGenerator {
  final String baseName;
  final String freezedPartFileName;
  final String partFileName;
  final bool useNullSafetySyntax;
  final bool apiMethodsWithRequest;
  final bool generateProvider;
  final String providerNamePrefix;
  final bool ignoreSecuritySchemes;
  
  DefaultLegacyGenerator(
    this.baseName,
    this.freezedPartFileName,
    this.partFileName,
    this.useNullSafetySyntax,
    this.apiMethodsWithRequest,
    this.generateProvider,
    this.providerNamePrefix,
    this.ignoreSecuritySchemes,
  );
  
  @override
  Library generateLegacyStyle(APIDocument api, void Function() requireFreezed) {
    // TODO: Move the existing _generateLegacyStyle logic here
    return LibraryBuilder().build();
  }
}
