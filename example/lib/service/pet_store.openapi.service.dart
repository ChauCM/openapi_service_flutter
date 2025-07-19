// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i1;

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'pet_store.openapi.dtos.dart';

class PetStoreServiceConfig {
  const PetStoreServiceConfig({
    this.baseUrl = '',
    this.connectTimeout = const Duration(seconds: 60),
    this.receiveTimeout = const Duration(seconds: 60),
    this.interceptors = const [],
    this.onError,
  });

  final String baseUrl;

  final Duration connectTimeout;

  final Duration receiveTimeout;

  final List<Interceptor> interceptors;

  final void Function(
      dynamic error,
      StackTrace stackTrace,
      String endpoint,
      Map<String, dynamic> headers,
      dynamic requestBody,
      dynamic responseBody)? onError;
}

class PetStoreService {
  PetStoreService(
    this._dio, {
    PetStoreServiceConfig? config,
  }) {
    final serviceConfig = config ?? PetStoreServiceConfig();
    _onError = serviceConfig.onError;
    _dio.options.baseUrl = serviceConfig.baseUrl;
    _dio.options.connectTimeout = serviceConfig.connectTimeout;
    _dio.options.receiveTimeout = serviceConfig.receiveTimeout;
    _dio.interceptors.addAll(serviceConfig.interceptors);
  }

  final Dio _dio;

  late final void Function(
      dynamic error,
      StackTrace stackTrace,
      String endpoint,
      Map<String, dynamic> headers,
      dynamic requestBody,
      dynamic responseBody)? _onError;

  /// Update an existing pet
  /// put: /pet
  Future<Either<ApiError, void>> updatePet(PetDto body) async {
    try {
      final _ = await _dio.put(
        '/pet',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet',
      ));
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
      final mappedResult = result
          .map((item) => PetDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/findByStatus',
      ));
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
      final mappedResult = result
          .map((item) => PetDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/findByTags',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/$petId',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/$petId',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/$petId',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/pet/$petId/uploadImage',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/store/inventory',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/store/order',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/store/order/$orderId',
      ));
    }
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<Either<ApiError, void>> deleteOrder({required int orderId}) async {
    try {
      final _ = await _dio.delete('/store/order/$orderId');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/store/order/$orderId',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/createWithArray',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/createWithList',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/login',
      ));
    }
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<Either<ApiError, void>> logoutUser() async {
    try {
      final _ = await _dio.get('/user/logout');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/logout',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/$username',
      ));
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
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/$username',
      ));
    }
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<Either<ApiError, void>> deleteUser({required String username}) async {
    try {
      final _ = await _dio.delete('/user/$username');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/user/$username',
      ));
    }
  }

  ApiError _handleError(
    dynamic error,
    StackTrace stackTrace,
    String endpoint,
  ) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode ?? 0;

      final errorType = switch (statusCode) {
        401 => 'authentication_error',
        403 => 'authorization_error',
        404 => 'not_found_error',
        408 => 'timeout_error',
        422 => 'validation_error',
        429 => 'rate_limit_error',
        >= 500 => 'server_error',
        _ => error.type.name,
      };

      String message = error.message ?? 'An error occurred';
      if (response?.data case final data?) {
        message = _extractErrorMessage(data) ?? message;
      }

// Call onError callback if provided
      if (_onError != null) {
        try {
          final headers = response?.headers.map ?? <String, dynamic>{};
          final requestData = error.requestOptions.data;
          final responseData = response?.data;
          _onError(
              error, stackTrace, endpoint, headers, requestData, responseData);
        } catch (_) {
          // Ignore errors in callback to prevent recursive issues
        }
      }

      return ApiError(
        message: message,
        statusCode: statusCode,
        type: errorType,
      );
    }

// Call onError callback for unknown errors
    if (_onError != null) {
      try {
        _onError(error, stackTrace, endpoint, <String, dynamic>{}, null, null);
      } catch (_) {
        // Ignore errors in callback to prevent recursive issues
      }
    }

    return ApiError(
      message: error.toString(),
      type: 'unknown_error',
    );
  }

  String? _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      // Try common error message fields
      return data['message'] ??
          data['error'] ??
          data['detail'] ??
          data['error_description'];
    }

    if (data is String) {
      return data;
    }

    return null;
  }

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
