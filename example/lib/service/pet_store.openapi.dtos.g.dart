// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store.openapi.dtos.dart';

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

_$UpdatePetRequestDtoImpl _$$UpdatePetRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePetRequestDtoImpl(
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

Map<String, dynamic> _$$UpdatePetRequestDtoImplToJson(
        _$UpdatePetRequestDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': _$PetDtoStatusDtoEnumMap[instance.status],
    };

_$AddPetRequestDtoImpl _$$AddPetRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPetRequestDtoImpl(
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

Map<String, dynamic> _$$AddPetRequestDtoImplToJson(
        _$AddPetRequestDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': _$PetDtoStatusDtoEnumMap[instance.status],
    };

_$GetPetByIdResponseDtoImpl _$$GetPetByIdResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPetByIdResponseDtoImpl(
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

Map<String, dynamic> _$$GetPetByIdResponseDtoImplToJson(
        _$GetPetByIdResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': _$PetDtoStatusDtoEnumMap[instance.status],
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

_$UploadFileResponseDtoImpl _$$UploadFileResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFileResponseDtoImpl(
      code: (json['code'] as num?)?.toInt(),
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UploadFileResponseDtoImplToJson(
        _$UploadFileResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };

_$PlaceOrderResponseDtoImpl _$$PlaceOrderResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderResponseDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      petId: (json['petId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: $enumDecodeNullable(_$OrderDtoStatusDtoEnumMap, json['status']),
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$PlaceOrderResponseDtoImplToJson(
        _$PlaceOrderResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$OrderDtoStatusDtoEnumMap[instance.status],
      'complete': instance.complete,
    };

_$PlaceOrderRequestDtoImpl _$$PlaceOrderRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderRequestDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      petId: (json['petId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: $enumDecodeNullable(_$OrderDtoStatusDtoEnumMap, json['status']),
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$PlaceOrderRequestDtoImplToJson(
        _$PlaceOrderRequestDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$OrderDtoStatusDtoEnumMap[instance.status],
      'complete': instance.complete,
    };

_$GetOrderByIdResponseDtoImpl _$$GetOrderByIdResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderByIdResponseDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      petId: (json['petId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      shipDate: json['shipDate'] == null
          ? null
          : DateTime.parse(json['shipDate'] as String),
      status: $enumDecodeNullable(_$OrderDtoStatusDtoEnumMap, json['status']),
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetOrderByIdResponseDtoImplToJson(
        _$GetOrderByIdResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$OrderDtoStatusDtoEnumMap[instance.status],
      'complete': instance.complete,
    };

_$CreateUserRequestDtoImpl _$$CreateUserRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: (json['userStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateUserRequestDtoImplToJson(
        _$CreateUserRequestDtoImpl instance) =>
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

_$GetUserByNameResponseDtoImpl _$$GetUserByNameResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserByNameResponseDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: (json['userStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetUserByNameResponseDtoImplToJson(
        _$GetUserByNameResponseDtoImpl instance) =>
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

_$UpdateUserRequestDtoImpl _$$UpdateUserRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserRequestDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      userStatus: (json['userStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateUserRequestDtoImplToJson(
        _$UpdateUserRequestDtoImpl instance) =>
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
