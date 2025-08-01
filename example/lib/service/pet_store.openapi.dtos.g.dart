// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => _OrderDto(
      id: (json['id'] as num?)?.toInt(),
      petId: (json['petId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: $enumDecodeNullable(_$OrderDtoStatusDtoEnumMap, json['status']),
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$OrderDtoToJson(_OrderDto instance) => <String, dynamic>{
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

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: (json['userStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };

_TagDto _$TagDtoFromJson(Map<String, dynamic> json) => _TagDto(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TagDtoToJson(_TagDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_PetDto _$PetDtoFromJson(Map<String, dynamic> json) => _PetDto(
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

Map<String, dynamic> _$PetDtoToJson(_PetDto instance) => <String, dynamic>{
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

_ApiResponseDto _$ApiResponseDtoFromJson(Map<String, dynamic> json) =>
    _ApiResponseDto(
      code: (json['code'] as num?)?.toInt(),
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiResponseDtoToJson(_ApiResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };

_UpdatePetWithFormRequestDto _$UpdatePetWithFormRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdatePetWithFormRequestDto(
      name: json['name'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$UpdatePetWithFormRequestDtoToJson(
        _UpdatePetWithFormRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
    };
