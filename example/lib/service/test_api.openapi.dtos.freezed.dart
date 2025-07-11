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
mixin _$ApiError {
  String get message;
  int? get statusCode;
  String? get type;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<ApiError> get copyWith =>
      _$ApiErrorCopyWithImpl<ApiError>(this as ApiError, _$identity);

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, type);

  @override
  String toString() {
    return 'ApiError(message: $message, statusCode: $statusCode, type: $type)';
  }
}

/// @nodoc
abstract mixin class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) _then) =
      _$ApiErrorCopyWithImpl;
  @useResult
  $Res call({String message, int? statusCode, String? type});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._self, this._then);

  final ApiError _self;
  final $Res Function(ApiError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiError].
extension ApiErrorPatterns on ApiError {
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
    TResult Function(_ApiError value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiError() when $default != null:
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
    TResult Function(_ApiError value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiError():
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
    TResult? Function(_ApiError value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiError() when $default != null:
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
    TResult Function(String message, int? statusCode, String? type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiError() when $default != null:
        return $default(_that.message, _that.statusCode, _that.type);
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
    TResult Function(String message, int? statusCode, String? type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiError():
        return $default(_that.message, _that.statusCode, _that.type);
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
    TResult? Function(String message, int? statusCode, String? type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiError() when $default != null:
        return $default(_that.message, _that.statusCode, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApiError implements ApiError {
  const _ApiError({required this.message, this.statusCode, this.type});
  factory _ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  @override
  final String message;
  @override
  final int? statusCode;
  @override
  final String? type;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, type);

  @override
  String toString() {
    return 'ApiError(message: $message, statusCode: $statusCode, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$ApiErrorCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) _then) =
      __$ApiErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message, int? statusCode, String? type});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(this._self, this._then);

  final _ApiError _self;
  final $Res Function(_ApiError) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_ApiError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

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
mixin _$UserRegisterPostRequestDto {
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegisterPostRequestDtoCopyWith<UserRegisterPostRequestDto>
      get copyWith =>
          _$UserRegisterPostRequestDtoCopyWithImpl<UserRegisterPostRequestDto>(
              this as UserRegisterPostRequestDto, _$identity);

  /// Serializes this UserRegisterPostRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegisterPostRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'UserRegisterPostRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserRegisterPostRequestDtoCopyWith<$Res> {
  factory $UserRegisterPostRequestDtoCopyWith(UserRegisterPostRequestDto value,
          $Res Function(UserRegisterPostRequestDto) _then) =
      _$UserRegisterPostRequestDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$UserRegisterPostRequestDtoCopyWithImpl<$Res>
    implements $UserRegisterPostRequestDtoCopyWith<$Res> {
  _$UserRegisterPostRequestDtoCopyWithImpl(this._self, this._then);

  final UserRegisterPostRequestDto _self;
  final $Res Function(UserRegisterPostRequestDto) _then;

  /// Create a copy of UserRegisterPostRequestDto
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

/// Adds pattern-matching-related methods to [UserRegisterPostRequestDto].
extension UserRegisterPostRequestDtoPatterns on UserRegisterPostRequestDto {
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
    TResult Function(_UserRegisterPostRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegisterPostRequestDto() when $default != null:
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
    TResult Function(_UserRegisterPostRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegisterPostRequestDto():
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
    TResult? Function(_UserRegisterPostRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegisterPostRequestDto() when $default != null:
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
      case _UserRegisterPostRequestDto() when $default != null:
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
      case _UserRegisterPostRequestDto():
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
      case _UserRegisterPostRequestDto() when $default != null:
        return $default(_that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserRegisterPostRequestDto implements UserRegisterPostRequestDto {
  _UserRegisterPostRequestDto({@JsonKey(name: 'email') required this.email});
  factory _UserRegisterPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterPostRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRegisterPostRequestDtoCopyWith<_UserRegisterPostRequestDto>
      get copyWith => __$UserRegisterPostRequestDtoCopyWithImpl<
          _UserRegisterPostRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserRegisterPostRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegisterPostRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'UserRegisterPostRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$UserRegisterPostRequestDtoCopyWith<$Res>
    implements $UserRegisterPostRequestDtoCopyWith<$Res> {
  factory _$UserRegisterPostRequestDtoCopyWith(
          _UserRegisterPostRequestDto value,
          $Res Function(_UserRegisterPostRequestDto) _then) =
      __$UserRegisterPostRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$UserRegisterPostRequestDtoCopyWithImpl<$Res>
    implements _$UserRegisterPostRequestDtoCopyWith<$Res> {
  __$UserRegisterPostRequestDtoCopyWithImpl(this._self, this._then);

  final _UserRegisterPostRequestDto _self;
  final $Res Function(_UserRegisterPostRequestDto) _then;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_UserRegisterPostRequestDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$HelloNameGetResponseDto {
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloNameGetResponseDtoCopyWith<HelloNameGetResponseDto> get copyWith =>
      _$HelloNameGetResponseDtoCopyWithImpl<HelloNameGetResponseDto>(
          this as HelloNameGetResponseDto, _$identity);

  /// Serializes this HelloNameGetResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloNameGetResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloNameGetResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HelloNameGetResponseDtoCopyWith<$Res> {
  factory $HelloNameGetResponseDtoCopyWith(HelloNameGetResponseDto value,
          $Res Function(HelloNameGetResponseDto) _then) =
      _$HelloNameGetResponseDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloNameGetResponseDtoCopyWithImpl<$Res>
    implements $HelloNameGetResponseDtoCopyWith<$Res> {
  _$HelloNameGetResponseDtoCopyWithImpl(this._self, this._then);

  final HelloNameGetResponseDto _self;
  final $Res Function(HelloNameGetResponseDto) _then;

  /// Create a copy of HelloNameGetResponseDto
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

/// Adds pattern-matching-related methods to [HelloNameGetResponseDto].
extension HelloNameGetResponseDtoPatterns on HelloNameGetResponseDto {
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
    TResult Function(_HelloNameGetResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloNameGetResponseDto() when $default != null:
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
    TResult Function(_HelloNameGetResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNameGetResponseDto():
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
    TResult? Function(_HelloNameGetResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNameGetResponseDto() when $default != null:
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
      case _HelloNameGetResponseDto() when $default != null:
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
      case _HelloNameGetResponseDto():
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
      case _HelloNameGetResponseDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HelloNameGetResponseDto implements HelloNameGetResponseDto {
  _HelloNameGetResponseDto({@JsonKey(name: 'message') this.message});
  factory _HelloNameGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNameGetResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HelloNameGetResponseDtoCopyWith<_HelloNameGetResponseDto> get copyWith =>
      __$HelloNameGetResponseDtoCopyWithImpl<_HelloNameGetResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloNameGetResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloNameGetResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloNameGetResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$HelloNameGetResponseDtoCopyWith<$Res>
    implements $HelloNameGetResponseDtoCopyWith<$Res> {
  factory _$HelloNameGetResponseDtoCopyWith(_HelloNameGetResponseDto value,
          $Res Function(_HelloNameGetResponseDto) _then) =
      __$HelloNameGetResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$HelloNameGetResponseDtoCopyWithImpl<$Res>
    implements _$HelloNameGetResponseDtoCopyWith<$Res> {
  __$HelloNameGetResponseDtoCopyWithImpl(this._self, this._then);

  final _HelloNameGetResponseDto _self;
  final $Res Function(_HelloNameGetResponseDto) _then;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HelloNameGetResponseDto(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HelloNamePutResponseDto {
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloNamePutResponseDtoCopyWith<HelloNamePutResponseDto> get copyWith =>
      _$HelloNamePutResponseDtoCopyWithImpl<HelloNamePutResponseDto>(
          this as HelloNamePutResponseDto, _$identity);

  /// Serializes this HelloNamePutResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloNamePutResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloNamePutResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HelloNamePutResponseDtoCopyWith<$Res> {
  factory $HelloNamePutResponseDtoCopyWith(HelloNamePutResponseDto value,
          $Res Function(HelloNamePutResponseDto) _then) =
      _$HelloNamePutResponseDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloNamePutResponseDtoCopyWithImpl<$Res>
    implements $HelloNamePutResponseDtoCopyWith<$Res> {
  _$HelloNamePutResponseDtoCopyWithImpl(this._self, this._then);

  final HelloNamePutResponseDto _self;
  final $Res Function(HelloNamePutResponseDto) _then;

  /// Create a copy of HelloNamePutResponseDto
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

/// Adds pattern-matching-related methods to [HelloNamePutResponseDto].
extension HelloNamePutResponseDtoPatterns on HelloNamePutResponseDto {
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
    TResult Function(_HelloNamePutResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutResponseDto() when $default != null:
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
    TResult Function(_HelloNamePutResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutResponseDto():
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
    TResult? Function(_HelloNamePutResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutResponseDto() when $default != null:
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
      case _HelloNamePutResponseDto() when $default != null:
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
      case _HelloNamePutResponseDto():
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
      case _HelloNamePutResponseDto() when $default != null:
        return $default(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HelloNamePutResponseDto implements HelloNamePutResponseDto {
  _HelloNamePutResponseDto({@JsonKey(name: 'message') this.message});
  factory _HelloNamePutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNamePutResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HelloNamePutResponseDtoCopyWith<_HelloNamePutResponseDto> get copyWith =>
      __$HelloNamePutResponseDtoCopyWithImpl<_HelloNamePutResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloNamePutResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloNamePutResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HelloNamePutResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$HelloNamePutResponseDtoCopyWith<$Res>
    implements $HelloNamePutResponseDtoCopyWith<$Res> {
  factory _$HelloNamePutResponseDtoCopyWith(_HelloNamePutResponseDto value,
          $Res Function(_HelloNamePutResponseDto) _then) =
      __$HelloNamePutResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$HelloNamePutResponseDtoCopyWithImpl<$Res>
    implements _$HelloNamePutResponseDtoCopyWith<$Res> {
  __$HelloNamePutResponseDtoCopyWithImpl(this._self, this._then);

  final _HelloNamePutResponseDto _self;
  final $Res Function(_HelloNamePutResponseDto) _then;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HelloNamePutResponseDto(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HelloNamePutRequestDto {
  @JsonKey(name: 'salutation')
  String? get salutation;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HelloNamePutRequestDtoCopyWith<HelloNamePutRequestDto> get copyWith =>
      _$HelloNamePutRequestDtoCopyWithImpl<HelloNamePutRequestDto>(
          this as HelloNamePutRequestDto, _$identity);

  /// Serializes this HelloNamePutRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HelloNamePutRequestDto &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  @override
  String toString() {
    return 'HelloNamePutRequestDto(salutation: $salutation)';
  }
}

/// @nodoc
abstract mixin class $HelloNamePutRequestDtoCopyWith<$Res> {
  factory $HelloNamePutRequestDtoCopyWith(HelloNamePutRequestDto value,
          $Res Function(HelloNamePutRequestDto) _then) =
      _$HelloNamePutRequestDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class _$HelloNamePutRequestDtoCopyWithImpl<$Res>
    implements $HelloNamePutRequestDtoCopyWith<$Res> {
  _$HelloNamePutRequestDtoCopyWithImpl(this._self, this._then);

  final HelloNamePutRequestDto _self;
  final $Res Function(HelloNamePutRequestDto) _then;

  /// Create a copy of HelloNamePutRequestDto
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

/// Adds pattern-matching-related methods to [HelloNamePutRequestDto].
extension HelloNamePutRequestDtoPatterns on HelloNamePutRequestDto {
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
    TResult Function(_HelloNamePutRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutRequestDto() when $default != null:
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
    TResult Function(_HelloNamePutRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutRequestDto():
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
    TResult? Function(_HelloNamePutRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HelloNamePutRequestDto() when $default != null:
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
      case _HelloNamePutRequestDto() when $default != null:
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
      case _HelloNamePutRequestDto():
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
      case _HelloNamePutRequestDto() when $default != null:
        return $default(_that.salutation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HelloNamePutRequestDto implements HelloNamePutRequestDto {
  _HelloNamePutRequestDto({@JsonKey(name: 'salutation') this.salutation});
  factory _HelloNamePutRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HelloNamePutRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'salutation')
  final String? salutation;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HelloNamePutRequestDtoCopyWith<_HelloNamePutRequestDto> get copyWith =>
      __$HelloNamePutRequestDtoCopyWithImpl<_HelloNamePutRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HelloNamePutRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloNamePutRequestDto &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  @override
  String toString() {
    return 'HelloNamePutRequestDto(salutation: $salutation)';
  }
}

/// @nodoc
abstract mixin class _$HelloNamePutRequestDtoCopyWith<$Res>
    implements $HelloNamePutRequestDtoCopyWith<$Res> {
  factory _$HelloNamePutRequestDtoCopyWith(_HelloNamePutRequestDto value,
          $Res Function(_HelloNamePutRequestDto) _then) =
      __$HelloNamePutRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class __$HelloNamePutRequestDtoCopyWithImpl<$Res>
    implements _$HelloNamePutRequestDtoCopyWith<$Res> {
  __$HelloNamePutRequestDtoCopyWithImpl(this._self, this._then);

  final _HelloNamePutRequestDto _self;
  final $Res Function(_HelloNamePutRequestDto) _then;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_HelloNamePutRequestDto(
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
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
