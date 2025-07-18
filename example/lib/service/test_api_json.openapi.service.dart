// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'test_api_json.openapi.dtos.dart';

class TestJsonApiServiceConfig {
  const TestJsonApiServiceConfig({
    this.baseUrl = '',
    this.connectTimeout = const Duration(seconds: 60),
    this.receiveTimeout = const Duration(seconds: 60),
    this.interceptors = const [],
  });

  final String baseUrl;

  final Duration connectTimeout;

  final Duration receiveTimeout;

  final List<Interceptor> interceptors;
}

class TestJsonApiService {
  TestJsonApiService(
    this._dio, {
    TestJsonApiServiceConfig? config,
  }) {
    final serviceConfig = config ?? TestJsonApiServiceConfig();
    _dio.options.baseUrl = serviceConfig.baseUrl;
    _dio.options.connectTimeout = serviceConfig.connectTimeout;
    _dio.options.receiveTimeout = serviceConfig.receiveTimeout;
    _dio.interceptors.addAll(serviceConfig.interceptors);
  }

  final Dio _dio;

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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<Either<ApiError, HelloResponseDto>> helloNameGet(
      {String? salutation}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (salutation != null) queryParams['salutation'] = salutation;

      final response = await _dio.get(
        '/hello/{name}',
        queryParameters: queryParams,
      );
      final result = HelloResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  ApiError _handleError(dynamic error) {
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

      return ApiError(
        message: message,
        statusCode: statusCode,
        type: errorType,
      );
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
}

T _throwStateError<T>(String message) => throw StateError(message);
