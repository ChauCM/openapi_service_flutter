// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_defaults_api.openapi.dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PieceDto {
  @JsonKey(name: 'text')
  String get text;

  /// Create a copy of PieceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PieceDtoCopyWith<PieceDto> get copyWith =>
      _$PieceDtoCopyWithImpl<PieceDto>(this as PieceDto, _$identity);

  /// Serializes this PieceDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PieceDto &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'PieceDto(text: $text)';
  }
}

/// @nodoc
abstract mixin class $PieceDtoCopyWith<$Res> {
  factory $PieceDtoCopyWith(PieceDto value, $Res Function(PieceDto) _then) =
      _$PieceDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$PieceDtoCopyWithImpl<$Res> implements $PieceDtoCopyWith<$Res> {
  _$PieceDtoCopyWithImpl(this._self, this._then);

  final PieceDto _self;
  final $Res Function(PieceDto) _then;

  /// Create a copy of PieceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PieceDto].
extension PieceDtoPatterns on PieceDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PieceDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PieceDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PieceDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PieceDto():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PieceDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PieceDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'text') String text)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PieceDto() when $default != null:
        return $default(_that.text);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'text') String text) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PieceDto():
        return $default(_that.text);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'text') String text)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PieceDto() when $default != null:
        return $default(_that.text);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PieceDto implements PieceDto {
  _PieceDto({@JsonKey(name: 'text') required this.text});
  factory _PieceDto.fromJson(Map<String, dynamic> json) =>
      _$PieceDtoFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String text;

  /// Create a copy of PieceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PieceDtoCopyWith<_PieceDto> get copyWith =>
      __$PieceDtoCopyWithImpl<_PieceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PieceDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PieceDto &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'PieceDto(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$PieceDtoCopyWith<$Res>
    implements $PieceDtoCopyWith<$Res> {
  factory _$PieceDtoCopyWith(_PieceDto value, $Res Function(_PieceDto) _then) =
      __$PieceDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$PieceDtoCopyWithImpl<$Res> implements _$PieceDtoCopyWith<$Res> {
  __$PieceDtoCopyWithImpl(this._self, this._then);

  final _PieceDto _self;
  final $Res Function(_PieceDto) _then;

  /// Create a copy of PieceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_PieceDto(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CharacterDto {
  @JsonKey(name: 'hanzi')
  String get hanzi;
  @JsonKey(name: 'radical')
  String? get radical;
  @JsonKey(name: 'componentsNoDefault')
  List<String>? get componentsNoDefault;
  @JsonKey(name: 'canTraceNoDefault')
  bool? get canTraceNoDefault;
  @JsonKey(name: 'componentsWithDefault')
  List<String> get componentsWithDefault;
  @JsonKey(name: 'refsWithDefault')
  List<PieceDto> get refsWithDefault;
  @JsonKey(name: 'mapWithDefault')
  Map<String, String> get mapWithDefault;
  @JsonKey(name: 'canTraceWithDefault')
  bool get canTraceWithDefault;
  @JsonKey(name: 'labelWithDefault')
  String get labelWithDefault;
  @JsonKey(name: 'strokeCountWithDefault')
  int get strokeCountWithDefault;
  @JsonKey(name: 'tagsWithSeededDefault')
  List<String> get tagsWithSeededDefault;
  @JsonKey(name: 'holder')
  RequiredHolderDto? get holder;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CharacterDtoCopyWith<CharacterDto> get copyWith =>
      _$CharacterDtoCopyWithImpl<CharacterDto>(
          this as CharacterDto, _$identity);

  /// Serializes this CharacterDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CharacterDto &&
            (identical(other.hanzi, hanzi) || other.hanzi == hanzi) &&
            (identical(other.radical, radical) || other.radical == radical) &&
            const DeepCollectionEquality()
                .equals(other.componentsNoDefault, componentsNoDefault) &&
            (identical(other.canTraceNoDefault, canTraceNoDefault) ||
                other.canTraceNoDefault == canTraceNoDefault) &&
            const DeepCollectionEquality()
                .equals(other.componentsWithDefault, componentsWithDefault) &&
            const DeepCollectionEquality()
                .equals(other.refsWithDefault, refsWithDefault) &&
            const DeepCollectionEquality()
                .equals(other.mapWithDefault, mapWithDefault) &&
            (identical(other.canTraceWithDefault, canTraceWithDefault) ||
                other.canTraceWithDefault == canTraceWithDefault) &&
            (identical(other.labelWithDefault, labelWithDefault) ||
                other.labelWithDefault == labelWithDefault) &&
            (identical(other.strokeCountWithDefault, strokeCountWithDefault) ||
                other.strokeCountWithDefault == strokeCountWithDefault) &&
            const DeepCollectionEquality()
                .equals(other.tagsWithSeededDefault, tagsWithSeededDefault) &&
            (identical(other.holder, holder) || other.holder == holder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hanzi,
      radical,
      const DeepCollectionEquality().hash(componentsNoDefault),
      canTraceNoDefault,
      const DeepCollectionEquality().hash(componentsWithDefault),
      const DeepCollectionEquality().hash(refsWithDefault),
      const DeepCollectionEquality().hash(mapWithDefault),
      canTraceWithDefault,
      labelWithDefault,
      strokeCountWithDefault,
      const DeepCollectionEquality().hash(tagsWithSeededDefault),
      holder);

  @override
  String toString() {
    return 'CharacterDto(hanzi: $hanzi, radical: $radical, componentsNoDefault: $componentsNoDefault, canTraceNoDefault: $canTraceNoDefault, componentsWithDefault: $componentsWithDefault, refsWithDefault: $refsWithDefault, mapWithDefault: $mapWithDefault, canTraceWithDefault: $canTraceWithDefault, labelWithDefault: $labelWithDefault, strokeCountWithDefault: $strokeCountWithDefault, tagsWithSeededDefault: $tagsWithSeededDefault, holder: $holder)';
  }
}

/// @nodoc
abstract mixin class $CharacterDtoCopyWith<$Res> {
  factory $CharacterDtoCopyWith(
          CharacterDto value, $Res Function(CharacterDto) _then) =
      _$CharacterDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'hanzi') String hanzi,
      @JsonKey(name: 'radical') String? radical,
      @JsonKey(name: 'componentsNoDefault') List<String>? componentsNoDefault,
      @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
      @JsonKey(name: 'componentsWithDefault')
      List<String> componentsWithDefault,
      @JsonKey(name: 'refsWithDefault') List<PieceDto> refsWithDefault,
      @JsonKey(name: 'mapWithDefault') Map<String, String> mapWithDefault,
      @JsonKey(name: 'canTraceWithDefault') bool canTraceWithDefault,
      @JsonKey(name: 'labelWithDefault') String labelWithDefault,
      @JsonKey(name: 'strokeCountWithDefault') int strokeCountWithDefault,
      @JsonKey(name: 'tagsWithSeededDefault')
      List<String> tagsWithSeededDefault,
      @JsonKey(name: 'holder') RequiredHolderDto? holder});

  $RequiredHolderDtoCopyWith<$Res>? get holder;
}

