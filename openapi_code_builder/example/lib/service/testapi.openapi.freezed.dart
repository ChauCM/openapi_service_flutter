// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testapi.openapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiError {
  String get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

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

class _$ApiErrorImpl implements _ApiError {
  const _$ApiErrorImpl({required this.message, this.statusCode, this.type});

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

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, type);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);
}

abstract class _ApiError implements ApiError {
  const factory _ApiError(
      {required final String message,
      final int? statusCode,
      final String? type}) = _$ApiErrorImpl;

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

InheritanceBaseDto _$InheritanceBaseDtoFromJson(Map<String, dynamic> json) {
  return _InheritanceBaseDto.fromJson(json);
}

/// @nodoc
mixin _$InheritanceBaseDto {
  @JsonKey(name: 'test1')
  String? get test1 => throw _privateConstructorUsedError;

  /// Serializes this InheritanceBaseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InheritanceBaseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InheritanceBaseDtoCopyWith<InheritanceBaseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InheritanceBaseDtoCopyWith<$Res> {
  factory $InheritanceBaseDtoCopyWith(
          InheritanceBaseDto value, $Res Function(InheritanceBaseDto) then) =
      _$InheritanceBaseDtoCopyWithImpl<$Res, InheritanceBaseDto>;
  @useResult
  $Res call({@JsonKey(name: 'test1') String? test1});
}

/// @nodoc
class _$InheritanceBaseDtoCopyWithImpl<$Res, $Val extends InheritanceBaseDto>
    implements $InheritanceBaseDtoCopyWith<$Res> {
  _$InheritanceBaseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InheritanceBaseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test1 = freezed,
  }) {
    return _then(_value.copyWith(
      test1: freezed == test1
          ? _value.test1
          : test1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InheritanceBaseDtoImplCopyWith<$Res>
    implements $InheritanceBaseDtoCopyWith<$Res> {
  factory _$$InheritanceBaseDtoImplCopyWith(_$InheritanceBaseDtoImpl value,
          $Res Function(_$InheritanceBaseDtoImpl) then) =
      __$$InheritanceBaseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'test1') String? test1});
}

