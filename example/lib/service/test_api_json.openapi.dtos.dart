// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'test_api_json.openapi.dtos.freezed.dart';
part 'test_api_json.openapi.dtos.g.dart';

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

T _throwStateError<T>(String message) => throw StateError(message);
