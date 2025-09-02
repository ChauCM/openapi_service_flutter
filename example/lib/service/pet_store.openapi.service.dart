// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i1;

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'pet_store.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';
import 'package:mime/mime.dart';

class PetStoreService {
  PetStoreService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// Update an existing pet
  /// put: /pet
  Future<Either<ApiError, void>> updatePet(PetDto body) async {
    final endpoint = '/pet';
    try {
      final _ = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Add a new pet to the store
  /// post: /pet
  Future<Either<ApiError, void>> addPet(PetDto body) async {
    final endpoint = '/pet';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  Future<Either<ApiError, List<PetDto>>> findPetsByStatus(
      {required List<FindPetsByStatusStatusDto> status}) async {
    final endpoint = '/pet/findByStatus';
    final queryParams = <String, dynamic>{};
    try {
      queryParams['status'] = status;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => PetDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<Either<ApiError, List<PetDto>>> findPetsByTags(
      {required List<String> tags}) async {
    final endpoint = '/pet/findByTags';
    final queryParams = <String, dynamic>{};
    try {
      queryParams['tags'] = tags;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => PetDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  Future<Either<ApiError, PetDto>> getPetById({required int petId}) async {
    final endpoint = '/pet/$petId';
    try {
      final response = await _dio.get(endpoint);
      final result = PetDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  Future<Either<ApiError, void>> updatePetWithForm(
    UpdatePetWithFormRequestDto body, {
    required int petId,
  }) async {
    final endpoint = '/pet/$petId';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<Either<ApiError, void>> deletePet({
    String? apiKey,
    required int petId,
  }) async {
    final endpoint = '/pet/$petId';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<Either<ApiError, ApiResponseDto>> uploadFile(
    _i1.File file, {
    required int petId,
    void Function(int sent, int total)? onProgress,
  }) async {
    final endpoint = '/pet/$petId/uploadImage';
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        endpoint,
        data: file.openRead(),
        onSendProgress: onProgress,
        options: Options(headers: <String, dynamic>{
          'Content-Length': length.toString(),
          'Content-Type': mime,
        }),
      );
      final result = ApiResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: file,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<Either<ApiError, Map<String, int>>> getInventory() async {
    final endpoint = '/store/inventory';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as Map<String, int>);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Place an order for a pet
  /// post: /store/order
  Future<Either<ApiError, OrderDto>> placeOrder(OrderDto body) async {
    final endpoint = '/store/order';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = OrderDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<Either<ApiError, OrderDto>> getOrderById(
      {required int orderId}) async {
    final endpoint = '/store/order/$orderId';
    try {
      final response = await _dio.get(endpoint);
      final result = OrderDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<Either<ApiError, void>> deleteOrder({required int orderId}) async {
    final endpoint = '/store/order/$orderId';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  Future<Either<ApiError, void>> createUser(UserDto body) async {
    final endpoint = '/user';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  Future<Either<ApiError, void>> createUsersWithArrayInput(
      List<UserDto> body) async {
    final endpoint = '/user/createWithArray';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<Either<ApiError, void>> createUsersWithListInput(
      List<UserDto> body) async {
    final endpoint = '/user/createWithList';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Logs user into the system
  /// get: /user/login
  Future<Either<ApiError, String>> loginUser({
    required String username,
    required String password,
  }) async {
    final endpoint = '/user/login';
    final queryParams = <String, dynamic>{};
    try {
      queryParams['username'] = username;
      queryParams['password'] = password;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as String);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<Either<ApiError, void>> logoutUser() async {
    final endpoint = '/user/logout';
    try {
      final _ = await _dio.get(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user by user name
  /// get: /user/{username}
  Future<Either<ApiError, UserDto>> getUserByName(
      {required String username}) async {
    final endpoint = '/user/$username';
    try {
      final response = await _dio.get(endpoint);
      final result = UserDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
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
    final endpoint = '/user/$username';
    try {
      final _ = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<Either<ApiError, void>> deleteUser({required String username}) async {
    final endpoint = '/user/$username';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
