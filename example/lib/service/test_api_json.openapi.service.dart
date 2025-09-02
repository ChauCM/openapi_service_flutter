// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'test_api_json.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';

class TestJsonApiService {
  TestJsonApiService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// Create new user
  /// post: /user/register
  Future<Either<ApiError, void>> userRegisterPost(
      RegisterRequestDto body) async {
    final endpoint = '/user/register';
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

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<Either<ApiError, HelloResponseDto>> helloNameGet(
      {String? salutation}) async {
    final endpoint = '/hello/{name}';
    final queryParams = <String, dynamic>{};
    try {
      if (salutation != null) queryParams['salutation'] = salutation;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = HelloResponseDto.fromJson(response.data);
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

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  Future<Either<ApiError, HelloResponseDto>> helloNamePut(
      HelloRequestDto body) async {
    final endpoint = '/hello/{name}';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = HelloResponseDto.fromJson(response.data);
      return Right(result);
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

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
