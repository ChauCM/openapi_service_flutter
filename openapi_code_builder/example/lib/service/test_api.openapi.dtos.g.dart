// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_api.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'type': instance.type,
    };

_$RegisterRequestDtoImpl _$$RegisterRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestDtoImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RegisterRequestDtoImplToJson(
        _$RegisterRequestDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$HelloRequestDtoImpl _$$HelloRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloRequestDtoImpl(
      salutation: json['salutation'] as String?,
    );

Map<String, dynamic> _$$HelloRequestDtoImplToJson(
        _$HelloRequestDtoImpl instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
    };

_$HelloResponseDtoImpl _$$HelloResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloResponseDtoImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$HelloResponseDtoImplToJson(
        _$HelloResponseDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$UserRegisterPostRequestDtoImpl _$$UserRegisterPostRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterPostRequestDtoImpl(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserRegisterPostRequestDtoImplToJson(
        _$UserRegisterPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$HelloNameGetResponseDtoImpl _$$HelloNameGetResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloNameGetResponseDtoImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$HelloNameGetResponseDtoImplToJson(
        _$HelloNameGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$HelloNamePutResponseDtoImpl _$$HelloNamePutResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloNamePutResponseDtoImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$HelloNamePutResponseDtoImplToJson(
        _$HelloNamePutResponseDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$HelloNamePutRequestDtoImpl _$$HelloNamePutRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloNamePutRequestDtoImpl(
      salutation: json['salutation'] as String?,
    );

Map<String, dynamic> _$$HelloNamePutRequestDtoImplToJson(
        _$HelloNamePutRequestDtoImpl instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
    };

_$UuidExampleMessageIdGetResponseDtoImpl
    _$$UuidExampleMessageIdGetResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$UuidExampleMessageIdGetResponseDtoImpl(
          id: json['id'] as String,
        );

Map<String, dynamic> _$$UuidExampleMessageIdGetResponseDtoImplToJson(
        _$UuidExampleMessageIdGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
