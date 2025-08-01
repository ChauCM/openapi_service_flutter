// ignore_for_file: lines_longer_than_80_chars

import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  group('Service Enhancements', () {
    group('Service Configuration', () {
      test('should generate service with ErrorHandler parameter', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check service constructor with ErrorHandler
        expect(result, contains('TestAPIService('));
        expect(result, contains('this._dio'));
        expect(result, contains('ErrorHandler? errorHandler'));
        expect(result, contains('_errorHandler = errorHandler ?? const DefaultErrorHandler()'));
        expect(result, contains('final Dio _dio;'));
        expect(result, contains('late final ErrorHandler _errorHandler;'));
      });

      test('should use runtime imports for error handling', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check runtime imports
        expect(result, contains('import \'package:openapi_service_flutter/runtime.dart\';'));
        expect(result, contains('import \'package:either_dart/either.dart\';'));
        expect(result, contains('import \'package:dio/dio.dart\';'));
        
        // Check error handling integration
        expect(result, contains('Future<Either<ApiError,'));
        expect(result, contains('_errorHandler.handleError('));
      });

      test('should support custom API names in service class', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: CustomAPI
  version: 1.0.0
paths:
  /data:
    post:
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: object
                properties:
                  id:
                    type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check that custom API name is used in service class
        expect(result, contains('class CustomAPIService'));
        expect(result, contains('CustomAPIService('));
        expect(result, contains('this._dio'));
        expect(result, contains('ErrorHandler? errorHandler'));
      });
    });

    group('Runtime Error Handling', () {
      test('should use RequestContext in error handling',
          () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check RequestContext usage
        expect(result, contains('final requestContext = RequestContext('));
        expect(result, contains('method: \'GET\','));
        expect(result, contains('endpoint: \'/users\','));
        expect(result, contains('_errorHandler.handleError('));
        expect(result, contains('e,'));
        expect(result, contains('stackTrace,'));
        expect(result, contains('requestContext,'));
      });

      test('should include request body in RequestContext for POST requests', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    post:
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                name:
                  type: string
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: object
                properties:
                  id:
                    type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check RequestContext includes request body
        expect(result, contains('final requestContext = RequestContext('));
        expect(result, contains('method: \'POST\','));
        expect(result, contains('endpoint: \'/users\','));
        expect(result, contains('requestBody: body,'));
      });

      test('should return Left with ApiError for exceptions', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Check that exceptions return Left with ApiError
        expect(result, contains('} catch (e, stackTrace) {'));
        expect(result, contains('return Left(_errorHandler.handleError('));
        expect(result, contains('Future<Either<ApiError,'));
        expect(result, contains('return Right('));
      });
    });

    group('Integration Tests', () {
      test('should generate service with all enhancements combined', () {
        const yamlContent = '''
openapi: 3.0.0
info:
  title: Enhanced API
  version: 1.0.0
paths:
  /users:
    get:
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: object
                  properties:
                    id:
                      type: string
                    name:
                      type: string
    post:
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                name:
                  type: string
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: object
                properties:
                  id:
                    type: string
                  name:
                    type: string
''';

        final result = generateServiceLibrary(yamlContent);

        // Should contain all enhancements 
        expect(result, contains('class EnhancedAPIService'));
        expect(result, contains('ErrorHandler? errorHandler'));
        expect(result, contains('RequestContext('));

        // Should be valid Dart code (basic syntax check)
        expect(result, contains('class EnhancedAPIService'));
        expect(result, contains('Future<Either<ApiError,'));
      });
    });
  });
}
