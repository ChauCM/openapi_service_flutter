# OpenAPI Service Flutter

A Dart code generator that creates type-safe client libraries from OpenAPI specifications for Flutter applications. This package generates clean, maintainable code with proper error handling and serialization.

## Features

- 🚀 **Type-safe code generation** from OpenAPI 3.0+ specifications
- 📦 **Separate DTO and Service files** for better organization
- 🔒 **Freezed integration** for immutable data classes
- 🌐 **Dio HTTP client** with proper error handling
- ⚡ **Either-based error handling** using either_dart
- 🎯 **Enum support** with JSON value annotations
- 📁 **Binary file upload** support with progress callbacks
- 🔧 **Build runner integration** for seamless development

## Quick Start

### 1. Install Required Dependencies

Add all necessary packages to your `pubspec.yaml`:

```yaml
dependencies:
  # HTTP client and functional programming
  dio: ^5.3.2
  either_dart: ^1.0.0
  
  # Code generation annotations
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  # Code generation tools
  openapi_service_flutter: ^2.0.1
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

### 2. Get Your OpenAPI Specification

You need an OpenAPI specification file from your backend API. Here's how to get it:

#### Option A: Download from Swagger UI
1. Open your API's Swagger documentation (usually at `https://your-api.com/swagger` or `/docs`)
2. Look for a "Download" button or link to get the OpenAPI spec
3. Save as JSON: `openapi.json` or YAML: `openapi.yaml`

#### Option B: Download from Scalar
1. If your API uses Scalar documentation
2. Look for export options in the documentation interface
3. Download the OpenAPI specification

#### Option C: Generate from your backend
Many frameworks can generate OpenAPI specs:
- **FastAPI**: Automatically available at `/openapi.json`
- **Spring Boot**: Use Springdoc OpenAPI
- **Express.js**: Use swagger-jsdoc and swagger-ui-express
- **Django**: Use drf-spectacular

### 3. Place Your OpenAPI File

Create the services directory and place your OpenAPI specification:

```bash
mkdir -p lib/services
```

Then place your file at:
- `lib/services/your_backend.openapi.json` (JSON format), or
- `lib/services/your_backend.openapi.yaml` (YAML format)

**Example structure:**
```
lib/
  services/
    my_api.openapi.json       # Your OpenAPI specification
    my_api.openapi.dtos.dart  # Generated DTOs (after build)
    my_api.openapi.service.dart # Generated service (after build)
```

### 4. Configure Build Runner

Create `build.yaml` in your project root:

```yaml
targets:
  $default:
    builders:
      openapi_service_flutter:
        options:
          # Optional: filter endpoints by prefix
          prefixFilter: ''
          includeFilterPrefix: true
```

### 5. Generate Your Client Code

Run the code generator:

```bash
# Clean and generate fresh code
dart run build_runner build --delete-conflicting-outputs

# Or just generate
dart run build_runner build
```

This creates two files for each `.openapi.json/.yaml` file:
- `your_backend.openapi.dtos.dart` - Data models with Freezed
- `your_backend.openapi.service.dart` - HTTP service methods

### 6. Use Your Generated Client

```dart
class ApiClient {
  late final MyApiService _apiService;
  late final Dio _dio;

  ApiClient({String? baseUrl}) {
    _dio = Dio();
    _apiService = MyApiService(
      _dio,
      config: MyApiServiceConfig(
        baseUrl: baseUrl ?? 'https://api.yourbackend.com',
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
      ),
    );
  }

  MyApiService get api => _apiService;
}

// Usage
void main() async {
  final client = ApiClient(baseUrl: 'https://api.yourbackend.com');
  final result = await client.api.getUsers();
  
  result.fold(
    (error) => print('Error: ${error.message}'),
    (users) => print('Found ${users.length} users'),
  );
}
```

## Authentication Setup

