// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'testapi.openapi.g.dart';
part 'testapi.openapi.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;
}

@freezed
sealed class RegisterRequestDto with _$RegisterRequestDto {
  factory RegisterRequestDto({@JsonKey(name: 'email') required String email}) =
      _RegisterRequestDto;

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);
}

@freezed
sealed class HelloRequestDto with _$HelloRequestDto {
  factory HelloRequestDto({@JsonKey(name: 'salutation') String? salutation}) =
      _HelloRequestDto;

  factory HelloRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HelloRequestDtoFromJson(json);
}

@freezed
sealed class HelloResponseDto with _$HelloResponseDto {
  factory HelloResponseDto({@JsonKey(name: 'message') String? message}) =
      _HelloResponseDto;

  factory HelloResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloResponseDtoFromJson(json);
}

@freezed
sealed class InheritanceBaseDto with _$InheritanceBaseDto {
  factory InheritanceBaseDto({@JsonKey(name: 'test1') String? test1}) =
      _InheritanceBaseDto;

  factory InheritanceBaseDto.fromJson(Map<String, dynamic> json) =>
      _$InheritanceBaseDtoFromJson(json);
}

@freezed
sealed class InheritanceChildDto with _$InheritanceChildDto {
  factory InheritanceChildDto() = _InheritanceChildDto;

  factory InheritanceChildDto.fromJson(Map<String, dynamic> json) =>
      _$InheritanceChildDtoFromJson(json);
}

@freezed
sealed class RecursiveObjectDto with _$RecursiveObjectDto {
  factory RecursiveObjectDto(
          {@JsonKey(name: 'parent') RecursiveObjectDto? parent}) =
      _RecursiveObjectDto;

  factory RecursiveObjectDto.fromJson(Map<String, dynamic> json) =>
      _$RecursiveObjectDtoFromJson(json);
}

@freezed
sealed class TypedAdditionalPropertiesDto with _$TypedAdditionalPropertiesDto {
  factory TypedAdditionalPropertiesDto() = _TypedAdditionalPropertiesDto;

  factory TypedAdditionalPropertiesDto.fromJson(Map<String, dynamic> json) =>
      _$TypedAdditionalPropertiesDtoFromJson(json);
}

@freezed
sealed class UuidExampleMessageIdGetResponseDto
    with _$UuidExampleMessageIdGetResponseDto {
  factory UuidExampleMessageIdGetResponseDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() required ApiUuid id}) =
      _UuidExampleMessageIdGetResponseDto;

  factory UuidExampleMessageIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$UuidExampleMessageIdGetResponseDtoFromJson(json);
}

class TestApiService {
  TestApiService(Dio this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 10);
  }

  static const String baseUrl = 'https://api.example.com';

  final Dio _dio;

  /// Create new user
  /// post: /user/register
  Future<Either<ApiError, void>> userRegisterPost(
      RegisterRequestDto body) async {
    try {
      final response = await _dio.post(
        '/user/register',
        data: body.toJson(),
      );
      return Right(true);
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
      final response = await _dio.put(
        '/hello/integer',
        data: body,
      );
      return Right(true);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  ApiError _handleError(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode;

// Try to extract message from response
      var message = 'An error occurred';
      if (response?.data != null) {
        try {
          final data = response?.data;
          if (data is Map<String, dynamic>) {
            message = data['message'];
          }
        } catch (_) {}
      }

// Use Dio's error message as fallback
      message = error.message ?? 'An error occurred';
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

T _throwStateError<T>(String message) => throw StateError(message);
