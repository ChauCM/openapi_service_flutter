// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import

import 'dart:typed_data' as _i1;

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'pet_store.openapi.g.dart';
part 'pet_store.openapi.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;
}

enum OrderDtoStatusDto {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension OrderDtoStatusDtoExt on OrderDtoStatusDto {
  static final Map<String, OrderDtoStatusDto> _names = {
    'placed': OrderDtoStatusDto.placed,
    'approved': OrderDtoStatusDto.approved,
    'delivered': OrderDtoStatusDto.delivered,
  };
  static OrderDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for OrderDtoStatusDto');
  String get name => toString().substring(18);
}

@freezed
sealed class OrderDto with _$OrderDto {
  factory OrderDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'petId') int? petId,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'shipDate') DateTime? shipDate,
    @JsonKey(name: 'status') OrderDtoStatusDto? status,
    @JsonKey(name: 'complete') @Default(false) bool complete,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}

@freezed
sealed class CategoryDto with _$CategoryDto {
  factory CategoryDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

@freezed
sealed class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'userStatus') int? userStatus,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
sealed class TagDto with _$TagDto {
  factory TagDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}

enum PetDtoStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension PetDtoStatusDtoExt on PetDtoStatusDto {
  static final Map<String, PetDtoStatusDto> _names = {
    'available': PetDtoStatusDto.available,
    'pending': PetDtoStatusDto.pending,
    'sold': PetDtoStatusDto.sold,
  };
  static PetDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for PetDtoStatusDto');
  String get name => toString().substring(16);
}

@freezed
sealed class PetDto with _$PetDto {
  factory PetDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') List<TagDto>? tags,
    @JsonKey(name: 'status') PetDtoStatusDto? status,
  }) = _PetDto;

  factory PetDto.fromJson(Map<String, dynamic> json) => _$PetDtoFromJson(json);
}

@freezed
sealed class ApiResponseDto with _$ApiResponseDto {
  factory ApiResponseDto({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'message') String? message,
  }) = _ApiResponseDto;

  factory ApiResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseDtoFromJson(json);
}

enum FindPetsByStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension FindPetsByStatusDtoExt on FindPetsByStatusDto {
  static final Map<String, FindPetsByStatusDto> _names = {
    'available': FindPetsByStatusDto.available,
    'pending': FindPetsByStatusDto.pending,
    'sold': FindPetsByStatusDto.sold,
  };
  static FindPetsByStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FindPetsByStatusDto');
  String get name => toString().substring(20);
}

@freezed
sealed class UpdatePetWithFormRequestDto with _$UpdatePetWithFormRequestDto {
  factory UpdatePetWithFormRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
  }) = _UpdatePetWithFormRequestDto;

  factory UpdatePetWithFormRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePetWithFormRequestDtoFromJson(json);
}

@freezed
sealed class GetInventoryResponseDto with _$GetInventoryResponseDto {
  factory GetInventoryResponseDto() = _GetInventoryResponseDto;

  factory GetInventoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetInventoryResponseDtoFromJson(json);
}

class PetStoreService {
  PetStoreService(this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 10);
  }

  static const String baseUrl = 'https://api.example.com';

  final Dio _dio;

  /// Update an existing pet
  /// put: /pet
  Future<Either<ApiError, void>> updatePet(PetDto body) async {
    try {
      final _ = await _dio.put(
        '/pet',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Add a new pet to the store
  /// post: /pet
  Future<Either<ApiError, void>> addPet(PetDto body) async {
    try {
      final _ = await _dio.post(
        '/pet',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  Future<Either<ApiError, List<PetDto>>> findPetsByStatus(
      {required List<FindPetsByStatusDto> status}) async {
    try {
      final queryParams = <String, dynamic>{};
      queryParams['status'] = status;

      final response = await _dio.get(
        '/pet/findByStatus',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<PetDto>));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<Either<ApiError, List<PetDto>>> findPetsByTags(
      {required List<String> tags}) async {
    try {
      final queryParams = <String, dynamic>{};
      queryParams['tags'] = tags;

      final response = await _dio.get(
        '/pet/findByTags',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<PetDto>));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  Future<Either<ApiError, PetDto>> getPetById({required int petId}) async {
    try {
      final response = await _dio.get('/pet/$petId');
      final result = PetDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  Future<Either<ApiError, void>> updatePetWithForm(
    UpdatePetWithFormRequestDto body, {
    required int petId,
  }) async {
    try {
      final _ = await _dio.post(
        '/pet/$petId',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<Either<ApiError, void>> deletePet({
    String? apiKey,
    required int petId,
  }) async {
    try {
      final _ = await _dio.delete('/pet/$petId');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<Either<ApiError, ApiResponseDto>> uploadFile(
    _i1.Uint8List body, {
    required int petId,
  }) async {
    try {
      final response = await _dio.post(
        '/pet/$petId/uploadImage',
        data: body,
      );
      final result = ApiResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<Either<ApiError, GetInventoryResponseDto>> getInventory() async {
    try {
      final response = await _dio.get('/store/inventory');
      final result = GetInventoryResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Place an order for a pet
  /// post: /store/order
  Future<Either<ApiError, OrderDto>> placeOrder(OrderDto body) async {
    try {
      final response = await _dio.post(
        '/store/order',
        data: body.toJson(),
      );
      final result = OrderDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<Either<ApiError, OrderDto>> getOrderById(
      {required int orderId}) async {
    try {
      final response = await _dio.get('/store/order/$orderId');
      final result = OrderDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<Either<ApiError, void>> deleteOrder({required int orderId}) async {
    try {
      final _ = await _dio.delete('/store/order/$orderId');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  Future<Either<ApiError, void>> createUser(UserDto body) async {
    try {
      final _ = await _dio.post(
        '/user',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  Future<Either<ApiError, void>> createUsersWithArrayInput(
      List<UserDto> body) async {
    try {
      final _ = await _dio.post(
        '/user/createWithArray',
        data: body,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<Either<ApiError, void>> createUsersWithListInput(
      List<UserDto> body) async {
    try {
      final _ = await _dio.post(
        '/user/createWithList',
        data: body,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Logs user into the system
  /// get: /user/login
  Future<Either<ApiError, String>> loginUser({
    required String username,
    required String password,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      queryParams['username'] = username;
      queryParams['password'] = password;

      final response = await _dio.get(
        '/user/login',
        queryParameters: queryParams,
      );
      final result = (response.data as String);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<Either<ApiError, void>> logoutUser() async {
    try {
      final _ = await _dio.get('/user/logout');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Get user by user name
  /// get: /user/{username}
  Future<Either<ApiError, UserDto>> getUserByName(
      {required String username}) async {
    try {
      final response = await _dio.get('/user/$username');
      final result = UserDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<Either<ApiError, void>> updateUser(
    UserDto body, {
    required String username,
  }) async {
    try {
      final _ = await _dio.put(
        '/user/$username',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<Either<ApiError, void>> deleteUser({required String username}) async {
    try {
      final _ = await _dio.delete('/user/$username');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  ApiError _handleError(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode;

      var message = 'An error occurred';
      if (response?.data case final data?) {
        try {
          if (data is Map<String, dynamic>) {
            message = data['message'];
          }
        } catch (_) {}
      }

      message = error.message ?? 'An error occurred';
      return ApiError(
        message: message,
        statusCode: statusCode,
        type: error.type.name,
      );
    }

    return ApiError(
      message: error.toString(),
      type: 'parse_error',
    );
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
