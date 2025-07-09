# Flutter Service Template - Simple DTOs & Either

A simple template for creating Flutter services with DTOs and Either error handling.

## Directory Structure

```
lib/
├── dtos/
│   └── user_dto.dart
├── models/
│   └── api_error.dart
└── services/
    └── user_service.dart
```

## API Error Model

```dart
// models/api_error.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;
}
```

## DTOs

```dart
// dtos/user_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

// Response DTOs
@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'is_verified') required bool isVerified,
    List<String>? roles,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

@freezed
class UsersListDto with _$UsersListDto {
  const factory UsersListDto({
    required List<UserDto> users,
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'has_next') required bool hasNext,
    @JsonKey(name: 'has_previous') required bool hasPrevious,
  }) = _UsersListDto;

  factory UsersListDto.fromJson(Map<String, dynamic> json) => _$UsersListDtoFromJson(json);
}

@freezed
class UserProfileDto with _$UserProfileDto {
  const factory UserProfileDto({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'social_links') Map<String, String>? socialLinks,
    @JsonKey(name: 'preferences') Map<String, dynamic>? preferences,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'last_login_at') String? lastLoginAt,
    @JsonKey(name: 'login_count') int? loginCount,
  }) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, dynamic> json) => _$UserProfileDtoFromJson(json);
}

// Request DTOs
@freezed
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation') required String passwordConfirmation,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'accept_terms') bool? acceptTerms,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) => _$CreateUserDtoFromJson(json);
}

@freezed
class UpdateUserDto with _$UpdateUserDto {
  const factory UpdateUserDto({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? bio,
    String? location,
    String? website,
  }) = _UpdateUserDto;

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) => _$UpdateUserDtoFromJson(json);
}

@freezed
class UpdatePasswordDto with _$UpdatePasswordDto {
  const factory UpdatePasswordDto({
    @JsonKey(name: 'current_password') required String currentPassword,
    @JsonKey(name: 'new_password') required String newPassword,
    @JsonKey(name: 'new_password_confirmation') required String newPasswordConfirmation,
  }) = _UpdatePasswordDto;

  factory UpdatePasswordDto.fromJson(Map<String, dynamic> json) => _$UpdatePasswordDtoFromJson(json);
}

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String email,
    required String password,
    @JsonKey(name: 'remember_me') bool? rememberMe,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}

@freezed
class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    required UserDto user,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) => _$LoginResponseDtoFromJson(json);
}

@freezed
class UserStatsDto with _$UserStatsDto {
  const factory UserStatsDto({
    @JsonKey(name: 'total_users') required int totalUsers,
    @JsonKey(name: 'active_users') required int activeUsers,
    @JsonKey(name: 'verified_users') required int verifiedUsers,
    @JsonKey(name: 'new_users_today') required int newUsersToday,
    @JsonKey(name: 'new_users_week') required int newUsersWeek,
    @JsonKey(name: 'new_users_month') required int newUsersMonth,
  }) = _UserStatsDto;

  factory UserStatsDto.fromJson(Map<String, dynamic> json) => _$UserStatsDtoFromJson(json);
}
```

## Service Implementation

