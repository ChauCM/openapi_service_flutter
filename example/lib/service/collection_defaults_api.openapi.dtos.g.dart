// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_defaults_api.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PieceDto _$PieceDtoFromJson(Map<String, dynamic> json) => _PieceDto(
      text: json['text'] as String,
    );

Map<String, dynamic> _$PieceDtoToJson(_PieceDto instance) => <String, dynamic>{
      'text': instance.text,
    };

_CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) =>
    _CharacterDto(
      hanzi: json['hanzi'] as String,
      radical: json['radical'] as String?,
      componentsNoDefault: (json['componentsNoDefault'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      canTraceNoDefault: json['canTraceNoDefault'] as bool?,
      componentsWithDefault: (json['componentsWithDefault'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      refsWithDefault: (json['refsWithDefault'] as List<dynamic>?)
              ?.map((e) => PieceDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mapWithDefault: (json['mapWithDefault'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      canTraceWithDefault: json['canTraceWithDefault'] as bool? ?? false,
      labelWithDefault: json['labelWithDefault'] as String? ?? '',
      strokeCountWithDefault:
          (json['strokeCountWithDefault'] as num?)?.toInt() ?? 0,
      tagsWithSeededDefault: (json['tagsWithSeededDefault'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['a', 'b'],
      holder: json['holder'] == null
          ? null
          : RequiredHolderDto.fromJson(json['holder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterDtoToJson(_CharacterDto instance) =>
    <String, dynamic>{
      'hanzi': instance.hanzi,
      'radical': instance.radical,
      'componentsNoDefault': instance.componentsNoDefault,
      'canTraceNoDefault': instance.canTraceNoDefault,
      'componentsWithDefault': instance.componentsWithDefault,
      'refsWithDefault': instance.refsWithDefault,
      'mapWithDefault': instance.mapWithDefault,
      'canTraceWithDefault': instance.canTraceWithDefault,
      'labelWithDefault': instance.labelWithDefault,
      'strokeCountWithDefault': instance.strokeCountWithDefault,
      'tagsWithSeededDefault': instance.tagsWithSeededDefault,
      'holder': instance.holder,
    };

_RequiredHolderDto _$RequiredHolderDtoFromJson(Map<String, dynamic> json) =>
    _RequiredHolderDto(
      requiredWithDefault: (json['requiredWithDefault'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RequiredHolderDtoToJson(_RequiredHolderDto instance) =>
    <String, dynamic>{
      'requiredWithDefault': instance.requiredWithDefault,
    };
