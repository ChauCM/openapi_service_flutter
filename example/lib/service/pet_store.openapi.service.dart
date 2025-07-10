// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i1;

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'pet_store.openapi.dtos.dart';

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
  Future<Either<ApiError, void>> updatePet(UpdatePetRequestDto body) async {
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
  Future<Either<ApiError, void>> addPet(AddPetRequestDto body) async {
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
      {required List<FindPetsByStatusStatusDto> status}) async {
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
  Future<Either<ApiError, GetPetByIdResponseDto>> getPetById(
      {required int petId}) async {
    try {
      final response = await _dio.get('/pet/$petId');
      final result = GetPetByIdResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, UploadFileResponseDto>> uploadFile(
    _i1.Uint8List body, {
    required int petId,
  }) async {
    try {
      final response = await _dio.post(
        '/pet/$petId/uploadImage',
        data: body,
      );
      final result = UploadFileResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<Either<ApiError, Map<String, int>>> getInventory() async {
    try {
      final response = await _dio.get('/store/inventory');
      final result = (response.data as Map<String, int>);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Place an order for a pet
  /// post: /store/order
  Future<Either<ApiError, PlaceOrderResponseDto>> placeOrder(
      PlaceOrderRequestDto body) async {
    try {
      final response = await _dio.post(
        '/store/order',
        data: body.toJson(),
      );
      final result = PlaceOrderResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<Either<ApiError, GetOrderByIdResponseDto>> getOrderById(
      {required int orderId}) async {
    try {
      final response = await _dio.get('/store/order/$orderId');
      final result = GetOrderByIdResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, void>> createUser(CreateUserRequestDto body) async {
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
  Future<Either<ApiError, GetUserByNameResponseDto>> getUserByName(
      {required String username}) async {
    try {
      final response = await _dio.get('/user/$username');
      final result = GetUserByNameResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<Either<ApiError, void>> updateUser(
    UpdateUserRequestDto body, {
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