/// @nodoc
class __$$InheritanceBaseDtoImplCopyWithImpl<$Res>
    extends _$InheritanceBaseDtoCopyWithImpl<$Res, _$InheritanceBaseDtoImpl>
    implements _$$InheritanceBaseDtoImplCopyWith<$Res> {
  __$$InheritanceBaseDtoImplCopyWithImpl(_$InheritanceBaseDtoImpl _value,
      $Res Function(_$InheritanceBaseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InheritanceBaseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test1 = freezed,
  }) {
    return _then(_$InheritanceBaseDtoImpl(
      test1: freezed == test1
          ? _value.test1
          : test1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InheritanceBaseDtoImpl implements _InheritanceBaseDto {
  _$InheritanceBaseDtoImpl({@JsonKey(name: 'test1') this.test1});

  factory _$InheritanceBaseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InheritanceBaseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'test1')
  final String? test1;

  @override
  String toString() {
    return 'InheritanceBaseDto(test1: $test1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InheritanceBaseDtoImpl &&
            (identical(other.test1, test1) || other.test1 == test1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, test1);

  /// Create a copy of InheritanceBaseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InheritanceBaseDtoImplCopyWith<_$InheritanceBaseDtoImpl> get copyWith =>
      __$$InheritanceBaseDtoImplCopyWithImpl<_$InheritanceBaseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InheritanceBaseDtoImplToJson(
      this,
    );
  }
}

abstract class _InheritanceBaseDto implements InheritanceBaseDto {
  factory _InheritanceBaseDto({@JsonKey(name: 'test1') final String? test1}) =
      _$InheritanceBaseDtoImpl;

  factory _InheritanceBaseDto.fromJson(Map<String, dynamic> json) =
      _$InheritanceBaseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'test1')
  String? get test1;

  /// Create a copy of InheritanceBaseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InheritanceBaseDtoImplCopyWith<_$InheritanceBaseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InheritanceChildDto _$InheritanceChildDtoFromJson(Map<String, dynamic> json) {
  return _InheritanceChildDto.fromJson(json);
}

/// @nodoc
mixin _$InheritanceChildDto {
  /// Serializes this InheritanceChildDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InheritanceChildDtoCopyWith<$Res> {
  factory $InheritanceChildDtoCopyWith(
          InheritanceChildDto value, $Res Function(InheritanceChildDto) then) =
      _$InheritanceChildDtoCopyWithImpl<$Res, InheritanceChildDto>;
}

/// @nodoc
class _$InheritanceChildDtoCopyWithImpl<$Res, $Val extends InheritanceChildDto>
    implements $InheritanceChildDtoCopyWith<$Res> {
  _$InheritanceChildDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InheritanceChildDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InheritanceChildDtoImplCopyWith<$Res> {
  factory _$$InheritanceChildDtoImplCopyWith(_$InheritanceChildDtoImpl value,
          $Res Function(_$InheritanceChildDtoImpl) then) =
      __$$InheritanceChildDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InheritanceChildDtoImplCopyWithImpl<$Res>
    extends _$InheritanceChildDtoCopyWithImpl<$Res, _$InheritanceChildDtoImpl>
    implements _$$InheritanceChildDtoImplCopyWith<$Res> {
  __$$InheritanceChildDtoImplCopyWithImpl(_$InheritanceChildDtoImpl _value,
      $Res Function(_$InheritanceChildDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InheritanceChildDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InheritanceChildDtoImpl implements _InheritanceChildDto {
  _$InheritanceChildDtoImpl();

  factory _$InheritanceChildDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InheritanceChildDtoImplFromJson(json);

  @override
  String toString() {
    return 'InheritanceChildDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InheritanceChildDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$InheritanceChildDtoImplToJson(
      this,
    );
  }
}

abstract class _InheritanceChildDto implements InheritanceChildDto {
  factory _InheritanceChildDto() = _$InheritanceChildDtoImpl;

  factory _InheritanceChildDto.fromJson(Map<String, dynamic> json) =
      _$InheritanceChildDtoImpl.fromJson;
}

RecursiveObjectDto _$RecursiveObjectDtoFromJson(Map<String, dynamic> json) {
  return _RecursiveObjectDto.fromJson(json);
}

/// @nodoc
mixin _$RecursiveObjectDto {
  @JsonKey(name: 'parent')
  RecursiveObjectDto? get parent => throw _privateConstructorUsedError;

  /// Serializes this RecursiveObjectDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecursiveObjectDtoCopyWith<RecursiveObjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursiveObjectDtoCopyWith<$Res> {
  factory $RecursiveObjectDtoCopyWith(
          RecursiveObjectDto value, $Res Function(RecursiveObjectDto) then) =
      _$RecursiveObjectDtoCopyWithImpl<$Res, RecursiveObjectDto>;
  @useResult
  $Res call({@JsonKey(name: 'parent') RecursiveObjectDto? parent});

  $RecursiveObjectDtoCopyWith<$Res>? get parent;
}

/// @nodoc
class _$RecursiveObjectDtoCopyWithImpl<$Res, $Val extends RecursiveObjectDto>
    implements $RecursiveObjectDtoCopyWith<$Res> {
  _$RecursiveObjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as RecursiveObjectDto?,
    ) as $Val);
  }

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecursiveObjectDtoCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $RecursiveObjectDtoCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecursiveObjectDtoImplCopyWith<$Res>
    implements $RecursiveObjectDtoCopyWith<$Res> {
  factory _$$RecursiveObjectDtoImplCopyWith(_$RecursiveObjectDtoImpl value,
          $Res Function(_$RecursiveObjectDtoImpl) then) =
      __$$RecursiveObjectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'parent') RecursiveObjectDto? parent});

  @override
  $RecursiveObjectDtoCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$RecursiveObjectDtoImplCopyWithImpl<$Res>
    extends _$RecursiveObjectDtoCopyWithImpl<$Res, _$RecursiveObjectDtoImpl>
    implements _$$RecursiveObjectDtoImplCopyWith<$Res> {
  __$$RecursiveObjectDtoImplCopyWithImpl(_$RecursiveObjectDtoImpl _value,
      $Res Function(_$RecursiveObjectDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
  }) {
    return _then(_$RecursiveObjectDtoImpl(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as RecursiveObjectDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecursiveObjectDtoImpl implements _RecursiveObjectDto {
  _$RecursiveObjectDtoImpl({@JsonKey(name: 'parent') this.parent});

  factory _$RecursiveObjectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecursiveObjectDtoImplFromJson(json);

  @override
  @JsonKey(name: 'parent')
  final RecursiveObjectDto? parent;

  @override
  String toString() {
    return 'RecursiveObjectDto(parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecursiveObjectDtoImpl &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parent);

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecursiveObjectDtoImplCopyWith<_$RecursiveObjectDtoImpl> get copyWith =>
      __$$RecursiveObjectDtoImplCopyWithImpl<_$RecursiveObjectDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecursiveObjectDtoImplToJson(
      this,
    );
  }
}

abstract class _RecursiveObjectDto implements RecursiveObjectDto {
  factory _RecursiveObjectDto(
          {@JsonKey(name: 'parent') final RecursiveObjectDto? parent}) =
      _$RecursiveObjectDtoImpl;

  factory _RecursiveObjectDto.fromJson(Map<String, dynamic> json) =
      _$RecursiveObjectDtoImpl.fromJson;

  @override
  @JsonKey(name: 'parent')
  RecursiveObjectDto? get parent;

  /// Create a copy of RecursiveObjectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecursiveObjectDtoImplCopyWith<_$RecursiveObjectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypedAdditionalPropertiesDto _$TypedAdditionalPropertiesDtoFromJson(
    Map<String, dynamic> json) {
  return _TypedAdditionalPropertiesDto.fromJson(json);
}

/// @nodoc
mixin _$TypedAdditionalPropertiesDto {
  /// Serializes this TypedAdditionalPropertiesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypedAdditionalPropertiesDtoCopyWith<$Res> {
  factory $TypedAdditionalPropertiesDtoCopyWith(
          TypedAdditionalPropertiesDto value,
          $Res Function(TypedAdditionalPropertiesDto) then) =
      _$TypedAdditionalPropertiesDtoCopyWithImpl<$Res,
          TypedAdditionalPropertiesDto>;
}

/// @nodoc
class _$TypedAdditionalPropertiesDtoCopyWithImpl<$Res,
        $Val extends TypedAdditionalPropertiesDto>
    implements $TypedAdditionalPropertiesDtoCopyWith<$Res> {
  _$TypedAdditionalPropertiesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypedAdditionalPropertiesDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TypedAdditionalPropertiesDtoImplCopyWith<$Res> {
  factory _$$TypedAdditionalPropertiesDtoImplCopyWith(
          _$TypedAdditionalPropertiesDtoImpl value,
          $Res Function(_$TypedAdditionalPropertiesDtoImpl) then) =
      __$$TypedAdditionalPropertiesDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TypedAdditionalPropertiesDtoImplCopyWithImpl<$Res>
    extends _$TypedAdditionalPropertiesDtoCopyWithImpl<$Res,
        _$TypedAdditionalPropertiesDtoImpl>
    implements _$$TypedAdditionalPropertiesDtoImplCopyWith<$Res> {
  __$$TypedAdditionalPropertiesDtoImplCopyWithImpl(
      _$TypedAdditionalPropertiesDtoImpl _value,
      $Res Function(_$TypedAdditionalPropertiesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypedAdditionalPropertiesDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TypedAdditionalPropertiesDtoImpl
    implements _TypedAdditionalPropertiesDto {
  _$TypedAdditionalPropertiesDtoImpl();

  factory _$TypedAdditionalPropertiesDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TypedAdditionalPropertiesDtoImplFromJson(json);

  @override
  String toString() {
    return 'TypedAdditionalPropertiesDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypedAdditionalPropertiesDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$TypedAdditionalPropertiesDtoImplToJson(
      this,
    );
  }
}

abstract class _TypedAdditionalPropertiesDto
    implements TypedAdditionalPropertiesDto {
  factory _TypedAdditionalPropertiesDto() = _$TypedAdditionalPropertiesDtoImpl;

  factory _TypedAdditionalPropertiesDto.fromJson(Map<String, dynamic> json) =
      _$TypedAdditionalPropertiesDtoImpl.fromJson;
}

UuidExampleMessageIdGetResponseDto _$UuidExampleMessageIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UuidExampleMessageIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UuidExampleMessageIdGetResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id});
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
              as ApiUuid,
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
  $Res call({@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id});
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
              as ApiUuid,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UuidExampleMessageIdGetResponseDtoImpl
    implements _UuidExampleMessageIdGetResponseDto {
  _$UuidExampleMessageIdGetResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id});

  factory _$UuidExampleMessageIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UuidExampleMessageIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;

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
      {@JsonKey(name: 'id')
      @ApiUuidJsonConverter()
      required final ApiUuid id}) = _$UuidExampleMessageIdGetResponseDtoImpl;

  factory _UuidExampleMessageIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$UuidExampleMessageIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;

  /// Create a copy of UuidExampleMessageIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UuidExampleMessageIdGetResponseDtoImplCopyWith<
          _$UuidExampleMessageIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
