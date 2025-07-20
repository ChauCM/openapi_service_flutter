// Main test file that imports all organized test files
import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

// Import all test files
import 'binary_upload_test.dart' as binary_upload_tests;
import 'generator_functionality_test.dart' as generator_tests;
import 'prefix_filter_test.dart' as prefix_filter_tests;
import 'utils_test.dart' as utils_tests;

void main() {
  group('OpenApiServiceBuilder Test Suite', () {
    // Run binary upload tests
    group('Binary Upload', () {
      binary_upload_tests.main();
    });

    // Run generator functionality tests
    group('Generator Functionality', () {
      generator_tests.main();
    });

    // Run prefix filter tests
    group('Prefix Filtering', () {
      prefix_filter_tests.main();
    });

    // Run utils tests
    group('Utils and Core', () {
      utils_tests.main();
    });
  });

  // Legacy test that verifies multipart functionality still works
  group('Legacy Multipart Tests', () {
    test('generates multipart/form-data file upload services correctly', () async {
      final multipartApiYaml =
          await File('test/fixtures/multipart_api.openapi.yaml').readAsString();
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(multipartApiYaml);

      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'MultipartApi',
        partFileName: 'multipart_api.openapi.dtos.g.dart',
      );

      // Generate DTOs library
      final dtosLibrary = generator.generateDtosLibrary();
      final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
        dtosLibrary,
      );

      // Verify DTOs are generated for response schemas but NOT for multipart request bodies
      expect(dtosOutput, contains('class UploadResponseDto'));
      expect(dtosOutput, contains('class DocumentResponseDto'));
      expect(dtosOutput, isNot(contains('class UploadAvatarPostRequestDto')));
      expect(dtosOutput, isNot(contains('class UploadDocumentPostRequestDto')));
      expect(dtosOutput, isNot(contains('Uint8List')));
      expect(dtosOutput, isNot(contains('Uint8ListJsonConverter')));

      // Generate service library
      final serviceLibrary = generator.generateServiceLibrary('multipart_api');
      final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
        serviceLibrary,
      );

      // Verify service class is generated
      expect(serviceOutput, contains('class MultipartApiService'));
      expect(serviceOutput, contains('import \'dart:io\' as _i1'));
      expect(serviceOutput, contains('import \'package:dio/dio.dart\''));

      // Verify avatar upload method with File parameter and progress callback
      expect(serviceOutput, contains('uploadAvatarPost('));
      expect(serviceOutput, contains('_i1.File file'));
      expect(serviceOutput, contains('void Function(int sent, int total)? onProgress'));
      expect(serviceOutput, contains('Future<Either<ApiError, UploadResponseDto>>'));

      // Verify document upload method with File parameter and optional fields
      expect(serviceOutput, contains('uploadDocumentPost('));
      expect(serviceOutput, contains('_i1.File file'));
      expect(serviceOutput, contains('String title'));
      expect(serviceOutput, contains('UploadDocumentPostCategoryDto? category'));
      expect(serviceOutput, contains('bool? isPublic'));

      // Verify FormData usage
      expect(serviceOutput, contains('final formData = FormData()'));
      expect(serviceOutput, contains('formData.files.add(MapEntry('));
      expect(serviceOutput, contains('await MultipartFile.fromFile(file.path'));
      expect(serviceOutput, contains('filename: _getFileName(file.path)'));
      expect(serviceOutput, contains('data: formData'));
      expect(serviceOutput, contains('onSendProgress: onProgress'));

      // Verify filename extraction helper method
      expect(serviceOutput, contains('String _getFileName(String filePath)'));
      expect(serviceOutput, contains('final parts = filePath.replaceAll(r"\\", "/").split("/")'));
      expect(serviceOutput, contains('return parts.isNotEmpty ? parts.last : \'file\''));

      // Verify form fields are handled correctly
      expect(serviceOutput, contains('formData.fields.add(MapEntry(\'title\', title.toString()))'));
      expect(serviceOutput, contains('if (category != null)'));
      expect(serviceOutput, contains('formData.fields.add(MapEntry(\'category\', category.toString()))'));
      expect(serviceOutput, contains('if (isPublic != null)'));
      expect(serviceOutput, contains('formData.fields.add(MapEntry(\'isPublic\', isPublic.toString()))'));

      // Verify multiple files upload method
      expect(serviceOutput, contains('uploadMultiplePost('));
      
      // Verify no JSON serialization for multipart requests
      expect(serviceOutput, isNot(contains('body.toJson()')));
    });
  });
}