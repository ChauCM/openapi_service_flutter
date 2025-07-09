// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      petId: (json['petId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: $enumDecodeNullable(_$OrderDtoStatusDtoEnumMap, json['status']),
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$OrderDtoStatusDtoEnumMap[instance.status],
      'complete': instance.complete,
    };

const _$OrderDtoStatusDtoEnumMap = {
  OrderDtoStatusDto.placed: 'placed',
  OrderDtoStatusDto.approved: 'approved',
  OrderDtoStatusDto.delivered: 'delivered',
};

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: (json['userStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };

_$TagDtoImpl _$$TagDtoImplFromJson(Map<String, dynamic> json) => _$TagDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TagDtoImplToJson(_$TagDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PetDtoImpl _$$PetDtoImplFromJson(Map<String, dynamic> json) => _$PetDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      category: json['category'] == null
          ? null
          : CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      name: json['name'] as String,
      photoUrls:
          (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$PetDtoStatusDtoEnumMap, json['status']),
    );

Map<String, dynamic> _$$PetDtoImplToJson(_$PetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': _$PetDtoStatusDtoEnumMap[instance.status],
    };

const _$PetDtoStatusDtoEnumMap = {
  PetDtoStatusDto.available: 'available',
  PetDtoStatusDto.pending: 'pending',
  PetDtoStatusDto.sold: 'sold',
};

_$ApiResponseDtoImpl _$$ApiResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseDtoImpl(
      code: (json['code'] as num?)?.toInt(),
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ApiResponseDtoImplToJson(
        _$ApiResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };

_$UpdatePetWithFormRequestDtoImpl _$$UpdatePetWithFormRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePetWithFormRequestDtoImpl(
      name: json['name'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$UpdatePetWithFormRequestDtoImplToJson(
        _$UpdatePetWithFormRequestDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
    };

_$GetInventoryResponseDtoImpl _$$GetInventoryResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetInventoryResponseDtoImpl();

Map<String, dynamic> _$$GetInventoryResponseDtoImplToJson(
        _$GetInventoryResponseDtoImpl instance) =>
    <String, dynamic>{};
