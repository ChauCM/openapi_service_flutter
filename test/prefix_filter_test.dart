import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('Prefix Filter Tests', () {
    group('prefix filter functionality', () {
      test('includes all endpoints by default (no filtering)', () async {
        final defaultBehaviorYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Default Behavior API
  x-dart-name: DefaultBehaviorApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health check
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(defaultBehaviorYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DefaultBehaviorApi',
          partFileName: 'default_behavior_api.openapi.dtos.g.dart',

          // Using default values - no prefixFilter or includeFilterPrefix specified
        );

        final serviceLibrary =
            generator.generateServiceLibrary('default_behavior_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include ALL endpoints by default (no filtering)
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, contains('healthGet'));
        expect(serviceOutput, contains('metricsGet'));
      });

      test('filters endpoints by /api prefix when explicitly set', () async {
        final prefixFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Prefix Filter API
  x-dart-name: PrefixFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /api/posts:
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                title:
                  type: string
              required:
                - title
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health check
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: object
                properties:
                  count:
                    type: integer
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(prefixFilterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'PrefixFilterApi',
          partFileName: 'prefix_filter_api.openapi.dtos.g.dart',

          prefixFilter: '/api', // explicitly set to test filtering
          includeFilterPrefix: true, // default value
        );

        final serviceLibrary =
            generator.generateServiceLibrary('prefix_filter_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include /api endpoints
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, contains('apiPostsPost'));

        // Should NOT include non-/api endpoints
        expect(serviceOutput, isNot(contains('healthGet')));
        expect(serviceOutput, isNot(contains('metricsGet')));

        // Should have correct method signatures for included endpoints
        expect(serviceOutput,
            contains('Future<Either<ApiError, List<String>>> apiUsersGet'));
        expect(serviceOutput,
            contains('Future<Either<ApiError, String>> apiPostsPost'));
      });

      test('includes custom prefix filter', () async {
        final customPrefixYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Custom Prefix API
  x-dart-name: CustomPrefixApi

paths:
  /v1/api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /v2/api/posts:
    get:
      responses:
        '200':
          description: Get posts
          content:
            application/json:
              schema:
                type: string
  /api/legacy:
    get:
      responses:
        '200':
          description: Legacy endpoint
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(customPrefixYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'CustomPrefixApi',
          partFileName: 'custom_prefix_api.openapi.dtos.g.dart',
          prefixFilter: '/v1/api',
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('custom_prefix_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should only include /v1/api endpoints
        expect(serviceOutput, contains('v1ApiUsersGet'));

        // Should NOT include other endpoints
        expect(serviceOutput, isNot(contains('v2ApiPostsGet')));
        expect(serviceOutput, isNot(contains('apiLegacyGet')));
        expect(serviceOutput, isNot(contains('healthGet')));
      });

      test(
          'removes prefix from method names when includeFilterPrefix is false',
          () async {
        final prefixRemovalYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Prefix Removal API
  x-dart-name: PrefixRemovalApi

paths:
  /api/v1/account:
    get:
      responses:
        '200':
          description: Get account
          content:
            application/json:
              schema:
                type: string
    put:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                name:
                  type: string
      responses:
        '200':
          description: Updated
          content:
            application/json:
              schema:
                type: string
  /api/v2/users:
    post:
      requestBody:
        required: true
        content:
          application/json:
            schema:
              type: object
              properties:
                email:
                  type: string
      responses:
        '201':
          description: Created
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(prefixRemovalYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'PrefixRemovalApi',
          partFileName: 'prefix_removal_api.openapi.dtos.g.dart',

          prefixFilter: '/api',
          includeFilterPrefix: false, // Remove prefix from method names
        );

        final serviceLibrary =
            generator.generateServiceLibrary('prefix_removal_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should generate method names without the /api prefix
        expect(serviceOutput, contains('v1AccountGet'));
        expect(serviceOutput, contains('v1AccountPut'));
        expect(serviceOutput, contains('v2UsersPost'));

        // Should NOT contain method names with api prefix
        expect(serviceOutput, isNot(contains('apiV1AccountGet')));
        expect(serviceOutput, isNot(contains('apiV1AccountPut')));
        expect(serviceOutput, isNot(contains('apiV2UsersPost')));
      });

      test('handles empty string prefix filter (no filtering)', () async {
        final noFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: No Filter API
  x-dart-name: NoFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
  /metrics:
    get:
      responses:
        '200':
          description: Metrics
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(noFilterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'NoFilterApi',
          partFileName: 'no_filter_api.openapi.dtos.g.dart',

          prefixFilter: '', // Empty string means no filtering
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('no_filter_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include ALL endpoints when prefix filter is empty
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, contains('healthGet'));
        expect(serviceOutput, contains('metricsGet'));
      });

      test('handles "./" prefix filter (no filtering)', () async {
        final dotSlashFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Dot Slash Filter API
  x-dart-name: DotSlashFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(dotSlashFilterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DotSlashFilterApi',
          partFileName: 'dot_slash_filter_api.openapi.dtos.g.dart',

          prefixFilter: './', // ./ means no filtering
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('dot_slash_filter_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include ALL endpoints when prefix filter is ./
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, contains('healthGet'));
      });

      test('handles "/" prefix filter (no filtering)', () async {
        final rootFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Root Filter API
  x-dart-name: RootFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(rootFilterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'RootFilterApi',
          partFileName: 'root_filter_api.openapi.dtos.g.dart',

          prefixFilter: '/', // / means no filtering
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('root_filter_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include ALL endpoints when prefix filter is /
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, contains('healthGet'));
      });

      test('generates DTOs only for filtered endpoints', () async {
        final dtosFilterYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: DTOs Filter API
  x-dart-name: DtosFilterApi

paths:
  /api/users:
    get:
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: object
                properties:
                  users:
                    type: array
                    items:
                      \$ref: '#/components/schemas/User'
  /health:
    get:
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: object
                properties:
                  status:
                    type: string
                  healthData:
                    \$ref: '#/components/schemas/HealthData'

components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: string
        name:
          type: string
      required:
        - id
        - name
    HealthData:
      type: object
      properties:
        uptime:
          type: integer
        memory:
          type: string
      required:
        - uptime
        - memory
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(dtosFilterYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'DtosFilterApi',
          partFileName: 'dtos_filter_api.openapi.dtos.g.dart',
          prefixFilter: '/api',
          includeFilterPrefix: true,
        );

        final dtosLibrary = generator.generateDtosLibrary();
        final dtosOutput = OpenApiServiceBuilderUtils.formatLibrary(
          dtosLibrary,
        );

        // Should generate DTO for User (used by /api endpoint)
        expect(dtosOutput, contains('class UserDto'));

        // Should NOT generate DTO for HealthData (used by non-/api endpoint)
        expect(dtosOutput, isNot(contains('class HealthDataDto')));

        final serviceLibrary =
            generator.generateServiceLibrary('dtos_filter_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should only include /api endpoint
        expect(serviceOutput, contains('apiUsersGet'));
        expect(serviceOutput, isNot(contains('healthGet')));
      });

      test('combines prefix filtering with operation IDs', () async {
        final operationIdYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Operation ID API
  x-dart-name: OperationIdApi

paths:
  /api/users:
    get:
      operationId: getAllUsers
      responses:
        '200':
          description: Get users
          content:
            application/json:
              schema:
                type: string
  /api/users/{id}:
    get:
      operationId: getUserById
      parameters:
        - name: id
          in: path
          required: true
          schema:
            type: string
      responses:
        '200':
          description: Get user
          content:
            application/json:
              schema:
                type: string
  /health:
    get:
      operationId: getHealthStatus
      responses:
        '200':
          description: Health
          content:
            application/json:
              schema:
                type: string
''';
        final api =
            OpenApiServiceBuilderUtils.loadApiFromYaml(operationIdYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'OperationIdApi',
          partFileName: 'operation_id_api.openapi.dtos.g.dart',

          prefixFilter: '/api',
          includeFilterPrefix:
              false, // This should have no effect when operationId is present
        );

        final serviceLibrary =
            generator.generateServiceLibrary('operation_id_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should use operation IDs for method names (ignoring prefix settings)
        expect(serviceOutput, contains('getAllUsers'));
        expect(serviceOutput, contains('getUserById'));

        // Should NOT include non-/api endpoints
        expect(serviceOutput, isNot(contains('getHealthStatus')));

        // Should have correct method signature for path parameter
        expect(serviceOutput, contains('getAllUsers()'));
        expect(serviceOutput, contains('getUserById({required String id})'));
      });
    });

    group('Complex prefix scenarios', () {
      test('handles nested prefix filtering', () async {
        final nestedPrefixYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Nested Prefix API
  x-dart-name: NestedPrefixApi

paths:
  /api/v1/admin/users:
    get:
      responses:
        '200':
          description: Get admin users
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /api/v1/public/users:
    get:
      responses:
        '200':
          description: Get public users
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /api/v2/admin/users:
    get:
      responses:
        '200':
          description: Get v2 admin users
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /public/info:
    get:
      responses:
        '200':
          description: Public info
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(nestedPrefixYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'NestedPrefixApi',
          partFileName: 'nested_prefix_api.openapi.dtos.g.dart',
          prefixFilter: '/api/v1/admin',
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('nested_prefix_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should only include endpoints matching the exact nested prefix
        expect(serviceOutput, contains('apiV1AdminUsersGet'));

        // Should NOT include other endpoints
        expect(serviceOutput, isNot(contains('apiV1PublicUsersGet')));
        expect(serviceOutput, isNot(contains('apiV2AdminUsersGet')));
        expect(serviceOutput, isNot(contains('publicInfoGet')));
      });

      test('handles prefix filtering with query parameters', () async {
        final queryParamsYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Query Params API
  x-dart-name: QueryParamsApi

paths:
  /api/search:
    get:
      parameters:
        - name: query
          in: query
          required: true
          schema:
            type: string
        - name: limit
          in: query
          schema:
            type: integer
            default: 10
        - name: offset
          in: query
          schema:
            type: integer
            default: 0
      responses:
        '200':
          description: Search results
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /health:
    get:
      responses:
        '200':
          description: Health check
          content:
            application/json:
              schema:
                type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(queryParamsYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'QueryParamsApi',
          partFileName: 'query_params_api.openapi.dtos.g.dart',
          prefixFilter: '/api',
          includeFilterPrefix: true,
        );

        final serviceLibrary =
            generator.generateServiceLibrary('query_params_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include filtered endpoint with all parameters
        expect(serviceOutput, contains('apiSearchGet'));
        expect(serviceOutput, contains('required String query'));
        expect(serviceOutput, contains('int? limit'));
        expect(serviceOutput, contains('int? offset'));

        // Should NOT include non-filtered endpoints
        expect(serviceOutput, isNot(contains('healthGet')));
      });

      test('handles prefix filtering with path parameters', () async {
        final pathParamsYaml = '''
openapi: 3.0.0
info:
  version: 1.0.0
  title: Path Params API
  x-dart-name: PathParamsApi

paths:
  /api/users/{userId}/posts/{postId}:
    get:
      parameters:
        - name: userId
          in: path
          required: true
          schema:
            type: string
        - name: postId
          in: path
          required: true
          schema:
            type: string
      responses:
        '200':
          description: Get user post
          content:
            application/json:
              schema:
                type: object
                properties:
                  title:
                    type: string
                  content:
                    type: string
  /public/posts/{postId}:
    get:
      parameters:
        - name: postId
          in: path
          required: true
          schema:
            type: string
      responses:
        '200':
          description: Get public post
          content:
            application/json:
              schema:
                type: object
                properties:
                  title:
                    type: string
''';
        final api = OpenApiServiceBuilderUtils.loadApiFromYaml(pathParamsYaml);

        final generator = OpenApiLibraryGenerator(
          api,
          baseName: 'PathParamsApi',
          partFileName: 'path_params_api.openapi.dtos.g.dart',
          prefixFilter: '/api',
          includeFilterPrefix: false, // Remove prefix from method names
        );

        final serviceLibrary =
            generator.generateServiceLibrary('path_params_api');
        final serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
          serviceLibrary,
        );

        // Should include filtered endpoint with path parameters and prefix removed
        expect(serviceOutput, contains('usersUserIdPostsPostIdGet'));
        expect(serviceOutput, contains('required String userId'));
        expect(serviceOutput, contains('required String postId'));

        // Should NOT include non-filtered endpoints
        expect(serviceOutput, isNot(contains('publicPostsPostIdGet')));
      });
    });
  });
}