// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_api.openapi.dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
mixin _$ApiError {
  String get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({String message, int? statusCode, String? type});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode, String? type});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ApiErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl implements _ApiError {
  const _$ApiErrorImpl({required this.message, this.statusCode, this.type});

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  final String message;
  @override
  final int? statusCode;
  @override
  final String? type;

  @override
  String toString() {
    return 'ApiError(message: $message, statusCode: $statusCode, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, type);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiError implements ApiError {
  const factory _ApiError(
      {required final String message,
      final int? statusCode,
      final String? type}) = _$ApiErrorImpl;

  factory _ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  @override
  String get message;
  @override
  int? get statusCode;
  @override
  String? get type;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterRequestDto _$RegisterRequestDtoFromJson(Map<String, dynamic> json) {
  return _RegisterRequestDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestDto {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this RegisterRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterRequestDtoCopyWith<RegisterRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestDtoCopyWith<$Res> {
  factory $RegisterRequestDtoCopyWith(
          RegisterRequestDto value, $Res Function(RegisterRequestDto) then) =
      _$RegisterRequestDtoCopyWithImpl<$Res, RegisterRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$RegisterRequestDtoCopyWithImpl<$Res, $Val extends RegisterRequestDto>
    implements $RegisterRequestDtoCopyWith<$Res> {
  _$RegisterRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterRequestDtoImplCopyWith<$Res>
    implements $RegisterRequestDtoCopyWith<$Res> {
  factory _$$RegisterRequestDtoImplCopyWith(_$RegisterRequestDtoImpl value,
          $Res Function(_$RegisterRequestDtoImpl) then) =
      __$$RegisterRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$RegisterRequestDtoImplCopyWithImpl<$Res>
    extends _$RegisterRequestDtoCopyWithImpl<$Res, _$RegisterRequestDtoImpl>
    implements _$$RegisterRequestDtoImplCopyWith<$Res> {
  __$$RegisterRequestDtoImplCopyWithImpl(_$RegisterRequestDtoImpl _value,
      $Res Function(_$RegisterRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegisterRequestDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRequestDtoImpl implements _RegisterRequestDto {
  _$RegisterRequestDtoImpl({@JsonKey(name: 'email') required this.email});

  factory _$RegisterRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'RegisterRequestDto(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestDtoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestDtoImplCopyWith<_$RegisterRequestDtoImpl> get copyWith =>
      __$$RegisterRequestDtoImplCopyWithImpl<_$RegisterRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _RegisterRequestDto implements RegisterRequestDto {
  factory _RegisterRequestDto(
          {@JsonKey(name: 'email') required final String email}) =
      _$RegisterRequestDtoImpl;

  factory _RegisterRequestDto.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of RegisterRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestDtoImplCopyWith<_$RegisterRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HelloRequestDto _$HelloRequestDtoFromJson(Map<String, dynamic> json) {
  return _HelloRequestDto.fromJson(json);
}

/// @nodoc
mixin _$HelloRequestDto {
  @JsonKey(name: 'salutation')
  String? get salutation => throw _privateConstructorUsedError;

  /// Serializes this HelloRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelloRequestDtoCopyWith<HelloRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloRequestDtoCopyWith<$Res> {
  factory $HelloRequestDtoCopyWith(
          HelloRequestDto value, $Res Function(HelloRequestDto) then) =
      _$HelloRequestDtoCopyWithImpl<$Res, HelloRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class _$HelloRequestDtoCopyWithImpl<$Res, $Val extends HelloRequestDto>
    implements $HelloRequestDtoCopyWith<$Res> {
  _$HelloRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_value.copyWith(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloRequestDtoImplCopyWith<$Res>
    implements $HelloRequestDtoCopyWith<$Res> {
  factory _$$HelloRequestDtoImplCopyWith(_$HelloRequestDtoImpl value,
          $Res Function(_$HelloRequestDtoImpl) then) =
      __$$HelloRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class __$$HelloRequestDtoImplCopyWithImpl<$Res>
    extends _$HelloRequestDtoCopyWithImpl<$Res, _$HelloRequestDtoImpl>
    implements _$$HelloRequestDtoImplCopyWith<$Res> {
  __$$HelloRequestDtoImplCopyWithImpl(
      _$HelloRequestDtoImpl _value, $Res Function(_$HelloRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_$HelloRequestDtoImpl(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloRequestDtoImpl implements _HelloRequestDto {
  _$HelloRequestDtoImpl({@JsonKey(name: 'salutation') this.salutation});

  factory _$HelloRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'salutation')
  final String? salutation;

  @override
  String toString() {
    return 'HelloRequestDto(salutation: $salutation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloRequestDtoImpl &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloRequestDtoImplCopyWith<_$HelloRequestDtoImpl> get copyWith =>
      __$$HelloRequestDtoImplCopyWithImpl<_$HelloRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _HelloRequestDto implements HelloRequestDto {
  factory _HelloRequestDto(
          {@JsonKey(name: 'salutation') final String? salutation}) =
      _$HelloRequestDtoImpl;

  factory _HelloRequestDto.fromJson(Map<String, dynamic> json) =
      _$HelloRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'salutation')
  String? get salutation;

  /// Create a copy of HelloRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelloRequestDtoImplCopyWith<_$HelloRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HelloResponseDto _$HelloResponseDtoFromJson(Map<String, dynamic> json) {
  return _HelloResponseDto.fromJson(json);
}

/// @nodoc
mixin _$HelloResponseDto {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this HelloResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelloResponseDtoCopyWith<HelloResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloResponseDtoCopyWith<$Res> {
  factory $HelloResponseDtoCopyWith(
          HelloResponseDto value, $Res Function(HelloResponseDto) then) =
      _$HelloResponseDtoCopyWithImpl<$Res, HelloResponseDto>;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloResponseDtoCopyWithImpl<$Res, $Val extends HelloResponseDto>
    implements $HelloResponseDtoCopyWith<$Res> {
  _$HelloResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloResponseDtoImplCopyWith<$Res>
    implements $HelloResponseDtoCopyWith<$Res> {
  factory _$$HelloResponseDtoImplCopyWith(_$HelloResponseDtoImpl value,
          $Res Function(_$HelloResponseDtoImpl) then) =
      __$$HelloResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$HelloResponseDtoImplCopyWithImpl<$Res>
    extends _$HelloResponseDtoCopyWithImpl<$Res, _$HelloResponseDtoImpl>
    implements _$$HelloResponseDtoImplCopyWith<$Res> {
  __$$HelloResponseDtoImplCopyWithImpl(_$HelloResponseDtoImpl _value,
      $Res Function(_$HelloResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HelloResponseDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloResponseDtoImpl implements _HelloResponseDto {
  _$HelloResponseDtoImpl({@JsonKey(name: 'message') this.message});

  factory _$HelloResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'HelloResponseDto(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloResponseDtoImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloResponseDtoImplCopyWith<_$HelloResponseDtoImpl> get copyWith =>
      __$$HelloResponseDtoImplCopyWithImpl<_$HelloResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _HelloResponseDto implements HelloResponseDto {
  factory _HelloResponseDto({@JsonKey(name: 'message') final String? message}) =
      _$HelloResponseDtoImpl;

  factory _HelloResponseDto.fromJson(Map<String, dynamic> json) =
      _$HelloResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelloResponseDtoImplCopyWith<_$HelloResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegisterPostRequestDto _$UserRegisterPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterPostRequestDto {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this UserRegisterPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegisterPostRequestDtoCopyWith<UserRegisterPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterPostRequestDtoCopyWith<$Res> {
  factory $UserRegisterPostRequestDtoCopyWith(UserRegisterPostRequestDto value,
          $Res Function(UserRegisterPostRequestDto) then) =
      _$UserRegisterPostRequestDtoCopyWithImpl<$Res,
          UserRegisterPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$UserRegisterPostRequestDtoCopyWithImpl<$Res,
        $Val extends UserRegisterPostRequestDto>
    implements $UserRegisterPostRequestDtoCopyWith<$Res> {
  _$UserRegisterPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegisterPostRequestDtoImplCopyWith<$Res>
    implements $UserRegisterPostRequestDtoCopyWith<$Res> {
  factory _$$UserRegisterPostRequestDtoImplCopyWith(
          _$UserRegisterPostRequestDtoImpl value,
          $Res Function(_$UserRegisterPostRequestDtoImpl) then) =
      __$$UserRegisterPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$UserRegisterPostRequestDtoImplCopyWithImpl<$Res>
    extends _$UserRegisterPostRequestDtoCopyWithImpl<$Res,
        _$UserRegisterPostRequestDtoImpl>
    implements _$$UserRegisterPostRequestDtoImplCopyWith<$Res> {
  __$$UserRegisterPostRequestDtoImplCopyWithImpl(
      _$UserRegisterPostRequestDtoImpl _value,
      $Res Function(_$UserRegisterPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UserRegisterPostRequestDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterPostRequestDtoImpl implements _UserRegisterPostRequestDto {
  _$UserRegisterPostRequestDtoImpl(
      {@JsonKey(name: 'email') required this.email});

  factory _$UserRegisterPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserRegisterPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'UserRegisterPostRequestDto(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterPostRequestDtoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterPostRequestDtoImplCopyWith<_$UserRegisterPostRequestDtoImpl>
      get copyWith => __$$UserRegisterPostRequestDtoImplCopyWithImpl<
          _$UserRegisterPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterPostRequestDto
    implements UserRegisterPostRequestDto {
  factory _UserRegisterPostRequestDto(
          {@JsonKey(name: 'email') required final String email}) =
      _$UserRegisterPostRequestDtoImpl;

  factory _UserRegisterPostRequestDto.fromJson(Map<String, dynamic> json) =
      _$UserRegisterPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of UserRegisterPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisterPostRequestDtoImplCopyWith<_$UserRegisterPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloNameGetResponseDto _$HelloNameGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _HelloNameGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$HelloNameGetResponseDto {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this HelloNameGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelloNameGetResponseDtoCopyWith<HelloNameGetResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloNameGetResponseDtoCopyWith<$Res> {
  factory $HelloNameGetResponseDtoCopyWith(HelloNameGetResponseDto value,
          $Res Function(HelloNameGetResponseDto) then) =
      _$HelloNameGetResponseDtoCopyWithImpl<$Res, HelloNameGetResponseDto>;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloNameGetResponseDtoCopyWithImpl<$Res,
        $Val extends HelloNameGetResponseDto>
    implements $HelloNameGetResponseDtoCopyWith<$Res> {
  _$HelloNameGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloNameGetResponseDtoImplCopyWith<$Res>
    implements $HelloNameGetResponseDtoCopyWith<$Res> {
  factory _$$HelloNameGetResponseDtoImplCopyWith(
          _$HelloNameGetResponseDtoImpl value,
          $Res Function(_$HelloNameGetResponseDtoImpl) then) =
      __$$HelloNameGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$HelloNameGetResponseDtoImplCopyWithImpl<$Res>
    extends _$HelloNameGetResponseDtoCopyWithImpl<$Res,
        _$HelloNameGetResponseDtoImpl>
    implements _$$HelloNameGetResponseDtoImplCopyWith<$Res> {
  __$$HelloNameGetResponseDtoImplCopyWithImpl(
      _$HelloNameGetResponseDtoImpl _value,
      $Res Function(_$HelloNameGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HelloNameGetResponseDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloNameGetResponseDtoImpl implements _HelloNameGetResponseDto {
  _$HelloNameGetResponseDtoImpl({@JsonKey(name: 'message') this.message});

  factory _$HelloNameGetResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloNameGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'HelloNameGetResponseDto(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloNameGetResponseDtoImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloNameGetResponseDtoImplCopyWith<_$HelloNameGetResponseDtoImpl>
      get copyWith => __$$HelloNameGetResponseDtoImplCopyWithImpl<
          _$HelloNameGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloNameGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _HelloNameGetResponseDto implements HelloNameGetResponseDto {
  factory _HelloNameGetResponseDto(
          {@JsonKey(name: 'message') final String? message}) =
      _$HelloNameGetResponseDtoImpl;

  factory _HelloNameGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$HelloNameGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloNameGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelloNameGetResponseDtoImplCopyWith<_$HelloNameGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloNamePutResponseDto _$HelloNamePutResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _HelloNamePutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$HelloNamePutResponseDto {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this HelloNamePutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelloNamePutResponseDtoCopyWith<HelloNamePutResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloNamePutResponseDtoCopyWith<$Res> {
  factory $HelloNamePutResponseDtoCopyWith(HelloNamePutResponseDto value,
          $Res Function(HelloNamePutResponseDto) then) =
      _$HelloNamePutResponseDtoCopyWithImpl<$Res, HelloNamePutResponseDto>;
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$HelloNamePutResponseDtoCopyWithImpl<$Res,
        $Val extends HelloNamePutResponseDto>
    implements $HelloNamePutResponseDtoCopyWith<$Res> {
  _$HelloNamePutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloNamePutResponseDtoImplCopyWith<$Res>
    implements $HelloNamePutResponseDtoCopyWith<$Res> {
  factory _$$HelloNamePutResponseDtoImplCopyWith(
          _$HelloNamePutResponseDtoImpl value,
          $Res Function(_$HelloNamePutResponseDtoImpl) then) =
      __$$HelloNamePutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$HelloNamePutResponseDtoImplCopyWithImpl<$Res>
    extends _$HelloNamePutResponseDtoCopyWithImpl<$Res,
        _$HelloNamePutResponseDtoImpl>
    implements _$$HelloNamePutResponseDtoImplCopyWith<$Res> {
  __$$HelloNamePutResponseDtoImplCopyWithImpl(
      _$HelloNamePutResponseDtoImpl _value,
      $Res Function(_$HelloNamePutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HelloNamePutResponseDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloNamePutResponseDtoImpl implements _HelloNamePutResponseDto {
  _$HelloNamePutResponseDtoImpl({@JsonKey(name: 'message') this.message});

  factory _$HelloNamePutResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloNamePutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'HelloNamePutResponseDto(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloNamePutResponseDtoImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloNamePutResponseDtoImplCopyWith<_$HelloNamePutResponseDtoImpl>
      get copyWith => __$$HelloNamePutResponseDtoImplCopyWithImpl<
          _$HelloNamePutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloNamePutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _HelloNamePutResponseDto implements HelloNamePutResponseDto {
  factory _HelloNamePutResponseDto(
          {@JsonKey(name: 'message') final String? message}) =
      _$HelloNamePutResponseDtoImpl;

  factory _HelloNamePutResponseDto.fromJson(Map<String, dynamic> json) =
      _$HelloNamePutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of HelloNamePutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelloNamePutResponseDtoImplCopyWith<_$HelloNamePutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloNamePutRequestDto _$HelloNamePutRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _HelloNamePutRequestDto.fromJson(json);
}

/// @nodoc
mixin _$HelloNamePutRequestDto {
  @JsonKey(name: 'salutation')
  String? get salutation => throw _privateConstructorUsedError;

  /// Serializes this HelloNamePutRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelloNamePutRequestDtoCopyWith<HelloNamePutRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloNamePutRequestDtoCopyWith<$Res> {
  factory $HelloNamePutRequestDtoCopyWith(HelloNamePutRequestDto value,
          $Res Function(HelloNamePutRequestDto) then) =
      _$HelloNamePutRequestDtoCopyWithImpl<$Res, HelloNamePutRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class _$HelloNamePutRequestDtoCopyWithImpl<$Res,
        $Val extends HelloNamePutRequestDto>
    implements $HelloNamePutRequestDtoCopyWith<$Res> {
  _$HelloNamePutRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_value.copyWith(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloNamePutRequestDtoImplCopyWith<$Res>
    implements $HelloNamePutRequestDtoCopyWith<$Res> {
  factory _$$HelloNamePutRequestDtoImplCopyWith(
          _$HelloNamePutRequestDtoImpl value,
          $Res Function(_$HelloNamePutRequestDtoImpl) then) =
      __$$HelloNamePutRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'salutation') String? salutation});
}

/// @nodoc
class __$$HelloNamePutRequestDtoImplCopyWithImpl<$Res>
    extends _$HelloNamePutRequestDtoCopyWithImpl<$Res,
        _$HelloNamePutRequestDtoImpl>
    implements _$$HelloNamePutRequestDtoImplCopyWith<$Res> {
  __$$HelloNamePutRequestDtoImplCopyWithImpl(
      _$HelloNamePutRequestDtoImpl _value,
      $Res Function(_$HelloNamePutRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
  }) {
    return _then(_$HelloNamePutRequestDtoImpl(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloNamePutRequestDtoImpl implements _HelloNamePutRequestDto {
  _$HelloNamePutRequestDtoImpl({@JsonKey(name: 'salutation') this.salutation});

  factory _$HelloNamePutRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloNamePutRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'salutation')
  final String? salutation;

  @override
  String toString() {
    return 'HelloNamePutRequestDto(salutation: $salutation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloNamePutRequestDtoImpl &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salutation);

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloNamePutRequestDtoImplCopyWith<_$HelloNamePutRequestDtoImpl>
      get copyWith => __$$HelloNamePutRequestDtoImplCopyWithImpl<
          _$HelloNamePutRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloNamePutRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _HelloNamePutRequestDto implements HelloNamePutRequestDto {
  factory _HelloNamePutRequestDto(
          {@JsonKey(name: 'salutation') final String? salutation}) =
      _$HelloNamePutRequestDtoImpl;

  factory _HelloNamePutRequestDto.fromJson(Map<String, dynamic> json) =
      _$HelloNamePutRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'salutation')
  String? get salutation;

  /// Create a copy of HelloNamePutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelloNamePutRequestDtoImplCopyWith<_$HelloNamePutRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UuidExampleMessageIdGetResponseDto _$UuidExampleMessageIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UuidExampleMessageIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UuidExampleMessageIdGetResponseDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this UuidExampleMessageIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UuidExampleMessageIdGetResponseDtoCopyWith<
          UuidExampleMessageIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  factory $UuidExampleMessageIdGetResponseDtoCopyWith(
          UuidExampleMessageIdGetResponseDto value,
          $Res Function(UuidExampleMessageIdGetResponseDto) then) =
      _$UuidExampleMessageIdGetResponseDtoCopyWithImpl<$Res,
          UuidExampleMessageIdGetResponseDto>;
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$UuidExampleMessageIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends UuidExampleMessageIdGetResponseDto>
    implements $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  _$UuidExampleMessageIdGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UuidExampleMessageIdGetResponseDtoImplCopyWith<$Res>
    implements $UuidExampleMessageIdGetResponseDtoCopyWith<$Res> {
  factory _$$UuidExampleMessageIdGetResponseDtoImplCopyWith(
          _$UuidExampleMessageIdGetResponseDtoImpl value,
          $Res Function(_$UuidExampleMessageIdGetResponseDtoImpl) then) =
      __$$UuidExampleMessageIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$UuidExampleMessageIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$UuidExampleMessageIdGetResponseDtoCopyWithImpl<$Res,
        _$UuidExampleMessageIdGetResponseDtoImpl>
    implements _$$UuidExampleMessageIdGetResponseDtoImplCopyWith<$Res> {
  __$$UuidExampleMessageIdGetResponseDtoImplCopyWithImpl(
      _$UuidExampleMessageIdGetResponseDtoImpl _value,
      $Res Function(_$UuidExampleMessageIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UuidExampleMessageIdGetResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UuidExampleMessageIdGetResponseDtoImpl
    implements _UuidExampleMessageIdGetResponseDto {
  _$UuidExampleMessageIdGetResponseDtoImpl(
      {@JsonKey(name: 'id') required this.id});

  factory _$UuidExampleMessageIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UuidExampleMessageIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'UuidExampleMessageIdGetResponseDto(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UuidExampleMessageIdGetResponseDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UuidExampleMessageIdGetResponseDtoImplCopyWith<
          _$UuidExampleMessageIdGetResponseDtoImpl>
      get copyWith => __$$UuidExampleMessageIdGetResponseDtoImplCopyWithImpl<
          _$UuidExampleMessageIdGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UuidExampleMessageIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UuidExampleMessageIdGetResponseDto
    implements UuidExampleMessageIdGetResponseDto {
  factory _UuidExampleMessageIdGetResponseDto(
          {@JsonKey(name: 'id') required final String id}) =
      _$UuidExampleMessageIdGetResponseDtoImpl;

  factory _UuidExampleMessageIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$UuidExampleMessageIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UuidExampleMessageIdGetResponseDtoImplCopyWith<
          _$UuidExampleMessageIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
