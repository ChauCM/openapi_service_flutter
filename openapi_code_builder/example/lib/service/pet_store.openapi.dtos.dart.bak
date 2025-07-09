// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'pet_store.openapi.dtos.freezed.dart';
part 'pet_store.openapi.dtos.g.dart';

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
sealed class OrderDto with _$OrderDto {
  factory OrderDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'petId') int? petId,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'shipDate') DateTime? shipDate,
    @JsonKey(name: 'status') OrderDtoStatusDto? status,
    @JsonKey(name: 'complete') @Default(false) bool complete,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}

enum OrderDtoStatusDto {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension OrderDtoStatusDtoExt on OrderDtoStatusDto {
  static final Map<String, OrderDtoStatusDto> _names = {
    'placed': OrderDtoStatusDto.placed,
    'approved': OrderDtoStatusDto.approved,
    'delivered': OrderDtoStatusDto.delivered,
  };
  static OrderDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for OrderDtoStatusDto');
  String get name => toString().substring(18);
}

@freezed
sealed class CategoryDto with _$CategoryDto {
  factory CategoryDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

@freezed
sealed class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'userStatus') int? userStatus,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
sealed class TagDto with _$TagDto {
  factory TagDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}

@freezed
sealed class PetDto with _$PetDto {
  factory PetDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') List<TagDto>? tags,
    @JsonKey(name: 'status') PetDtoStatusDto? status,
  }) = _PetDto;

  factory PetDto.fromJson(Map<String, dynamic> json) => _$PetDtoFromJson(json);
}

enum PetDtoStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension PetDtoStatusDtoExt on PetDtoStatusDto {
  static final Map<String, PetDtoStatusDto> _names = {
    'available': PetDtoStatusDto.available,
    'pending': PetDtoStatusDto.pending,
    'sold': PetDtoStatusDto.sold,
  };
  static PetDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for PetDtoStatusDto');
  String get name => toString().substring(16);
}

@freezed
sealed class ApiResponseDto with _$ApiResponseDto {
  factory ApiResponseDto({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'message') String? message,
  }) = _ApiResponseDto;

  factory ApiResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseDtoFromJson(json);
}

@freezed
sealed class UpdatePetRequestDto with _$UpdatePetRequestDto {
  factory UpdatePetRequestDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') List<TagDto>? tags,
    @JsonKey(name: 'status') PetDtoStatusDto? status,
  }) = _UpdatePetRequestDto;

  factory UpdatePetRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePetRequestDtoFromJson(json);
}

enum UpdatePetRequestDtoStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension UpdatePetRequestDtoStatusDtoExt on UpdatePetRequestDtoStatusDto {
  static final Map<String, UpdatePetRequestDtoStatusDto> _names = {
    'available': UpdatePetRequestDtoStatusDto.available,
    'pending': UpdatePetRequestDtoStatusDto.pending,
    'sold': UpdatePetRequestDtoStatusDto.sold,
  };
  static UpdatePetRequestDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for UpdatePetRequestDtoStatusDto');
  String get name => toString().substring(29);
}

@freezed
sealed class AddPetRequestDto with _$AddPetRequestDto {
  factory AddPetRequestDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') List<TagDto>? tags,
    @JsonKey(name: 'status') PetDtoStatusDto? status,
  }) = _AddPetRequestDto;

  factory AddPetRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddPetRequestDtoFromJson(json);
}

enum AddPetRequestDtoStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension AddPetRequestDtoStatusDtoExt on AddPetRequestDtoStatusDto {
  static final Map<String, AddPetRequestDtoStatusDto> _names = {
    'available': AddPetRequestDtoStatusDto.available,
    'pending': AddPetRequestDtoStatusDto.pending,
    'sold': AddPetRequestDtoStatusDto.sold,
  };
  static AddPetRequestDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for AddPetRequestDtoStatusDto');
  String get name => toString().substring(26);
}

enum FindPetsByStatusStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension FindPetsByStatusStatusDtoExt on FindPetsByStatusStatusDto {
  static final Map<String, FindPetsByStatusStatusDto> _names = {
    'available': FindPetsByStatusStatusDto.available,
    'pending': FindPetsByStatusStatusDto.pending,
    'sold': FindPetsByStatusStatusDto.sold,
  };
  static FindPetsByStatusStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for FindPetsByStatusStatusDto');
  String get name => toString().substring(26);
}

@freezed
sealed class GetPetByIdResponseDto with _$GetPetByIdResponseDto {
  factory GetPetByIdResponseDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'category') CategoryDto? category,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'photoUrls') required List<String> photoUrls,
    @JsonKey(name: 'tags') List<TagDto>? tags,
    @JsonKey(name: 'status') PetDtoStatusDto? status,
  }) = _GetPetByIdResponseDto;

  factory GetPetByIdResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetPetByIdResponseDtoFromJson(json);
}

