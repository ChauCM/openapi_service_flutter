// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'test_api.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';

class TestApiService {
  TestApiService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// Create new user
  /// post: /user/register
  Future<Either<ApiError, void>> userRegisterPost(
      RegisterRequestDto body) async {
    try {
      final _ = await _dio.post(
        '/user/register',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/user/register',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  Future<Either<ApiError, String>> helloNameHtmlGet() async {
    try {
      final response = await _dio.get('/hello/{name}/html');
      final result = (response.data as String);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/hello/{name}/html',
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
    final queryParams = <String, dynamic>{};
    try {
      if (salutation != null) queryParams['salutation'] = salutation;

      final response = await _dio.get(
        '/hello/{name}',
        queryParameters: queryParams,
      );
      final result = HelloResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/hello/{name}',
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
    try {
      final response = await _dio.put(
        '/hello/{name}',
        data: body.toJson(),
      );
      final result = HelloResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/hello/{name}',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// details of uuid.
  /// get: /uuidExample/{messageId}
  Future<Either<ApiError, UuidExampleMessageIdGetResponseDto>>
      uuidExampleMessageIdGet() async {
    try {
      final response = await _dio.get('/uuidExample/{messageId}');
      final result = UuidExampleMessageIdGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/uuidExample/{messageId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /hello/integer
  Future<Either<ApiError, void>> helloIntegerPut(int body) async {
    try {
      final _ = await _dio.put(
        '/hello/integer',
        data: body,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/hello/integer',
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
