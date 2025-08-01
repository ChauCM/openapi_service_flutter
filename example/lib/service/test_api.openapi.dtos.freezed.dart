// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_api.openapi.dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRequestDto {
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterRequestDtoCopyWith<RegisterRequestDto> get copyWith =>
      _$RegisterRequestDtoCopyWithImpl<RegisterRequestDto>(
          this as RegisterRequestDto, _$identity);

  /// Serializes this RegisterRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RegisterRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class $RegisterRequestDtoCopyWith<$Res> {
  factory $RegisterRequestDtoCopyWith(
          RegisterRequestDto value, $Res Function(RegisterRequestDto) _then) =
      _$RegisterRequestDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$RegisterRequestDtoCopyWithImpl<$Res>
    implements $RegisterRequestDtoCopyWith<$Res> {
  _$RegisterRequestDtoCopyWithImpl(this._self, this._then);

  final RegisterRequestDto _self;
  final $Res Function(RegisterRequestDto) _then;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterRequestDto].
extension RegisterRequestDtoPatterns on RegisterRequestDto {
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
    TResult Function(_RegisterRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto() when $default != null:
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
    TResult Function(_RegisterRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto():
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
    TResult? Function(_RegisterRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'email') String email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto() when $default != null:
        return $default(_that.email);
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
    TResult Function(@JsonKey(name: 'email') String email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto():
        return $default(_that.email);
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
    TResult? Function(@JsonKey(name: 'email') String email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterRequestDto() when $default != null:
        return $default(_that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterRequestDto implements RegisterRequestDto {
  _RegisterRequestDto({@JsonKey(name: 'email') required this.email});
  factory _RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterRequestDtoCopyWith<_RegisterRequestDto> get copyWith =>
      __$RegisterRequestDtoCopyWithImpl<_RegisterRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RegisterRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$RegisterRequestDtoCopyWith<$Res>
    implements $RegisterRequestDtoCopyWith<$Res> {
  factory _$RegisterRequestDtoCopyWith(
          _RegisterRequestDto value, $Res Function(_RegisterRequestDto) _then) =
      __$RegisterRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$RegisterRequestDtoCopyWithImpl<$Res>
    implements _$RegisterRequestDtoCopyWith<$Res> {
  __$RegisterRequestDtoCopyWithImpl(this._self, this._then);

  final _RegisterRequestDto _self;
  final $Res Function(_RegisterRequestDto) _then;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_RegisterRequestDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$HelloRequestDto {
  @JsonKey(name: 'salutation')
  String? get salutation;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloRequestDtoCopyWith<HelloRequestDto> get copyWith =>
      _$HelloRequestDtoCopyWithImpl<HelloRequestDto>(
          this as HelloRequestDto, _$identity);

  /// Serializes this HelloRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloRequestDto &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  @override
  String toString() {
    return 'HelloRequestDto(salutation: $salutation)';
  }
}

/// @nodoc
abstract mixin class $HelloRequestDtoCopyWith<$Res> {
  factory $HelloRequestDtoCopyWith(
          HelloRequestDto value, $Res Function(HelloRequestDto) _then) =
      _$HelloRequestDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class _$HelloRequestDtoCopyWithImpl<$Res>
    implements $HelloRequestDtoCopyWith<$Res> {
  _$HelloRequestDtoCopyWithImpl(this._self, this._then);

  final HelloRequestDto _self;
  final $Res Function(HelloRequestDto) _then;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_self.copyWith(
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HelloRequestDto].
extension HelloRequestDtoPatterns on HelloRequestDto {
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
    TResult Function(_HelloRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto() when $default != null:
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
    TResult Function(_HelloRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto():
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
    TResult? Function(_HelloRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'salutation') String? salutation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto() when $default != null:
        return $default(_that.salutation);
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
    TResult Function(@JsonKey(name: 'salutation') String? salutation) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto():
        return $default(_that.salutation);
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
    TResult? Function(@JsonKey(name: 'salutation') String? salutation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloRequestDto() when $default != null:
        return $default(_that.salutation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HelloRequestDto implements HelloRequestDto {
  _HelloRequestDto({@JsonKey(name: 'salutation') this.salutation});
  factory _HelloRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HelloRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'salutation')
  final String? salutation;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HelloRequestDtoCopyWith<_HelloRequestDto> get copyWith =>
      __$HelloRequestDtoCopyWithImpl<_HelloRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloRequestDto &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  @override
  String toString() {
    return 'HelloRequestDto(salutation: $salutation)';
  }
}

/// @nodoc
abstract mixin class _$HelloRequestDtoCopyWith<$Res>
    implements $HelloRequestDtoCopyWith<$Res> {
  factory _$HelloRequestDtoCopyWith(
          _HelloRequestDto value, $Res Function(_HelloRequestDto) _then) =
      __$HelloRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class __$HelloRequestDtoCopyWithImpl<$Res>
    implements _$HelloRequestDtoCopyWith<$Res> {
  __$HelloRequestDtoCopyWithImpl(this._self, this._then);

  final _HelloRequestDto _self;
  final $Res Function(_HelloRequestDto) _then;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_HelloRequestDto(
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HelloResponseDto {
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloResponseDtoCopyWith<HelloResponseDto> get copyWith =>
      _$HelloResponseDtoCopyWithImpl<HelloResponseDto>(
          this as HelloResponseDto, _$identity);

  /// Serializes this HelloResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HelloResponseDtoCopyWith<$Res> {
  factory $HelloResponseDtoCopyWith(
          HelloResponseDto value, $Res Function(HelloResponseDto) _then) =
      _$HelloResponseDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloResponseDtoCopyWithImpl<$Res>
    implements $HelloResponseDtoCopyWith<$Res> {
  _$HelloResponseDtoCopyWithImpl(this._self, this._then);

  final HelloResponseDto _self;
  final $Res Function(HelloResponseDto) _then;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HelloResponseDto].
extension HelloResponseDtoPatterns on HelloResponseDto {
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
    TResult Function(_HelloResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto() when $default != null:
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
    TResult Function(_HelloResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto():
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
    TResult? Function(_HelloResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'message') String? message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto() when $default != null:
        return $default(_that.message);
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
    TResult Function(@JsonKey(name: 'message') String? message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto():
        return $default(_that.message);
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
    TResult? Function(@JsonKey(name: 'message') String? message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloResponseDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HelloResponseDto implements HelloResponseDto {
  _HelloResponseDto({@JsonKey(name: 'message') this.message});
  factory _HelloResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HelloResponseDtoCopyWith<_HelloResponseDto> get copyWith =>
      __$HelloResponseDtoCopyWithImpl<_HelloResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$HelloResponseDtoCopyWith<$Res>
    implements $HelloResponseDtoCopyWith<$Res> {
  factory _$HelloResponseDtoCopyWith(
          _HelloResponseDto value, $Res Function(_HelloResponseDto) _then) =
      __$HelloResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$HelloResponseDtoCopyWithImpl<$Res>
    implements _$HelloResponseDtoCopyWith<$Res> {
  __$HelloResponseDtoCopyWithImpl(this._self, this._then);

  final _HelloResponseDto _self;
  final $Res Function(_HelloResponseDto) _then;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HelloResponseDto(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UuidExampleMessageIdGetResponseDto {
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UuidExampleMessageIdGetResponseDtoCopyWith<
          UuidExampleMessageIdGetResponseDto>
      get copyWith => _$UuidExampleMessageIdGetResponseDtoCopyWithImpl<
              UuidExampleMessageIdGetResponseDto>(
          this as UuidExampleMessageIdGetResponseDto, _$identity);

  /// Serializes this UuidExampleMessageIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UuidExampleMessageIdGetResponseDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'UuidExampleMessageIdGetResponseDto(id: $id)';
  }
}

/// @nodoc
abstract mixin class $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  factory $UuidExampleMessageIdGetResponseDtoCopyWith(
          UuidExampleMessageIdGetResponseDto value,
          $Res Function(UuidExampleMessageIdGetResponseDto) _then) =
      _$UuidExampleMessageIdGetResponseDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$UuidExampleMessageIdGetResponseDtoCopyWithImpl<$Res>
    implements $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  _$UuidExampleMessageIdGetResponseDtoCopyWithImpl(this._self, this._then);

  final UuidExampleMessageIdGetResponseDto _self;
  final $Res Function(UuidExampleMessageIdGetResponseDto) _then;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UuidExampleMessageIdGetResponseDto].
extension UuidExampleMessageIdGetResponseDtoPatterns
    on UuidExampleMessageIdGetResponseDto {
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
    TResult Function(_UuidExampleMessageIdGetResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto() when $default != null:
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
    TResult Function(_UuidExampleMessageIdGetResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto():
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
    TResult? Function(_UuidExampleMessageIdGetResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'id') String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto() when $default != null:
        return $default(_that.id);
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
    TResult Function(@JsonKey(name: 'id') String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto():
        return $default(_that.id);
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
    TResult? Function(@JsonKey(name: 'id') String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UuidExampleMessageIdGetResponseDto() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UuidExampleMessageIdGetResponseDto
    implements UuidExampleMessageIdGetResponseDto {
  _UuidExampleMessageIdGetResponseDto({@JsonKey(name: 'id') required this.id});
  factory _UuidExampleMessageIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$UuidExampleMessageIdGetResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UuidExampleMessageIdGetResponseDtoCopyWith<
          _UuidExampleMessageIdGetResponseDto>
      get copyWith => __$UuidExampleMessageIdGetResponseDtoCopyWithImpl<
          _UuidExampleMessageIdGetResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UuidExampleMessageIdGetResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UuidExampleMessageIdGetResponseDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'UuidExampleMessageIdGetResponseDto(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$UuidExampleMessageIdGetResponseDtoCopyWith<$Res>
    implements $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  factory _$UuidExampleMessageIdGetResponseDtoCopyWith(
          _UuidExampleMessageIdGetResponseDto value,
          $Res Function(_UuidExampleMessageIdGetResponseDto) _then) =
      __$UuidExampleMessageIdGetResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$UuidExampleMessageIdGetResponseDtoCopyWithImpl<$Res>
    implements _$UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  __$UuidExampleMessageIdGetResponseDtoCopyWithImpl(this._self, this._then);

  final _UuidExampleMessageIdGetResponseDto _self;
  final $Res Function(_UuidExampleMessageIdGetResponseDto) _then;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_UuidExampleMessageIdGetResponseDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