enum GetPetByIdResponseDtoStatusDto {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension GetPetByIdResponseDtoStatusDtoExt on GetPetByIdResponseDtoStatusDto {
  static final Map<String, GetPetByIdResponseDtoStatusDto> _names = {
    'available': GetPetByIdResponseDtoStatusDto.available,
    'pending': GetPetByIdResponseDtoStatusDto.pending,
    'sold': GetPetByIdResponseDtoStatusDto.sold,
  };
  static GetPetByIdResponseDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for GetPetByIdResponseDtoStatusDto');
  String get name => toString().substring(31);
}

@freezed
sealed class UpdatePetWithFormRequestDto with _$UpdatePetWithFormRequestDto {
  factory UpdatePetWithFormRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
  }) = _UpdatePetWithFormRequestDto;

  factory UpdatePetWithFormRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePetWithFormRequestDtoFromJson(json);
}

@freezed
sealed class UploadFileResponseDto with _$UploadFileResponseDto {
  factory UploadFileResponseDto({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'message') String? message,
  }) = _UploadFileResponseDto;

  factory UploadFileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseDtoFromJson(json);
}

@freezed
sealed class PlaceOrderResponseDto with _$PlaceOrderResponseDto {
  factory PlaceOrderResponseDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'petId') int? petId,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'shipDate') DateTime? shipDate,
    @JsonKey(name: 'status') OrderDtoStatusDto? status,
    @JsonKey(name: 'complete') @Default(false) bool complete,
  }) = _PlaceOrderResponseDto;

  factory PlaceOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderResponseDtoFromJson(json);
}

enum PlaceOrderResponseDtoStatusDto {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension PlaceOrderResponseDtoStatusDtoExt on PlaceOrderResponseDtoStatusDto {
  static final Map<String, PlaceOrderResponseDtoStatusDto> _names = {
    'placed': PlaceOrderResponseDtoStatusDto.placed,
    'approved': PlaceOrderResponseDtoStatusDto.approved,
    'delivered': PlaceOrderResponseDtoStatusDto.delivered,
  };
  static PlaceOrderResponseDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for PlaceOrderResponseDtoStatusDto');
  String get name => toString().substring(31);
}

@freezed
sealed class PlaceOrderRequestDto with _$PlaceOrderRequestDto {
  factory PlaceOrderRequestDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'petId') int? petId,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'shipDate') DateTime? shipDate,
    @JsonKey(name: 'status') OrderDtoStatusDto? status,
    @JsonKey(name: 'complete') @Default(false) bool complete,
  }) = _PlaceOrderRequestDto;

  factory PlaceOrderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderRequestDtoFromJson(json);
}

enum PlaceOrderRequestDtoStatusDto {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension PlaceOrderRequestDtoStatusDtoExt on PlaceOrderRequestDtoStatusDto {
  static final Map<String, PlaceOrderRequestDtoStatusDto> _names = {
    'placed': PlaceOrderRequestDtoStatusDto.placed,
    'approved': PlaceOrderRequestDtoStatusDto.approved,
    'delivered': PlaceOrderRequestDtoStatusDto.delivered,
  };
  static PlaceOrderRequestDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for PlaceOrderRequestDtoStatusDto');
  String get name => toString().substring(30);
}

@freezed
sealed class GetOrderByIdResponseDto with _$GetOrderByIdResponseDto {
  factory GetOrderByIdResponseDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'petId') int? petId,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'shipDate') DateTime? shipDate,
    @JsonKey(name: 'status') OrderDtoStatusDto? status,
    @JsonKey(name: 'complete') @Default(false) bool complete,
  }) = _GetOrderByIdResponseDto;

  factory GetOrderByIdResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByIdResponseDtoFromJson(json);
}

enum GetOrderByIdResponseDtoStatusDto {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension GetOrderByIdResponseDtoStatusDtoExt
    on GetOrderByIdResponseDtoStatusDto {
  static final Map<String, GetOrderByIdResponseDtoStatusDto> _names = {
    'placed': GetOrderByIdResponseDtoStatusDto.placed,
    'approved': GetOrderByIdResponseDtoStatusDto.approved,
    'delivered': GetOrderByIdResponseDtoStatusDto.delivered,
  };
  static GetOrderByIdResponseDtoStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError(
          'Invalid enum name: $name for GetOrderByIdResponseDtoStatusDto');
  String get name => toString().substring(33);
}

@freezed
sealed class CreateUserRequestDto with _$CreateUserRequestDto {
  factory CreateUserRequestDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'userStatus') int? userStatus,
  }) = _CreateUserRequestDto;

  factory CreateUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestDtoFromJson(json);
}

@freezed
sealed class GetUserByNameResponseDto with _$GetUserByNameResponseDto {
  factory GetUserByNameResponseDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'userStatus') int? userStatus,
  }) = _GetUserByNameResponseDto;

  factory GetUserByNameResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserByNameResponseDtoFromJson(json);
}

@freezed
sealed class UpdateUserRequestDto with _$UpdateUserRequestDto {
  factory UpdateUserRequestDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'userStatus') int? userStatus,
  }) = _UpdateUserRequestDto;

  factory UpdateUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