/// @nodoc
class _$CharacterDtoCopyWithImpl<$Res> implements $CharacterDtoCopyWith<$Res> {
  _$CharacterDtoCopyWithImpl(this._self, this._then);

  final CharacterDto _self;
  final $Res Function(CharacterDto) _then;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hanzi = null,
    Object? radical = freezed,
    Object? componentsNoDefault = freezed,
    Object? canTraceNoDefault = freezed,
    Object? componentsWithDefault = null,
    Object? refsWithDefault = null,
    Object? mapWithDefault = null,
    Object? canTraceWithDefault = null,
    Object? labelWithDefault = null,
    Object? strokeCountWithDefault = null,
    Object? tagsWithSeededDefault = null,
    Object? holder = freezed,
  }) {
    return _then(_self.copyWith(
      hanzi: null == hanzi
          ? _self.hanzi
          : hanzi // ignore: cast_nullable_to_non_nullable
              as String,
      radical: freezed == radical
          ? _self.radical
          : radical // ignore: cast_nullable_to_non_nullable
              as String?,
      componentsNoDefault: freezed == componentsNoDefault
          ? _self.componentsNoDefault
          : componentsNoDefault // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      canTraceNoDefault: freezed == canTraceNoDefault
          ? _self.canTraceNoDefault
          : canTraceNoDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      componentsWithDefault: null == componentsWithDefault
          ? _self.componentsWithDefault
          : componentsWithDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
      refsWithDefault: null == refsWithDefault
          ? _self.refsWithDefault
          : refsWithDefault // ignore: cast_nullable_to_non_nullable
              as List<PieceDto>,
      mapWithDefault: null == mapWithDefault
          ? _self.mapWithDefault
          : mapWithDefault // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      canTraceWithDefault: null == canTraceWithDefault
          ? _self.canTraceWithDefault
          : canTraceWithDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      labelWithDefault: null == labelWithDefault
          ? _self.labelWithDefault
          : labelWithDefault // ignore: cast_nullable_to_non_nullable
              as String,
      strokeCountWithDefault: null == strokeCountWithDefault
          ? _self.strokeCountWithDefault
          : strokeCountWithDefault // ignore: cast_nullable_to_non_nullable
              as int,
      tagsWithSeededDefault: null == tagsWithSeededDefault
          ? _self.tagsWithSeededDefault
          : tagsWithSeededDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holder: freezed == holder
          ? _self.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as RequiredHolderDto?,
    ));
  }

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequiredHolderDtoCopyWith<$Res>? get holder {
    if (_self.holder == null) {
      return null;
    }

    return $RequiredHolderDtoCopyWith<$Res>(_self.holder!, (value) {
      return _then(_self.copyWith(holder: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CharacterDto].
extension CharacterDtoPatterns on CharacterDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CharacterDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CharacterDto():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CharacterDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CharacterDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'hanzi') String hanzi,
            @JsonKey(name: 'radical') String? radical,
            @JsonKey(name: 'componentsNoDefault')
            List<String>? componentsNoDefault,
            @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
            @JsonKey(name: 'componentsWithDefault')
            List<String> componentsWithDefault,
            @JsonKey(name: 'refsWithDefault') List<PieceDto> refsWithDefault,
            @JsonKey(name: 'mapWithDefault') Map<String, String> mapWithDefault,
            @JsonKey(name: 'canTraceWithDefault') bool canTraceWithDefault,
            @JsonKey(name: 'labelWithDefault') String labelWithDefault,
            @JsonKey(name: 'strokeCountWithDefault') int strokeCountWithDefault,
            @JsonKey(name: 'tagsWithSeededDefault')
            List<String> tagsWithSeededDefault,
            @JsonKey(name: 'holder') RequiredHolderDto? holder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CharacterDto() when $default != null:
        return $default(
            _that.hanzi,
            _that.radical,
            _that.componentsNoDefault,
            _that.canTraceNoDefault,
            _that.componentsWithDefault,
            _that.refsWithDefault,
            _that.mapWithDefault,
            _that.canTraceWithDefault,
            _that.labelWithDefault,
            _that.strokeCountWithDefault,
            _that.tagsWithSeededDefault,
            _that.holder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'hanzi') String hanzi,
            @JsonKey(name: 'radical') String? radical,
            @JsonKey(name: 'componentsNoDefault')
            List<String>? componentsNoDefault,
            @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
            @JsonKey(name: 'componentsWithDefault')
            List<String> componentsWithDefault,
            @JsonKey(name: 'refsWithDefault') List<PieceDto> refsWithDefault,
            @JsonKey(name: 'mapWithDefault') Map<String, String> mapWithDefault,
            @JsonKey(name: 'canTraceWithDefault') bool canTraceWithDefault,
            @JsonKey(name: 'labelWithDefault') String labelWithDefault,
            @JsonKey(name: 'strokeCountWithDefault') int strokeCountWithDefault,
            @JsonKey(name: 'tagsWithSeededDefault')
            List<String> tagsWithSeededDefault,
            @JsonKey(name: 'holder') RequiredHolderDto? holder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CharacterDto():
        return $default(
            _that.hanzi,
            _that.radical,
            _that.componentsNoDefault,
            _that.canTraceNoDefault,
            _that.componentsWithDefault,
            _that.refsWithDefault,
            _that.mapWithDefault,
            _that.canTraceWithDefault,
            _that.labelWithDefault,
            _that.strokeCountWithDefault,
            _that.tagsWithSeededDefault,
            _that.holder);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'hanzi') String hanzi,
            @JsonKey(name: 'radical') String? radical,
            @JsonKey(name: 'componentsNoDefault')
            List<String>? componentsNoDefault,
            @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
            @JsonKey(name: 'componentsWithDefault')
            List<String> componentsWithDefault,
            @JsonKey(name: 'refsWithDefault') List<PieceDto> refsWithDefault,
            @JsonKey(name: 'mapWithDefault') Map<String, String> mapWithDefault,
            @JsonKey(name: 'canTraceWithDefault') bool canTraceWithDefault,
            @JsonKey(name: 'labelWithDefault') String labelWithDefault,
            @JsonKey(name: 'strokeCountWithDefault') int strokeCountWithDefault,
            @JsonKey(name: 'tagsWithSeededDefault')
            List<String> tagsWithSeededDefault,
            @JsonKey(name: 'holder') RequiredHolderDto? holder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CharacterDto() when $default != null:
        return $default(
            _that.hanzi,
            _that.radical,
            _that.componentsNoDefault,
            _that.canTraceNoDefault,
            _that.componentsWithDefault,
            _that.refsWithDefault,
            _that.mapWithDefault,
            _that.canTraceWithDefault,
            _that.labelWithDefault,
            _that.strokeCountWithDefault,
            _that.tagsWithSeededDefault,
            _that.holder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CharacterDto implements CharacterDto {
  _CharacterDto(
      {@JsonKey(name: 'hanzi') required this.hanzi,
      @JsonKey(name: 'radical') this.radical,
      @JsonKey(name: 'componentsNoDefault')
      final List<String>? componentsNoDefault,
      @JsonKey(name: 'canTraceNoDefault') this.canTraceNoDefault,
      @JsonKey(name: 'componentsWithDefault')
      final List<String> componentsWithDefault = const [],
      @JsonKey(name: 'refsWithDefault')
      final List<PieceDto> refsWithDefault = const [],
      @JsonKey(name: 'mapWithDefault')
      final Map<String, String> mapWithDefault = const {},
      @JsonKey(name: 'canTraceWithDefault') this.canTraceWithDefault = false,
      @JsonKey(name: 'labelWithDefault') this.labelWithDefault = '',
      @JsonKey(name: 'strokeCountWithDefault') this.strokeCountWithDefault = 0,
      @JsonKey(name: 'tagsWithSeededDefault')
      final List<String> tagsWithSeededDefault = const ['a', 'b'],
      @JsonKey(name: 'holder') this.holder})
      : _componentsNoDefault = componentsNoDefault,
        _componentsWithDefault = componentsWithDefault,
        _refsWithDefault = refsWithDefault,
        _mapWithDefault = mapWithDefault,
        _tagsWithSeededDefault = tagsWithSeededDefault;
  factory _CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);

  @override
  @JsonKey(name: 'hanzi')
  final String hanzi;
  @override
  @JsonKey(name: 'radical')
  final String? radical;
  final List<String>? _componentsNoDefault;
  @override
  @JsonKey(name: 'componentsNoDefault')
  List<String>? get componentsNoDefault {
    final value = _componentsNoDefault;
    if (value == null) return null;
    if (_componentsNoDefault is EqualUnmodifiableListView)
      return _componentsNoDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'canTraceNoDefault')
  final bool? canTraceNoDefault;
  final List<String> _componentsWithDefault;
  @override
  @JsonKey(name: 'componentsWithDefault')
  List<String> get componentsWithDefault {
    if (_componentsWithDefault is EqualUnmodifiableListView)
      return _componentsWithDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_componentsWithDefault);
  }

  final List<PieceDto> _refsWithDefault;
  @override
  @JsonKey(name: 'refsWithDefault')
  List<PieceDto> get refsWithDefault {
    if (_refsWithDefault is EqualUnmodifiableListView) return _refsWithDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_refsWithDefault);
  }

  final Map<String, String> _mapWithDefault;
  @override
  @JsonKey(name: 'mapWithDefault')
  Map<String, String> get mapWithDefault {
    if (_mapWithDefault is EqualUnmodifiableMapView) return _mapWithDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapWithDefault);
  }

  @override
  @JsonKey(name: 'canTraceWithDefault')
  final bool canTraceWithDefault;
  @override
  @JsonKey(name: 'labelWithDefault')
  final String labelWithDefault;
  @override
  @JsonKey(name: 'strokeCountWithDefault')
  final int strokeCountWithDefault;
  final List<String> _tagsWithSeededDefault;
  @override
  @JsonKey(name: 'tagsWithSeededDefault')
  List<String> get tagsWithSeededDefault {
    if (_tagsWithSeededDefault is EqualUnmodifiableListView)
      return _tagsWithSeededDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagsWithSeededDefault);
  }

  @override
  @JsonKey(name: 'holder')
  final RequiredHolderDto? holder;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CharacterDtoCopyWith<_CharacterDto> get copyWith =>
      __$CharacterDtoCopyWithImpl<_CharacterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CharacterDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterDto &&
            (identical(other.hanzi, hanzi) || other.hanzi == hanzi) &&
            (identical(other.radical, radical) || other.radical == radical) &&
            const DeepCollectionEquality()
                .equals(other._componentsNoDefault, _componentsNoDefault) &&
            (identical(other.canTraceNoDefault, canTraceNoDefault) ||
                other.canTraceNoDefault == canTraceNoDefault) &&
            const DeepCollectionEquality()
                .equals(other._componentsWithDefault, _componentsWithDefault) &&
            const DeepCollectionEquality()
                .equals(other._refsWithDefault, _refsWithDefault) &&
            const DeepCollectionEquality()
                .equals(other._mapWithDefault, _mapWithDefault) &&
            (identical(other.canTraceWithDefault, canTraceWithDefault) ||
                other.canTraceWithDefault == canTraceWithDefault) &&
            (identical(other.labelWithDefault, labelWithDefault) ||
                other.labelWithDefault == labelWithDefault) &&
            (identical(other.strokeCountWithDefault, strokeCountWithDefault) ||
                other.strokeCountWithDefault == strokeCountWithDefault) &&
            const DeepCollectionEquality()
                .equals(other._tagsWithSeededDefault, _tagsWithSeededDefault) &&
            (identical(other.holder, holder) || other.holder == holder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hanzi,
      radical,
      const DeepCollectionEquality().hash(_componentsNoDefault),
      canTraceNoDefault,
      const DeepCollectionEquality().hash(_componentsWithDefault),
      const DeepCollectionEquality().hash(_refsWithDefault),
      const DeepCollectionEquality().hash(_mapWithDefault),
      canTraceWithDefault,
      labelWithDefault,
      strokeCountWithDefault,
      const DeepCollectionEquality().hash(_tagsWithSeededDefault),
      holder);

  @override
  String toString() {
    return 'CharacterDto(hanzi: $hanzi, radical: $radical, componentsNoDefault: $componentsNoDefault, canTraceNoDefault: $canTraceNoDefault, componentsWithDefault: $componentsWithDefault, refsWithDefault: $refsWithDefault, mapWithDefault: $mapWithDefault, canTraceWithDefault: $canTraceWithDefault, labelWithDefault: $labelWithDefault, strokeCountWithDefault: $strokeCountWithDefault, tagsWithSeededDefault: $tagsWithSeededDefault, holder: $holder)';
  }
}

