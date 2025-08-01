// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_api.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestDto _$RegisterRequestDtoFromJson(Map<String, dynamic> json) =>
    _RegisterRequestDto(
      email: json['email'] as String,
    );

Map<String, dynamic> _$RegisterRequestDtoToJson(_RegisterRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_HelloRequestDto _$HelloRequestDtoFromJson(Map<String, dynamic> json) =>
    _HelloRequestDto(
      salutation: json['salutation'] as String?,
    );

Map<String, dynamic> _$HelloRequestDtoToJson(_HelloRequestDto instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
    };

_HelloResponseDto _$HelloResponseDtoFromJson(Map<String, dynamic> json) =>
    _HelloResponseDto(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelloResponseDtoToJson(_HelloResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_UuidExampleMessageIdGetResponseDto
    _$UuidExampleMessageIdGetResponseDtoFromJson(Map<String, dynamic> json) =>
        _UuidExampleMessageIdGetResponseDto(
          id: json['id'] as String,
        );

Map<String, dynamic> _$UuidExampleMessageIdGetResponseDtoToJson(
        _UuidExampleMessageIdGetResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
