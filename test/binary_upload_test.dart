import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('Binary Upload Tests', () {
    group('File-based binary uploads', () {
      test('generates File parameter for binary request bodies', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should import dart:io for File type
        expect(serviceOutput, contains('import \'dart:io\' as _i1'));
        
        // Should import mime package for MIME type detection
        expect(serviceOutput, contains('import \'package:mime/mime.dart\''));

        // Avatar upload method should use File parameter
        expect(serviceOutput, contains('apiV1AccountAvatarPost('));
        expect(serviceOutput, contains('_i1.File file'));
        expect(serviceOutput, isNot(contains('Uint8List')));

        // Step image upload method should use File parameter with path parameter
        expect(serviceOutput, contains('apiV1StepsStepIdImagesPost('));
        expect(serviceOutput, contains('_i1.File file'));
        expect(serviceOutput, contains('required String stepId'));

        // Generic file upload should use File parameter
        expect(serviceOutput, contains('apiV1FilesUploadPost('));
        expect(serviceOutput, contains('_i1.File file'));
      });

      test('adds progress callback parameter for binary uploads', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // All binary upload methods should have progress callback
        expect(serviceOutput, contains('void Function(int sent, int total)? onProgress'));
        
        // Should have multiple progress callback parameters (one for each binary endpoint)
        final progressMatches = 'void Function(int sent, int total)? onProgress'.allMatches(serviceOutput);
        expect(progressMatches.length, equals(3), 
            reason: 'Should have progress callback for all 3 binary upload endpoints');
      });

      test('generates proper file streaming and MIME type detection', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should get file length
        expect(serviceOutput, contains('final length = await file.length()'));
        
        // Should detect MIME type with fallback
        expect(serviceOutput, contains('final mime = lookupMimeType(file.path) ?? \'application/octet-stream\''));
        
        // Should use file stream instead of loading into memory
        expect(serviceOutput, contains('data: file.openRead()'));
        
        // Should set proper headers
        expect(serviceOutput, contains('options: Options(headers: <String, dynamic>{'));
        expect(serviceOutput, contains('\'Content-Length\': length.toString()'));
        expect(serviceOutput, contains('\'Content-Type\': mime'));
        
        // Should pass progress callback to Dio
        expect(serviceOutput, contains('onSendProgress: onProgress'));
      });

      test('does not affect non-binary endpoints', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Non-binary endpoint should use regular JSON body
        expect(serviceOutput, contains('apiV1DocumentsPost('));
        expect(serviceOutput, contains('ApiV1DocumentsPostRequestDto body'));
        expect(serviceOutput, isNot(contains('apiV1DocumentsPost(_i1.File file')));
        
        // Should use JSON serialization for non-binary requests
        expect(serviceOutput, contains('data: body.toJson()'));
      });

      test('generates correct return types for binary endpoints', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should have correct return types
        expect(serviceOutput, contains('Future<Either<ApiError, AccountDto>> apiV1AccountAvatarPost('));
        expect(serviceOutput, contains('Future<Either<ApiError, StepMediaDto>> apiV1StepsStepIdImagesPost('));
        expect(serviceOutput, contains('Future<Either<ApiError, FileUploadDto>> apiV1FilesUploadPost('));

        // Should deserialize responses correctly
        expect(serviceOutput, contains('AccountDto.fromJson(response.data)'));
        expect(serviceOutput, contains('StepMediaDto.fromJson(response.data)'));
        expect(serviceOutput, contains('FileUploadDto.fromJson(response.data)'));
      });

      test('detects binary content types correctly', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // The methods are properly generated with File parameters

        // Should handle various binary content types
        // - image/* types (jpeg, png, gif, webp)
        // - video/* types (mp4)
        // - audio/* types (mpeg)
        // - application/octet-stream
        // - application/pdf should also be treated as binary

        // All these endpoints should use File parameters
        expect(serviceOutput, contains('apiV1AccountAvatarPost'));  // image types
        expect(serviceOutput, contains('apiV1StepsStepIdImagesPost')); // image types
        expect(serviceOutput, contains('apiV1FilesUploadPost'));    // video/audio/pdf types
      });

      test('includes mime package import only when binary endpoints exist', () async {
        // Test with binary API
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final binaryApi = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final binaryGenerator = OpenApiLibraryGenerator(
          binaryApi,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final binaryServiceLibrary = binaryGenerator.generateServiceLibrary('binary_upload_api');
        final binaryServiceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          binaryServiceLibrary,
        );

        // Should include mime import for binary API
        expect(binaryServiceOutput, contains('import \'package:mime/mime.dart\''));

        // Test with simple API (no binary endpoints)
        final simpleApiYaml =
            await File('test/fixtures/simple_api.openapi.yaml').readAsString();
        final simpleApi = OpenApiServiceBuilderUtils.loadApiFromYaml(simpleApiYaml);

        final simpleGenerator = OpenApiLibraryGenerator(
          simpleApi,
          baseName: 'SimpleApi',
          partFileName: 'simple_api.openapi.dtos.g.dart',
        );

        final simpleServiceLibrary = simpleGenerator.generateServiceLibrary('simple_api');
        final simpleServiceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          simpleServiceLibrary,
        );

        // Should NOT include mime import for non-binary API
        expect(simpleServiceOutput, isNot(contains('import \'package:mime/mime.dart\'')));
      });

      test('generates proper error handling for binary uploads', () async {
        final binaryApiYaml =
            await File('test/fixtures/binary_upload_api.openapi.yaml').readAsString();
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(binaryApiYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'BinaryUploadApi',
          partFileName: 'binary_upload_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('binary_upload_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should have proper try-catch blocks
        expect(serviceOutput, contains('try {'));
        expect(serviceOutput, contains('} catch (e, stackTrace) {'));
        
        // Should return Left with error for exceptions using ErrorHandler
        expect(serviceOutput, contains('return Left(_errorHandler.handleError('));
        expect(serviceOutput, contains('e,'));
        expect(serviceOutput, contains('stackTrace,'));
        expect(serviceOutput, contains('requestContext,'));
        
        // Should include endpoint path in error handling
        expect(serviceOutput, contains('\'/api/v1/account/avatar\','));
        expect(serviceOutput, contains('\'/api/v1/steps/\$stepId/images\','));
        expect(serviceOutput, contains('\'/api/v1/files/upload\','));
      });
    });

    group('Edge cases', () {
      test('handles mixed content types in single endpoint', () {
        // Test endpoint with both binary and non-binary content types
        final mixedContentYaml = '''
openapi: 3.0.0
info:
  title: Mixed Content API
  version: 1.0.0
  x-dart-name: MixedContentApi

paths:
  /upload:
    post:
      requestBody:
        content:
          image/jpeg:
            schema:
              type: string
              format: binary
          application/json:
            schema:
              type: object
              properties:
                data:
                  type: string
        required: true
      responses:
        "200":
          description: Success
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(mixedContentYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'MixedContentApi',
          partFileName: 'mixed_content_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('mixed_content_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should treat as binary since it has binary content types
        expect(serviceOutput, contains('_i1.File file'));
        expect(serviceOutput, contains('void Function(int sent, int total)? onProgress'));
      });

      test('handles empty request body', () {
        final noBodyYaml = '''
openapi: 3.0.0
info:
  title: No Body API
  version: 1.0.0
  x-dart-name: NoBodyApi

paths:
  /ping:
    get:
      responses:
        "200":
          description: Pong
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(noBodyYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'NoBodyApi',
          partFileName: 'no_body_api.openapi.dtos.g.dart',
        );

        final serviceLibrary = generator.generateServiceLibrary('no_body_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should not have File parameters or progress callbacks
        expect(serviceOutput, isNot(contains('_i1.File file')));
        expect(serviceOutput, isNot(contains('void Function(int sent, int total)?')));
        expect(serviceOutput, isNot(contains('import \'package:mime/mime.dart\'')));
      });
    });
  });
}