/// @nodoc
abstract mixin class _$CharacterDtoCopyWith<$Res>
    implements $CharacterDtoCopyWith<$Res> {
  factory _$CharacterDtoCopyWith(
          _CharacterDto value, $Res Function(_CharacterDto) _then) =
      __$CharacterDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hanzi') String hanzi,
      @JsonKey(name: 'radical') String? radical,
      @JsonKey(name: 'componentsNoDefault') List<String>? componentsNoDefault,
      @JsonKey(name: 'canTraceNoDefault') bool? canTraceNoDefault,
      @JsonKey(name: 'componentsWithDefault')
      List<String> componentsWithDefault,
      @JsonKey(name: 'refsWithDefault') List<PieceDto> refsWithDefault,
      @JsonKey(name: 'mapWithDefault') Map<String, String> mapWithDefault,
      @JsonKey(name: 'canTraceWithDefault') bool canTraceWithDefault,
      @JsonKey(name: 'labelWithDefault') String labelWithDefault,
      @JsonKey(name: 'strokeCountWithDefault') int strokeCountWithDefault,
      @JsonKey(name: 'tagsWithSeededDefault')
      List<String> tagsWithSeededDefault,
      @JsonKey(name: 'holder') RequiredHolderDto? holder});

  @override
  $RequiredHolderDtoCopyWith<$Res>? get holder;
}

