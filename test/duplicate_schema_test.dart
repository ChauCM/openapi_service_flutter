import 'package:test/test.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';

void main() {
  group('Duplicate Schema Detection Tests', () {
    test('detects and merges numbered duplicate schemas', () async {
      const yamlSource = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /api/test1:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/AccountDto'
  /api/test2:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/AccountDto2'
components:
  schemas:
    AccountDto:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        email:
          type: string
      required:
        - id
        - name
    AccountDto2:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        email:
          type: string
      required:
        - id
        - name
''';

      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlSource);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'Test',
        partFileName: 'test.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final output = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Check that only AccountDto is generated, not AccountDto2Dto
      expect(output, contains('sealed class AccountDto'));
      expect(output, isNot(contains('sealed class AccountDto2Dto')));
      
      // Check that the DTO contains all expected fields
      expect(output, contains('@JsonKey(name: \'id\') required int id'));
      expect(output, contains('@JsonKey(name: \'name\') required String name'));
      expect(output, contains('@JsonKey(name: \'email\') String? email'));
    });

    test('does not merge schemas with different structures', () async {
      const yamlSource = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /api/users:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/UserDto'
  /api/products:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/ProductDto'
components:
  schemas:
    UserDto:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        email:
          type: string
    ProductDto:
      type: object
      properties:
        id:
          type: integer
        name:
          type: string
        price:
          type: number
''';

      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlSource);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'Test',
        partFileName: 'test.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final output = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Both DTOs should be generated since they have different properties
      expect(output, contains('sealed class UserDto'));
      expect(output, contains('sealed class ProductDto'));
      
      // Verify they have different properties
      expect(output, contains('@JsonKey(name: \'email\') String? email'));
      expect(output, contains('@JsonKey(name: \'price\') num? price'));
    });

    test('merges multiple numbered duplicates (e.g., Dto, Dto2, Dto3)', () async {
      const yamlSource = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /api/test1:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/DataDto'
  /api/test2:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/DataDto2'
  /api/test3:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/DataDto3'
components:
  schemas:
    DataDto:
      type: object
      properties:
        value:
          type: string
    DataDto2:
      type: object
      properties:
        value:
          type: string
    DataDto3:
      type: object
      properties:
        value:
          type: string
''';

      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlSource);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'Test',
        partFileName: 'test.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final output = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Only DataDto should be generated
      expect(output, contains('sealed class DataDto'));
      expect(output, isNot(contains('sealed class DataDto2Dto')));
      expect(output, isNot(contains('sealed class DataDto3Dto')));
    });

    test('preserves NullableOf pattern schemas separately', () async {
      const yamlSource = '''
openapi: 3.0.0
info:
  title: Test API
  version: 1.0.0
paths:
  /api/test1:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/StatusEnum'
  /api/test2:
    get:
      responses:
        '200':
          description: Success
          content:
            application/json:
              schema:
                \$ref: '#/components/schemas/NullableOfStatusEnum'
components:
  schemas:
    StatusEnum:
      type: string
      enum:
        - active
        - inactive
        - pending
    NullableOfStatusEnum:
      type: string
      enum:
        - active
        - inactive
        - pending
        - null
''';

      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlSource);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'Test',
        partFileName: 'test.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final output = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // NullableOf pattern is handled differently - it gets mapped to the base enum
      // but doesn't create a separate enum (the null value is filtered out)
      expect(output, contains('enum StatusEnumDto'));
      expect(output, isNot(contains('enum NullableOfStatusEnumDto')));
    });
  });
}