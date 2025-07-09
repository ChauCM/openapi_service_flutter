// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testapi.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$InheritanceBaseDtoImpl _$$InheritanceBaseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InheritanceBaseDtoImpl(
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$$InheritanceBaseDtoImplToJson(
        _$InheritanceBaseDtoImpl instance) =>
    <String, dynamic>{
      'test1': instance.test1,
    };

_$InheritanceChildDtoImpl _$$InheritanceChildDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InheritanceChildDtoImpl();

Map<String, dynamic> _$$InheritanceChildDtoImplToJson(
        _$InheritanceChildDtoImpl instance) =>
    <String, dynamic>{};

_$RecursiveObjectDtoImpl _$$RecursiveObjectDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecursiveObjectDtoImpl(
      parent: json['parent'] == null
          ? null
          : RecursiveObjectDto.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecursiveObjectDtoImplToJson(
        _$RecursiveObjectDtoImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
    };

_$TypedAdditionalPropertiesDtoImpl _$$TypedAdditionalPropertiesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TypedAdditionalPropertiesDtoImpl();

Map<String, dynamic> _$$TypedAdditionalPropertiesDtoImplToJson(
        _$TypedAdditionalPropertiesDtoImpl instance) =>
    <String, dynamic>{};

_$UuidExampleMessageIdGetResponseDtoImpl
    _$$UuidExampleMessageIdGetResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$UuidExampleMessageIdGetResponseDtoImpl(
          id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
        );

Map<String, dynamic> _$$UuidExampleMessageIdGetResponseDtoImplToJson(
        _$UuidExampleMessageIdGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': const ApiUuidJsonConverter().toJson(instance.id),
    };
