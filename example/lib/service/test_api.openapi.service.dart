// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'test_api.openapi.dtos.dart';

class TestApiService {
  TestApiService(this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 10);
  }

  static const String baseUrl = 'https://api.example.com';

  final Dio _dio;

  /// Create new user
  /// post: /user/register
  Future<Either<ApiError, void>> userRegisterPost(
      UserRegisterPostRequestDto body) async {
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

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  Future<Either<ApiError, String>> helloNameHtmlGet() async {
    try {
      final response = await _dio.get('/hello/{name}/html');
      final result = (response.data as String);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<Either<ApiError, HelloNameGetResponseDto>> helloNameGet(
      {String? salutation}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (salutation != null) queryParams['salutation'] = salutation;

      final response = await _dio.get(
        '/hello/{name}',
        queryParameters: queryParams,
      );
      final result = HelloNameGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  Future<Either<ApiError, HelloNamePutResponseDto>> helloNamePut(
      HelloNamePutRequestDto body) async {
    try {
      final response = await _dio.put(
        '/hello/{name}',
        data: body.toJson(),
      );
      final result = HelloNamePutResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
