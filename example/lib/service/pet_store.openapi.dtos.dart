// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pet_store.openapi.dtos.freezed.dart';
part 'pet_store.openapi.dtos.g.dart';

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
  String get name => switch (this) {
        OrderDtoStatusDto.placed => 'placed',
        OrderDtoStatusDto.approved => 'approved',
        OrderDtoStatusDto.delivered => 'delivered',
      };
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
  String get name => switch (this) {
        PetDtoStatusDto.available => 'available',
        PetDtoStatusDto.pending => 'pending',
        PetDtoStatusDto.sold => 'sold',
      };
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
  String get name => switch (this) {
        FindPetsByStatusStatusDto.available => 'available',
        FindPetsByStatusStatusDto.pending => 'pending',
        FindPetsByStatusStatusDto.sold => 'sold',
      };
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

T _throwStateError<T>(String message) => throw StateError(message);
