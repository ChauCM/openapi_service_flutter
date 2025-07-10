// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'test_api.openapi.dtos.freezed.dart';
part 'test_api.openapi.dtos.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
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
sealed class UserRegisterPostRequestDto with _$UserRegisterPostRequestDto {
  factory UserRegisterPostRequestDto(
          {@JsonKey(name: 'email') required String email}) =
      _UserRegisterPostRequestDto;

  factory UserRegisterPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterPostRequestDtoFromJson(json);
}

@freezed
sealed class HelloNameGetResponseDto with _$HelloNameGetResponseDto {
  factory HelloNameGetResponseDto({@JsonKey(name: 'message') String? message}) =
      _HelloNameGetResponseDto;

  factory HelloNameGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNameGetResponseDtoFromJson(json);
}

@freezed
sealed class HelloNamePutResponseDto with _$HelloNamePutResponseDto {
  factory HelloNamePutResponseDto({@JsonKey(name: 'message') String? message}) =
      _HelloNamePutResponseDto;

  factory HelloNamePutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNamePutResponseDtoFromJson(json);
}

@freezed
sealed class HelloNamePutRequestDto with _$HelloNamePutRequestDto {
  factory HelloNamePutRequestDto(
          {@JsonKey(name: 'salutation') String? salutation}) =
      _HelloNamePutRequestDto;

  factory HelloNamePutRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNamePutRequestDtoFromJson(json);
}

@freezed
sealed class UuidExampleMessageIdGetResponseDto
    with _$UuidExampleMessageIdGetResponseDto {
  factory UuidExampleMessageIdGetResponseDto(
          {@JsonKey(name: 'id') required String id}) =
      _UuidExampleMessageIdGetResponseDto;

  factory UuidExampleMessageIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$UuidExampleMessageIdGetResponseDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