/// @nodoc
class __$CharacterDtoCopyWithImpl<$Res>
    implements _$CharacterDtoCopyWith<$Res> {
  __$CharacterDtoCopyWithImpl(this._self, this._then);

  final _CharacterDto _self;
  final $Res Function(_CharacterDto) _then;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hanzi = null,
    Object? radical = freezed,
    Object? componentsNoDefault = freezed,
    Object? canTraceNoDefault = freezed,
    Object? componentsWithDefault = null,
    Object? refsWithDefault = null,
    Object? mapWithDefault = null,
    Object? canTraceWithDefault = null,
    Object? labelWithDefault = null,
    Object? strokeCountWithDefault = null,
    Object? tagsWithSeededDefault = null,
    Object? holder = freezed,
  }) {
    return _then(_CharacterDto(
      hanzi: null == hanzi
          ? _self.hanzi
          : hanzi // ignore: cast_nullable_to_non_nullable
              as String,
      radical: freezed == radical
          ? _self.radical
          : radical // ignore: cast_nullable_to_non_nullable
              as String?,
      componentsNoDefault: freezed == componentsNoDefault
          ? _self._componentsNoDefault
          : componentsNoDefault // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      canTraceNoDefault: freezed == canTraceNoDefault
          ? _self.canTraceNoDefault
          : canTraceNoDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      componentsWithDefault: null == componentsWithDefault
          ? _self._componentsWithDefault
          : componentsWithDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
      refsWithDefault: null == refsWithDefault
          ? _self._refsWithDefault
          : refsWithDefault // ignore: cast_nullable_to_non_nullable
              as List<PieceDto>,
      mapWithDefault: null == mapWithDefault
          ? _self._mapWithDefault
          : mapWithDefault // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      canTraceWithDefault: null == canTraceWithDefault
          ? _self.canTraceWithDefault
          : canTraceWithDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      labelWithDefault: null == labelWithDefault
          ? _self.labelWithDefault
          : labelWithDefault // ignore: cast_nullable_to_non_nullable
              as String,
      strokeCountWithDefault: null == strokeCountWithDefault
          ? _self.strokeCountWithDefault
          : strokeCountWithDefault // ignore: cast_nullable_to_non_nullable
              as int,
      tagsWithSeededDefault: null == tagsWithSeededDefault
          ? _self._tagsWithSeededDefault
          : tagsWithSeededDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
      holder: freezed == holder
          ? _self.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as RequiredHolderDto?,
    ));
  }

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequiredHolderDtoCopyWith<$Res>? get holder {
    if (_self.holder == null) {
      return null;
    }

    return $RequiredHolderDtoCopyWith<$Res>(_self.holder!, (value) {
      return _then(_self.copyWith(holder: value));
    });
  }
}