```dart
class AuthenticatedApiClient {
  late final MyApiService _apiService;
  String? _token;

  AuthenticatedApiClient({String? baseUrl}) {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (_token != null) {
          options.headers['Authorization'] = 'Bearer $_token';
        }
        handler.next(options);
      },
      onError: (error, handler) {
        if (error.response?.statusCode == 401) {
          _token = null;
        }
        handler.next(error);
      },
    ));
    
    _apiService = MyApiService(dio, config: MyApiServiceConfig(
      baseUrl: baseUrl ?? 'https://api.yourbackend.com',
    ));
  }

  Future<void> login(String email, String password) async {
    final result = await _apiService.login(LoginRequest(
      email: email,
      password: password,
    ));
    
    result.fold(
      (error) => throw Exception('Login failed: ${error.message}'),
      (response) => _token = response.accessToken,
    );
  }

  MyApiService get api => _apiService;
}
```

## Generated Code Structure

### DTO Files (.openapi.dtos.dart)

```dart
@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'status') UserStatus? status,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => 
      _$UserDtoFromJson(json);
}

enum UserStatus {
  @JsonValue('active') active,
  @JsonValue('inactive') inactive,
  @JsonValue('pending') pending,
}
```

### Service Files (.openapi.service.dart)

```dart
class MyApiService {
  MyApiService(this._dio, {MyApiServiceConfig? config}) {
    final serviceConfig = config ?? MyApiServiceConfig();
    _dio.options.baseUrl = serviceConfig.baseUrl;
  }

  final Dio _dio;

  Future<Either<ApiError, List<UserDto>>> getUsers() async {
    try {
      final response = await _dio.get('/users');
      final result = (response.data as List)
          .map((item) => UserDto.fromJson(item))
          .toList();
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }
}
```

## Binary File Uploads

```dart
Future<Either<ApiError, UploadResponse>> uploadFile(
  Stream<List<int>> fileStream, {
  void Function(int, int)? onSendProgress,
}) async {
  try {
    final response = await _dio.post(
      '/upload',
      data: Stream.fromIterable(fileStream),
      options: Options(
        headers: {'Content-Type': 'application/octet-stream'},
      ),
      onSendProgress: onSendProgress,
    );
    return Right(UploadResponse.fromJson(response.data));
  } catch (e) {
    return Left(_handleError(e));
  }
}

// Usage
final file = File('path/to/file.pdf');
final result = await apiService.uploadFile(
  file.openRead(),
  onSendProgress: (sent, total) {
    print('Upload progress: ${(sent / total * 100).toStringAsFixed(1)}%');
  },
);
```

## Error Handling

```dart
final result = await apiService.getUser(123);

result.fold(
  (error) => print('API Error: ${error.message}'),
  (user) => print('User: ${user.name}'),
);

// Or use pattern matching
switch (result) {
  case Left(value: final error):
    // Handle error
    break;
  case Right(value: final user):
    // Handle success
    break;
}
```

## Integration with BLoC

```dart
class UserCubit extends Cubit<UserState> {
  final MyApiService _apiService;
  
  UserCubit(this._apiService) : super(UserInitial());
  
  Future<void> loadUsers() async {
    emit(UserLoading());
    final result = await _apiService.getUsers();
    result.fold(
      (error) => emit(UserError(error.message)),
      (users) => emit(UserLoaded(users)),
    );
  }
}
```

## Configuration Options

Customize code generation in `build.yaml`:

```yaml
targets:
  $default:
    builders:
      openapi_service_flutter:
        options:
          # Only generate endpoints starting with specific prefix
          prefixFilter: '/api/v1'
          includeFilterPrefix: true
```

## Troubleshooting

### Common Issues

1. **Build fails**: Run `dart run build_runner clean` then rebuild
2. **Import errors**: Ensure all dependencies are in `pubspec.yaml`
3. **Type errors**: Check your OpenAPI spec for missing required fields
4. **Network errors**: Verify base URL and network connectivity

### Getting OpenAPI Specs

If you can't find your API's OpenAPI specification:

1. **Check common endpoints**:
   - `/openapi.json`
   - `/swagger.json`
   - `/api/openapi.json`
   - `/docs/openapi.json`

2. **Ask your backend team** for the OpenAPI/Swagger specification

3. **Generate manually** using tools like Postman or Insomnia

### Development Commands

```bash
# Clean and regenerate all code
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs

# Watch for changes (auto-regenerate)
dart run build_runner watch


## Examples

Check the `example/` directory for complete examples:
- Basic CRUD operations
- Authentication flows
- File uploads
- Error handling patterns

## License

MIT License - see LICENSE file for details.