```dart
// services/user_service.dart
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../dtos/user_dto.dart';
import '../models/api_error.dart';

class UserService {
  final Dio _dio;
  static const String baseUrl = 'https://api.example.com';

  UserService(this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
  }

  // GET /api/v1/users
  Future<Either<ApiError, UsersListDto>> getUsers({
    int page = 1,
    int perPage = 20,
    String? search,
    bool? isActive,
    String? sortBy,
    String? sortOrder,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'per_page': perPage,
      };
      
      if (search != null) queryParams['search'] = search;
      if (isActive != null) queryParams['is_active'] = isActive;
      if (sortBy != null) queryParams['sort_by'] = sortBy;
      if (sortOrder != null) queryParams['sort_order'] = sortOrder;

      final response = await _dio.get(
        '/api/v1/users',
        queryParameters: queryParams,
      );

      final usersListDto = UsersListDto.fromJson(response.data);
      return Right(usersListDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // GET /api/v1/users/{id}
  Future<Either<ApiError, UserDto>> getUserById(String id) async {
    try {
      final response = await _dio.get('/api/v1/users/$id');
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // GET /api/v1/users/{id}/profile
  Future<Either<ApiError, UserProfileDto>> getUserProfile(String id) async {
    try {
      final response = await _dio.get('/api/v1/users/$id/profile');
      final userProfileDto = UserProfileDto.fromJson(response.data);
      return Right(userProfileDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // POST /api/v1/users
  Future<Either<ApiError, UserDto>> createUser(CreateUserDto createUserDto) async {
    try {
      final response = await _dio.post(
        '/api/v1/users',
        data: createUserDto.toJson(),
      );
      
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // PUT /api/v1/users/{id}
  Future<Either<ApiError, UserDto>> updateUser(
    String id, 
    UpdateUserDto updateUserDto,
  ) async {
    try {
      final response = await _dio.put(
        '/api/v1/users/$id',
        data: updateUserDto.toJson(),
      );
      
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // DELETE /api/v1/users/{id}
  Future<Either<ApiError, bool>> deleteUser(String id) async {
    try {
      await _dio.delete('/api/v1/users/$id');
      return const Right(true);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // PATCH /api/v1/users/{id}/activate
  Future<Either<ApiError, UserDto>> activateUser(String id) async {
    try {
      final response = await _dio.patch('/api/v1/users/$id/activate');
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // PATCH /api/v1/users/{id}/deactivate
  Future<Either<ApiError, UserDto>> deactivateUser(String id) async {
    try {
      final response = await _dio.patch('/api/v1/users/$id/deactivate');
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // POST /api/v1/auth/login
  Future<Either<ApiError, LoginResponseDto>> login(LoginDto loginDto) async {
    try {
      final response = await _dio.post(
        '/api/v1/auth/login',
        data: loginDto.toJson(),
      );
      
      final loginResponseDto = LoginResponseDto.fromJson(response.data);
      return Right(loginResponseDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // POST /api/v1/auth/logout
  Future<Either<ApiError, bool>> logout() async {
    try {
      await _dio.post('/api/v1/auth/logout');
      return const Right(true);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // PUT /api/v1/users/{id}/password
  Future<Either<ApiError, bool>> updatePassword(
    String id, 
    UpdatePasswordDto updatePasswordDto,
  ) async {
    try {
      await _dio.put(
        '/api/v1/users/$id/password',
        data: updatePasswordDto.toJson(),
      );
      return const Right(true);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // POST /api/v1/users/{id}/verify
  Future<Either<ApiError, UserDto>> verifyUser(String id, String verificationCode) async {
    try {
      final response = await _dio.post(
        '/api/v1/users/$id/verify',
        data: {'verification_code': verificationCode},
      );
      
      final userDto = UserDto.fromJson(response.data);
      return Right(userDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // POST /api/v1/users/{id}/resend-verification
  Future<Either<ApiError, bool>> resendVerification(String id) async {
    try {
      await _dio.post('/api/v1/users/$id/resend-verification');
      return const Right(true);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // GET /api/v1/users/stats
  Future<Either<ApiError, UserStatsDto>> getUserStats() async {
    try {
      final response = await _dio.get('/api/v1/users/stats');
      final userStatsDto = UserStatsDto.fromJson(response.data);
      return Right(userStatsDto);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // GET /api/v1/users/search
  Future<Either<ApiError, List<UserDto>>> searchUsers(String query) async {
    try {
      final response = await _dio.get(
        '/api/v1/users/search',
        queryParameters: {'q': query},
      );
      
      final users = (response.data as List)
          .map((json) => UserDto.fromJson(json))
          .toList();
      return Right(users);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  // Simplified error handling
  ApiError _handleError(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode;
      
      // Try to extract message from response
      String message = 'An error occurred';
      if (response?.data != null) {
        try {
          final data = response!.data;
          if (data is Map<String, dynamic>) {
            message = data['message'] ?? data['error'] ?? message;
          }
        } catch (_) {}
      }
      
      // Use Dio's error message as fallback
      message = error.message ?? message;
      
      return ApiError(
        message: message,
        statusCode: statusCode,
        type: error.type.name,
      );
    }
    
    // Handle JSON parsing errors and other exceptions
    return ApiError(
      message: error.toString(),
      type: 'parse_error',
    );
  }
}
```