/// @nodoc
mixin _$RequiredHolderDto {
  @JsonKey(name: 'requiredWithDefault')
  List<String> get requiredWithDefault;

  /// Create a copy of RequiredHolderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequiredHolderDtoCopyWith<RequiredHolderDto> get copyWith =>
      _$RequiredHolderDtoCopyWithImpl<RequiredHolderDto>(
          this as RequiredHolderDto, _$identity);

  /// Serializes this RequiredHolderDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequiredHolderDto &&
            const DeepCollectionEquality()
                .equals(other.requiredWithDefault, requiredWithDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(requiredWithDefault));

  @override
  String toString() {
    return 'RequiredHolderDto(requiredWithDefault: $requiredWithDefault)';
  }
}

/// @nodoc
abstract mixin class $RequiredHolderDtoCopyWith<$Res> {
  factory $RequiredHolderDtoCopyWith(
          RequiredHolderDto value, $Res Function(RequiredHolderDto) _then) =
      _$RequiredHolderDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'requiredWithDefault') List<String> requiredWithDefault});
}

/// @nodoc
class _$RequiredHolderDtoCopyWithImpl<$Res>
    implements $RequiredHolderDtoCopyWith<$Res> {
  _$RequiredHolderDtoCopyWithImpl(this._self, this._then);

  final RequiredHolderDto _self;
  final $Res Function(RequiredHolderDto) _then;

  /// Create a copy of RequiredHolderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredWithDefault = null,
  }) {
    return _then(_self.copyWith(
      requiredWithDefault: null == requiredWithDefault
          ? _self.requiredWithDefault
          : requiredWithDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RequiredHolderDto].
extension RequiredHolderDtoPatterns on RequiredHolderDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RequiredHolderDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RequiredHolderDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RequiredHolderDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'requiredWithDefault')
            List<String> requiredWithDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto() when $default != null:
        return $default(_that.requiredWithDefault);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'requiredWithDefault')
            List<String> requiredWithDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto():
        return $default(_that.requiredWithDefault);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'requiredWithDefault')
            List<String> requiredWithDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RequiredHolderDto() when $default != null:
        return $default(_that.requiredWithDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RequiredHolderDto implements RequiredHolderDto {
  _RequiredHolderDto(
      {@JsonKey(name: 'requiredWithDefault')
      required final List<String> requiredWithDefault})
      : _requiredWithDefault = requiredWithDefault;
  factory _RequiredHolderDto.fromJson(Map<String, dynamic> json) =>
      _$RequiredHolderDtoFromJson(json);

  final List<String> _requiredWithDefault;
  @override
  @JsonKey(name: 'requiredWithDefault')
  List<String> get requiredWithDefault {
    if (_requiredWithDefault is EqualUnmodifiableListView)
      return _requiredWithDefault;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredWithDefault);
  }

  /// Create a copy of RequiredHolderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequiredHolderDtoCopyWith<_RequiredHolderDto> get copyWith =>
      __$RequiredHolderDtoCopyWithImpl<_RequiredHolderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequiredHolderDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequiredHolderDto &&
            const DeepCollectionEquality()
                .equals(other._requiredWithDefault, _requiredWithDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_requiredWithDefault));

  @override
  String toString() {
    return 'RequiredHolderDto(requiredWithDefault: $requiredWithDefault)';
  }
}

/// @nodoc
abstract mixin class _$RequiredHolderDtoCopyWith<$Res>
    implements $RequiredHolderDtoCopyWith<$Res> {
  factory _$RequiredHolderDtoCopyWith(
          _RequiredHolderDto value, $Res Function(_RequiredHolderDto) _then) =
      __$RequiredHolderDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'requiredWithDefault') List<String> requiredWithDefault});
}

/// @nodoc
class __$RequiredHolderDtoCopyWithImpl<$Res>
    implements _$RequiredHolderDtoCopyWith<$Res> {
  __$RequiredHolderDtoCopyWithImpl(this._self, this._then);

  final _RequiredHolderDto _self;
  final $Res Function(_RequiredHolderDto) _then;

  /// Create a copy of RequiredHolderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requiredWithDefault = null,
  }) {
    return _then(_RequiredHolderDto(
      requiredWithDefault: null == requiredWithDefault
          ? _self._requiredWithDefault
          : requiredWithDefault // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
