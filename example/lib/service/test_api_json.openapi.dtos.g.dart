// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_api_json.openapi.dtos.dart';

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
