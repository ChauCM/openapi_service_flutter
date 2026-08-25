// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'collection_defaults_api.openapi.dtos.freezed.dart';
part 'collection_defaults_api.openapi.dtos.g.dart';

@freezed
sealed class PieceDto with _$PieceDto {
  factory PieceDto({@JsonKey(name: 'text') required String text}) = _PieceDto;

  factory PieceDto.fromJson(Map<String, dynamic> json) =>
      _$PieceDtoFromJson(json);
}

@freezed
sealed class CharacterDto with _$CharacterDto {
  factory CharacterDto({
    @JsonKey(name: 'hanzi') required String hanzi,
    @JsonKey(name: 'radical') String? radical,
    @JsonKey(name: 'componentsNoDefault') List<String>? componentsNoDefault,
    @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
    @JsonKey(name: 'componentsWithDefault')
    @Default([])
    List<String> componentsWithDefault,
    @JsonKey(name: 'refsWithDefault')
    @Default([])
    List<PieceDto> refsWithDefault,
    @JsonKey(name: 'mapWithDefault')
    @Default({})
    Map<String, String> mapWithDefault,
    @JsonKey(name: 'canTraceWithDefault')
    @Default(false)
    bool canTraceWithDefault,
    @JsonKey(name: 'labelWithDefault') @Default('') String labelWithDefault,
    @JsonKey(name: 'strokeCountWithDefault')
    @Default(0)
    int strokeCountWithDefault,
    @JsonKey(name: 'tagsWithSeededDefault')
    @Default([
      'a',
      'b',
    ])
    List<String> tagsWithSeededDefault,
    @JsonKey(name: 'holder') RequiredHolderDto? holder,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);
}

@freezed
sealed class RequiredHolderDto with _$RequiredHolderDto {
  factory RequiredHolderDto(
      {@JsonKey(name: 'requiredWithDefault')
      required List<String> requiredWithDefault}) = _RequiredHolderDto;

  factory RequiredHolderDto.fromJson(Map<String, dynamic> json) =>
      _$RequiredHolderDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
