// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_api.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiError _$ApiErrorFromJson(Map<String, dynamic> json) => _ApiError(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ApiErrorToJson(_ApiError instance) => <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'type': instance.type,
    };

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

_UserRegisterPostRequestDto _$UserRegisterPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _UserRegisterPostRequestDto(
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserRegisterPostRequestDtoToJson(
        _UserRegisterPostRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_HelloNameGetResponseDto _$HelloNameGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _HelloNameGetResponseDto(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelloNameGetResponseDtoToJson(
        _HelloNameGetResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_HelloNamePutResponseDto _$HelloNamePutResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _HelloNamePutResponseDto(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelloNamePutResponseDtoToJson(
        _HelloNamePutResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_HelloNamePutRequestDto _$HelloNamePutRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _HelloNamePutRequestDto(
      salutation: json['salutation'] as String?,
    );

Map<String, dynamic> _$HelloNamePutRequestDtoToJson(
        _HelloNamePutRequestDto instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
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
