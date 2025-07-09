// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_store.openapi.dtos.dart';

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

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'petId')
  int? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete')
  bool get complete => throw _privateConstructorUsedError;

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_$OrderDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl implements _OrderDto {
  _$OrderDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'petId') this.petId,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'shipDate') this.shipDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'complete') this.complete = false});

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'petId')
  final int? petId;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'shipDate')
  final DateTime? shipDate;
  @override
  @JsonKey(name: 'status')
  final OrderDtoStatusDto? status;
  @override
  @JsonKey(name: 'complete')
  final bool complete;

  @override
  String toString() {
    return 'OrderDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.shipDate, shipDate) ||
                other.shipDate == shipDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, petId, quantity, shipDate, status, complete);

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto implements OrderDto {
  factory _OrderDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'petId') final int? petId,
      @JsonKey(name: 'quantity') final int? quantity,
      @JsonKey(name: 'shipDate') final DateTime? shipDate,
      @JsonKey(name: 'status') final OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') final bool complete}) = _$OrderDtoImpl;

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'petId')
  int? get petId;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate;
  @override
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status;
  @override
  @JsonKey(name: 'complete')
  bool get complete;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDtoImplCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$CategoryDtoImplCopyWith(
          _$CategoryDtoImpl value, $Res Function(_$CategoryDtoImpl) then) =
      __$$CategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CategoryDtoImplCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$CategoryDtoImpl>
    implements _$$CategoryDtoImplCopyWith<$Res> {
  __$$CategoryDtoImplCopyWithImpl(
      _$CategoryDtoImpl _value, $Res Function(_$CategoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CategoryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDtoImpl implements _CategoryDto {
  _$CategoryDtoImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$CategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      __$$CategoryDtoImplCopyWithImpl<_$CategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryDto implements CategoryDto {
  factory _CategoryDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$CategoryDtoImpl;

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'userStatus')
  int? get userStatus => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$UserDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl implements _UserDto {
  _$UserDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'userStatus') this.userStatus});

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'userStatus')
  final int? userStatus;

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, firstName,
      lastName, email, password, phone, userStatus);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  factory _UserDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'lastName') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'userStatus') final int? userStatus}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'userStatus')
  int? get userStatus;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
mixin _$TagDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TagDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagDtoCopyWith<TagDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) =
      _$TagDtoCopyWithImpl<$Res, TagDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res, $Val extends TagDto>
    implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagDtoImplCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$$TagDtoImplCopyWith(
          _$TagDtoImpl value, $Res Function(_$TagDtoImpl) then) =
      __$$TagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$TagDtoImplCopyWithImpl<$Res>
    extends _$TagDtoCopyWithImpl<$Res, _$TagDtoImpl>
    implements _$$TagDtoImplCopyWith<$Res> {
  __$$TagDtoImplCopyWithImpl(
      _$TagDtoImpl _value, $Res Function(_$TagDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TagDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagDtoImpl implements _TagDto {
  _$TagDtoImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$TagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      __$$TagDtoImplCopyWithImpl<_$TagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagDtoImplToJson(
      this,
    );
  }
}

abstract class _TagDto implements TagDto {
  factory _TagDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$TagDtoImpl;

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$TagDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PetDto _$PetDtoFromJson(Map<String, dynamic> json) {
  return _PetDto.fromJson(json);
}

/// @nodoc
mixin _$PetDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagDto>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status => throw _privateConstructorUsedError;

  /// Serializes this PetDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetDtoCopyWith<PetDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDtoCopyWith<$Res> {
  factory $PetDtoCopyWith(PetDto value, $Res Function(PetDto) then) =
      _$PetDtoCopyWithImpl<$Res, PetDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$PetDtoCopyWithImpl<$Res, $Val extends PetDto>
    implements $PetDtoCopyWith<$Res> {
  _$PetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ) as $Val);
  }

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetDtoImplCopyWith<$Res> implements $PetDtoCopyWith<$Res> {
  factory _$$PetDtoImplCopyWith(
          _$PetDtoImpl value, $Res Function(_$PetDtoImpl) then) =
      __$$PetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  @override
  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$PetDtoImplCopyWithImpl<$Res>
    extends _$PetDtoCopyWithImpl<$Res, _$PetDtoImpl>
    implements _$$PetDtoImplCopyWith<$Res> {
  __$$PetDtoImplCopyWithImpl(
      _$PetDtoImpl _value, $Res Function(_$PetDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PetDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetDtoImpl implements _PetDto {
  _$PetDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') this.status})
      : _photoUrls = photoUrls,
        _tags = tags;

  factory _$PetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'category')
  final CategoryDto? category;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _photoUrls;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<TagDto>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final PetDtoStatusDto? status;

  @override
  String toString() {
    return 'PetDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      name,
      const DeepCollectionEquality().hash(_photoUrls),
      const DeepCollectionEquality().hash(_tags),
      status);

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetDtoImplCopyWith<_$PetDtoImpl> get copyWith =>
      __$$PetDtoImplCopyWithImpl<_$PetDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetDtoImplToJson(
      this,
    );
  }
}

abstract class _PetDto implements PetDto {
  factory _PetDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'category') final CategoryDto? category,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') final PetDtoStatusDto? status}) = _$PetDtoImpl;

  factory _PetDto.fromJson(Map<String, dynamic> json) = _$PetDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags;
  @override
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status;

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetDtoImplCopyWith<_$PetDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponseDto _$ApiResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseDto {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ApiResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseDtoCopyWith<ApiResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseDtoCopyWith<$Res> {
  factory $ApiResponseDtoCopyWith(
          ApiResponseDto value, $Res Function(ApiResponseDto) then) =
      _$ApiResponseDtoCopyWithImpl<$Res, ApiResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ApiResponseDtoCopyWithImpl<$Res, $Val extends ApiResponseDto>
    implements $ApiResponseDtoCopyWith<$Res> {
  _$ApiResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseDtoImplCopyWith<$Res>
    implements $ApiResponseDtoCopyWith<$Res> {
  factory _$$ApiResponseDtoImplCopyWith(_$ApiResponseDtoImpl value,
          $Res Function(_$ApiResponseDtoImpl) then) =
      __$$ApiResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ApiResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiResponseDtoCopyWithImpl<$Res, _$ApiResponseDtoImpl>
    implements _$$ApiResponseDtoImplCopyWith<$Res> {
  __$$ApiResponseDtoImplCopyWithImpl(
      _$ApiResponseDtoImpl _value, $Res Function(_$ApiResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ApiResponseDtoImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseDtoImpl implements _ApiResponseDto {
  _$ApiResponseDtoImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'message') this.message});

  factory _$ApiResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ApiResponseDto(code: $code, type: $type, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, type, message);

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseDtoImplCopyWith<_$ApiResponseDtoImpl> get copyWith =>
      __$$ApiResponseDtoImplCopyWithImpl<_$ApiResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiResponseDto implements ApiResponseDto {
  factory _ApiResponseDto(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'message') final String? message}) = _$ApiResponseDtoImpl;

  factory _ApiResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseDtoImplCopyWith<_$ApiResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePetRequestDto _$UpdatePetRequestDtoFromJson(Map<String, dynamic> json) {
  return _UpdatePetRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdatePetRequestDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagDto>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status => throw _privateConstructorUsedError;

  /// Serializes this UpdatePetRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePetRequestDtoCopyWith<UpdatePetRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePetRequestDtoCopyWith<$Res> {
  factory $UpdatePetRequestDtoCopyWith(
          UpdatePetRequestDto value, $Res Function(UpdatePetRequestDto) then) =
      _$UpdatePetRequestDtoCopyWithImpl<$Res, UpdatePetRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$UpdatePetRequestDtoCopyWithImpl<$Res, $Val extends UpdatePetRequestDto>
    implements $UpdatePetRequestDtoCopyWith<$Res> {
  _$UpdatePetRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ) as $Val);
  }

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePetRequestDtoImplCopyWith<$Res>
    implements $UpdatePetRequestDtoCopyWith<$Res> {
  factory _$$UpdatePetRequestDtoImplCopyWith(_$UpdatePetRequestDtoImpl value,
          $Res Function(_$UpdatePetRequestDtoImpl) then) =
      __$$UpdatePetRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  @override
  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$UpdatePetRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdatePetRequestDtoCopyWithImpl<$Res, _$UpdatePetRequestDtoImpl>
    implements _$$UpdatePetRequestDtoImplCopyWith<$Res> {
  __$$UpdatePetRequestDtoImplCopyWithImpl(_$UpdatePetRequestDtoImpl _value,
      $Res Function(_$UpdatePetRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_$UpdatePetRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePetRequestDtoImpl implements _UpdatePetRequestDto {
  _$UpdatePetRequestDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') this.status})
      : _photoUrls = photoUrls,
        _tags = tags;

  factory _$UpdatePetRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePetRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'category')
  final CategoryDto? category;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _photoUrls;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<TagDto>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final PetDtoStatusDto? status;

  @override
  String toString() {
    return 'UpdatePetRequestDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePetRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      name,
      const DeepCollectionEquality().hash(_photoUrls),
      const DeepCollectionEquality().hash(_tags),
      status);

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePetRequestDtoImplCopyWith<_$UpdatePetRequestDtoImpl> get copyWith =>
      __$$UpdatePetRequestDtoImplCopyWithImpl<_$UpdatePetRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePetRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdatePetRequestDto implements UpdatePetRequestDto {
  factory _UpdatePetRequestDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'category') final CategoryDto? category,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
          @JsonKey(name: 'tags') final List<TagDto>? tags,
          @JsonKey(name: 'status') final PetDtoStatusDto? status}) =
      _$UpdatePetRequestDtoImpl;

  factory _UpdatePetRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdatePetRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags;
  @override
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status;

  /// Create a copy of UpdatePetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePetRequestDtoImplCopyWith<_$UpdatePetRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddPetRequestDto _$AddPetRequestDtoFromJson(Map<String, dynamic> json) {
  return _AddPetRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AddPetRequestDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagDto>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status => throw _privateConstructorUsedError;

  /// Serializes this AddPetRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPetRequestDtoCopyWith<AddPetRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPetRequestDtoCopyWith<$Res> {
  factory $AddPetRequestDtoCopyWith(
          AddPetRequestDto value, $Res Function(AddPetRequestDto) then) =
      _$AddPetRequestDtoCopyWithImpl<$Res, AddPetRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$AddPetRequestDtoCopyWithImpl<$Res, $Val extends AddPetRequestDto>
    implements $AddPetRequestDtoCopyWith<$Res> {
  _$AddPetRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ) as $Val);
  }

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddPetRequestDtoImplCopyWith<$Res>
    implements $AddPetRequestDtoCopyWith<$Res> {
  factory _$$AddPetRequestDtoImplCopyWith(_$AddPetRequestDtoImpl value,
          $Res Function(_$AddPetRequestDtoImpl) then) =
      __$$AddPetRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  @override
  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$AddPetRequestDtoImplCopyWithImpl<$Res>
    extends _$AddPetRequestDtoCopyWithImpl<$Res, _$AddPetRequestDtoImpl>
    implements _$$AddPetRequestDtoImplCopyWith<$Res> {
  __$$AddPetRequestDtoImplCopyWithImpl(_$AddPetRequestDtoImpl _value,
      $Res Function(_$AddPetRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AddPetRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPetRequestDtoImpl implements _AddPetRequestDto {
  _$AddPetRequestDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') this.status})
      : _photoUrls = photoUrls,
        _tags = tags;

  factory _$AddPetRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPetRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'category')
  final CategoryDto? category;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _photoUrls;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<TagDto>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final PetDtoStatusDto? status;

  @override
  String toString() {
    return 'AddPetRequestDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPetRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      name,
      const DeepCollectionEquality().hash(_photoUrls),
      const DeepCollectionEquality().hash(_tags),
      status);

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPetRequestDtoImplCopyWith<_$AddPetRequestDtoImpl> get copyWith =>
      __$$AddPetRequestDtoImplCopyWithImpl<_$AddPetRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPetRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _AddPetRequestDto implements AddPetRequestDto {
  factory _AddPetRequestDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'category') final CategoryDto? category,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
          @JsonKey(name: 'tags') final List<TagDto>? tags,
          @JsonKey(name: 'status') final PetDtoStatusDto? status}) =
      _$AddPetRequestDtoImpl;

  factory _AddPetRequestDto.fromJson(Map<String, dynamic> json) =
      _$AddPetRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags;
  @override
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status;

  /// Create a copy of AddPetRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPetRequestDtoImplCopyWith<_$AddPetRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPetByIdResponseDto _$GetPetByIdResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetPetByIdResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetPetByIdResponseDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<TagDto>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status => throw _privateConstructorUsedError;

  /// Serializes this GetPetByIdResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPetByIdResponseDtoCopyWith<GetPetByIdResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPetByIdResponseDtoCopyWith<$Res> {
  factory $GetPetByIdResponseDtoCopyWith(GetPetByIdResponseDto value,
          $Res Function(GetPetByIdResponseDto) then) =
      _$GetPetByIdResponseDtoCopyWithImpl<$Res, GetPetByIdResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$GetPetByIdResponseDtoCopyWithImpl<$Res,
        $Val extends GetPetByIdResponseDto>
    implements $GetPetByIdResponseDtoCopyWith<$Res> {
  _$GetPetByIdResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ) as $Val);
  }

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetPetByIdResponseDtoImplCopyWith<$Res>
    implements $GetPetByIdResponseDtoCopyWith<$Res> {
  factory _$$GetPetByIdResponseDtoImplCopyWith(
          _$GetPetByIdResponseDtoImpl value,
          $Res Function(_$GetPetByIdResponseDtoImpl) then) =
      __$$GetPetByIdResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'category') CategoryDto? category,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'photoUrls') List<String> photoUrls,
      @JsonKey(name: 'tags') List<TagDto>? tags,
      @JsonKey(name: 'status') PetDtoStatusDto? status});

  @override
  $CategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$GetPetByIdResponseDtoImplCopyWithImpl<$Res>
    extends _$GetPetByIdResponseDtoCopyWithImpl<$Res,
        _$GetPetByIdResponseDtoImpl>
    implements _$$GetPetByIdResponseDtoImplCopyWith<$Res> {
  __$$GetPetByIdResponseDtoImplCopyWithImpl(_$GetPetByIdResponseDtoImpl _value,
      $Res Function(_$GetPetByIdResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetPetByIdResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPetByIdResponseDtoImpl implements _GetPetByIdResponseDto {
  _$GetPetByIdResponseDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') this.status})
      : _photoUrls = photoUrls,
        _tags = tags;

  factory _$GetPetByIdResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPetByIdResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'category')
  final CategoryDto? category;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<String> _photoUrls;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  final List<TagDto>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final PetDtoStatusDto? status;

  @override
  String toString() {
    return 'GetPetByIdResponseDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPetByIdResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      name,
      const DeepCollectionEquality().hash(_photoUrls),
      const DeepCollectionEquality().hash(_tags),
      status);

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPetByIdResponseDtoImplCopyWith<_$GetPetByIdResponseDtoImpl>
      get copyWith => __$$GetPetByIdResponseDtoImplCopyWithImpl<
          _$GetPetByIdResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPetByIdResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetPetByIdResponseDto implements GetPetByIdResponseDto {
  factory _GetPetByIdResponseDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'category') final CategoryDto? category,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
          @JsonKey(name: 'tags') final List<TagDto>? tags,
          @JsonKey(name: 'status') final PetDtoStatusDto? status}) =
      _$GetPetByIdResponseDtoImpl;

  factory _GetPetByIdResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetPetByIdResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls;
  @override
  @JsonKey(name: 'tags')
  List<TagDto>? get tags;
  @override
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status;

  /// Create a copy of GetPetByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPetByIdResponseDtoImplCopyWith<_$GetPetByIdResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePetWithFormRequestDto _$UpdatePetWithFormRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdatePetWithFormRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdatePetWithFormRequestDto {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this UpdatePetWithFormRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePetWithFormRequestDtoCopyWith<UpdatePetWithFormRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  factory $UpdatePetWithFormRequestDtoCopyWith(
          UpdatePetWithFormRequestDto value,
          $Res Function(UpdatePetWithFormRequestDto) then) =
      _$UpdatePetWithFormRequestDtoCopyWithImpl<$Res,
          UpdatePetWithFormRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$UpdatePetWithFormRequestDtoCopyWithImpl<$Res,
        $Val extends UpdatePetWithFormRequestDto>
    implements $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  _$UpdatePetWithFormRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePetWithFormRequestDtoImplCopyWith<$Res>
    implements $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  factory _$$UpdatePetWithFormRequestDtoImplCopyWith(
          _$UpdatePetWithFormRequestDtoImpl value,
          $Res Function(_$UpdatePetWithFormRequestDtoImpl) then) =
      __$$UpdatePetWithFormRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$UpdatePetWithFormRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdatePetWithFormRequestDtoCopyWithImpl<$Res,
        _$UpdatePetWithFormRequestDtoImpl>
    implements _$$UpdatePetWithFormRequestDtoImplCopyWith<$Res> {
  __$$UpdatePetWithFormRequestDtoImplCopyWithImpl(
      _$UpdatePetWithFormRequestDtoImpl _value,
      $Res Function(_$UpdatePetWithFormRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_$UpdatePetWithFormRequestDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePetWithFormRequestDtoImpl
    implements _UpdatePetWithFormRequestDto {
  _$UpdatePetWithFormRequestDtoImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'status') this.status});

  factory _$UpdatePetWithFormRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePetWithFormRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'UpdatePetWithFormRequestDto(name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePetWithFormRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, status);

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePetWithFormRequestDtoImplCopyWith<_$UpdatePetWithFormRequestDtoImpl>
      get copyWith => __$$UpdatePetWithFormRequestDtoImplCopyWithImpl<
          _$UpdatePetWithFormRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePetWithFormRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdatePetWithFormRequestDto
    implements UpdatePetWithFormRequestDto {
  factory _UpdatePetWithFormRequestDto(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'status') final String? status}) =
      _$UpdatePetWithFormRequestDtoImpl;

  factory _UpdatePetWithFormRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdatePetWithFormRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'status')
  String? get status;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePetWithFormRequestDtoImplCopyWith<_$UpdatePetWithFormRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadFileResponseDto _$UploadFileResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UploadFileResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponseDto {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UploadFileResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadFileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileResponseDtoCopyWith<UploadFileResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseDtoCopyWith<$Res> {
  factory $UploadFileResponseDtoCopyWith(UploadFileResponseDto value,
          $Res Function(UploadFileResponseDto) then) =
      _$UploadFileResponseDtoCopyWithImpl<$Res, UploadFileResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$UploadFileResponseDtoCopyWithImpl<$Res,
        $Val extends UploadFileResponseDto>
    implements $UploadFileResponseDtoCopyWith<$Res> {
  _$UploadFileResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResponseDtoImplCopyWith<$Res>
    implements $UploadFileResponseDtoCopyWith<$Res> {
  factory _$$UploadFileResponseDtoImplCopyWith(
          _$UploadFileResponseDtoImpl value,
          $Res Function(_$UploadFileResponseDtoImpl) then) =
      __$$UploadFileResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$UploadFileResponseDtoImplCopyWithImpl<$Res>
    extends _$UploadFileResponseDtoCopyWithImpl<$Res,
        _$UploadFileResponseDtoImpl>
    implements _$$UploadFileResponseDtoImplCopyWith<$Res> {
  __$$UploadFileResponseDtoImplCopyWithImpl(_$UploadFileResponseDtoImpl _value,
      $Res Function(_$UploadFileResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadFileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UploadFileResponseDtoImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileResponseDtoImpl implements _UploadFileResponseDto {
  _$UploadFileResponseDtoImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'message') this.message});

  factory _$UploadFileResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'UploadFileResponseDto(code: $code, type: $type, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResponseDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, type, message);

  /// Create a copy of UploadFileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileResponseDtoImplCopyWith<_$UploadFileResponseDtoImpl>
      get copyWith => __$$UploadFileResponseDtoImplCopyWithImpl<
          _$UploadFileResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadFileResponseDto implements UploadFileResponseDto {
  factory _UploadFileResponseDto(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'message') final String? message}) =
      _$UploadFileResponseDtoImpl;

  factory _UploadFileResponseDto.fromJson(Map<String, dynamic> json) =
      _$UploadFileResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of UploadFileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileResponseDtoImplCopyWith<_$UploadFileResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlaceOrderResponseDto _$PlaceOrderResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderResponseDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'petId')
  int? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete')
  bool get complete => throw _privateConstructorUsedError;

  /// Serializes this PlaceOrderResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceOrderResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceOrderResponseDtoCopyWith<PlaceOrderResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderResponseDtoCopyWith<$Res> {
  factory $PlaceOrderResponseDtoCopyWith(PlaceOrderResponseDto value,
          $Res Function(PlaceOrderResponseDto) then) =
      _$PlaceOrderResponseDtoCopyWithImpl<$Res, PlaceOrderResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class _$PlaceOrderResponseDtoCopyWithImpl<$Res,
        $Val extends PlaceOrderResponseDto>
    implements $PlaceOrderResponseDtoCopyWith<$Res> {
  _$PlaceOrderResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceOrderResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderResponseDtoImplCopyWith<$Res>
    implements $PlaceOrderResponseDtoCopyWith<$Res> {
  factory _$$PlaceOrderResponseDtoImplCopyWith(
          _$PlaceOrderResponseDtoImpl value,
          $Res Function(_$PlaceOrderResponseDtoImpl) then) =
      __$$PlaceOrderResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class __$$PlaceOrderResponseDtoImplCopyWithImpl<$Res>
    extends _$PlaceOrderResponseDtoCopyWithImpl<$Res,
        _$PlaceOrderResponseDtoImpl>
    implements _$$PlaceOrderResponseDtoImplCopyWith<$Res> {
  __$$PlaceOrderResponseDtoImplCopyWithImpl(_$PlaceOrderResponseDtoImpl _value,
      $Res Function(_$PlaceOrderResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_$PlaceOrderResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceOrderResponseDtoImpl implements _PlaceOrderResponseDto {
  _$PlaceOrderResponseDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'petId') this.petId,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'shipDate') this.shipDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'complete') this.complete = false});

  factory _$PlaceOrderResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'petId')
  final int? petId;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'shipDate')
  final DateTime? shipDate;
  @override
  @JsonKey(name: 'status')
  final OrderDtoStatusDto? status;
  @override
  @JsonKey(name: 'complete')
  final bool complete;

  @override
  String toString() {
    return 'PlaceOrderResponseDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.shipDate, shipDate) ||
                other.shipDate == shipDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, petId, quantity, shipDate, status, complete);

  /// Create a copy of PlaceOrderResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderResponseDtoImplCopyWith<_$PlaceOrderResponseDtoImpl>
      get copyWith => __$$PlaceOrderResponseDtoImplCopyWithImpl<
          _$PlaceOrderResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderResponseDto implements PlaceOrderResponseDto {
  factory _PlaceOrderResponseDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'petId') final int? petId,
          @JsonKey(name: 'quantity') final int? quantity,
          @JsonKey(name: 'shipDate') final DateTime? shipDate,
          @JsonKey(name: 'status') final OrderDtoStatusDto? status,
          @JsonKey(name: 'complete') final bool complete}) =
      _$PlaceOrderResponseDtoImpl;

  factory _PlaceOrderResponseDto.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'petId')
  int? get petId;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate;
  @override
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status;
  @override
  @JsonKey(name: 'complete')
  bool get complete;

  /// Create a copy of PlaceOrderResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderResponseDtoImplCopyWith<_$PlaceOrderResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlaceOrderRequestDto _$PlaceOrderRequestDtoFromJson(Map<String, dynamic> json) {
  return _PlaceOrderRequestDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderRequestDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'petId')
  int? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete')
  bool get complete => throw _privateConstructorUsedError;

  /// Serializes this PlaceOrderRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceOrderRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceOrderRequestDtoCopyWith<PlaceOrderRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderRequestDtoCopyWith<$Res> {
  factory $PlaceOrderRequestDtoCopyWith(PlaceOrderRequestDto value,
          $Res Function(PlaceOrderRequestDto) then) =
      _$PlaceOrderRequestDtoCopyWithImpl<$Res, PlaceOrderRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class _$PlaceOrderRequestDtoCopyWithImpl<$Res,
        $Val extends PlaceOrderRequestDto>
    implements $PlaceOrderRequestDtoCopyWith<$Res> {
  _$PlaceOrderRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceOrderRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderRequestDtoImplCopyWith<$Res>
    implements $PlaceOrderRequestDtoCopyWith<$Res> {
  factory _$$PlaceOrderRequestDtoImplCopyWith(_$PlaceOrderRequestDtoImpl value,
          $Res Function(_$PlaceOrderRequestDtoImpl) then) =
      __$$PlaceOrderRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class __$$PlaceOrderRequestDtoImplCopyWithImpl<$Res>
    extends _$PlaceOrderRequestDtoCopyWithImpl<$Res, _$PlaceOrderRequestDtoImpl>
    implements _$$PlaceOrderRequestDtoImplCopyWith<$Res> {
  __$$PlaceOrderRequestDtoImplCopyWithImpl(_$PlaceOrderRequestDtoImpl _value,
      $Res Function(_$PlaceOrderRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_$PlaceOrderRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceOrderRequestDtoImpl implements _PlaceOrderRequestDto {
  _$PlaceOrderRequestDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'petId') this.petId,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'shipDate') this.shipDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'complete') this.complete = false});

  factory _$PlaceOrderRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'petId')
  final int? petId;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'shipDate')
  final DateTime? shipDate;
  @override
  @JsonKey(name: 'status')
  final OrderDtoStatusDto? status;
  @override
  @JsonKey(name: 'complete')
  final bool complete;

  @override
  String toString() {
    return 'PlaceOrderRequestDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.shipDate, shipDate) ||
                other.shipDate == shipDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, petId, quantity, shipDate, status, complete);

  /// Create a copy of PlaceOrderRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderRequestDtoImplCopyWith<_$PlaceOrderRequestDtoImpl>
      get copyWith =>
          __$$PlaceOrderRequestDtoImplCopyWithImpl<_$PlaceOrderRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderRequestDto implements PlaceOrderRequestDto {
  factory _PlaceOrderRequestDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'petId') final int? petId,
          @JsonKey(name: 'quantity') final int? quantity,
          @JsonKey(name: 'shipDate') final DateTime? shipDate,
          @JsonKey(name: 'status') final OrderDtoStatusDto? status,
          @JsonKey(name: 'complete') final bool complete}) =
      _$PlaceOrderRequestDtoImpl;

  factory _PlaceOrderRequestDto.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'petId')
  int? get petId;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate;
  @override
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status;
  @override
  @JsonKey(name: 'complete')
  bool get complete;

  /// Create a copy of PlaceOrderRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderRequestDtoImplCopyWith<_$PlaceOrderRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetOrderByIdResponseDto _$GetOrderByIdResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetOrderByIdResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByIdResponseDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'petId')
  int? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete')
  bool get complete => throw _privateConstructorUsedError;

  /// Serializes this GetOrderByIdResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetOrderByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetOrderByIdResponseDtoCopyWith<GetOrderByIdResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByIdResponseDtoCopyWith<$Res> {
  factory $GetOrderByIdResponseDtoCopyWith(GetOrderByIdResponseDto value,
          $Res Function(GetOrderByIdResponseDto) then) =
      _$GetOrderByIdResponseDtoCopyWithImpl<$Res, GetOrderByIdResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class _$GetOrderByIdResponseDtoCopyWithImpl<$Res,
        $Val extends GetOrderByIdResponseDto>
    implements $GetOrderByIdResponseDtoCopyWith<$Res> {
  _$GetOrderByIdResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetOrderByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderByIdResponseDtoImplCopyWith<$Res>
    implements $GetOrderByIdResponseDtoCopyWith<$Res> {
  factory _$$GetOrderByIdResponseDtoImplCopyWith(
          _$GetOrderByIdResponseDtoImpl value,
          $Res Function(_$GetOrderByIdResponseDtoImpl) then) =
      __$$GetOrderByIdResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'petId') int? petId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'shipDate') DateTime? shipDate,
      @JsonKey(name: 'status') OrderDtoStatusDto? status,
      @JsonKey(name: 'complete') bool complete});
}

/// @nodoc
class __$$GetOrderByIdResponseDtoImplCopyWithImpl<$Res>
    extends _$GetOrderByIdResponseDtoCopyWithImpl<$Res,
        _$GetOrderByIdResponseDtoImpl>
    implements _$$GetOrderByIdResponseDtoImplCopyWith<$Res> {
  __$$GetOrderByIdResponseDtoImplCopyWithImpl(
      _$GetOrderByIdResponseDtoImpl _value,
      $Res Function(_$GetOrderByIdResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOrderByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_$GetOrderByIdResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _value.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByIdResponseDtoImpl implements _GetOrderByIdResponseDto {
  _$GetOrderByIdResponseDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'petId') this.petId,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'shipDate') this.shipDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'complete') this.complete = false});

  factory _$GetOrderByIdResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByIdResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'petId')
  final int? petId;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'shipDate')
  final DateTime? shipDate;
  @override
  @JsonKey(name: 'status')
  final OrderDtoStatusDto? status;
  @override
  @JsonKey(name: 'complete')
  final bool complete;

  @override
  String toString() {
    return 'GetOrderByIdResponseDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByIdResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.shipDate, shipDate) ||
                other.shipDate == shipDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, petId, quantity, shipDate, status, complete);

  /// Create a copy of GetOrderByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByIdResponseDtoImplCopyWith<_$GetOrderByIdResponseDtoImpl>
      get copyWith => __$$GetOrderByIdResponseDtoImplCopyWithImpl<
          _$GetOrderByIdResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByIdResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByIdResponseDto implements GetOrderByIdResponseDto {
  factory _GetOrderByIdResponseDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'petId') final int? petId,
          @JsonKey(name: 'quantity') final int? quantity,
          @JsonKey(name: 'shipDate') final DateTime? shipDate,
          @JsonKey(name: 'status') final OrderDtoStatusDto? status,
          @JsonKey(name: 'complete') final bool complete}) =
      _$GetOrderByIdResponseDtoImpl;

  factory _GetOrderByIdResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetOrderByIdResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'petId')
  int? get petId;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate;
  @override
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status;
  @override
  @JsonKey(name: 'complete')
  bool get complete;

  /// Create a copy of GetOrderByIdResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrderByIdResponseDtoImplCopyWith<_$GetOrderByIdResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateUserRequestDto _$CreateUserRequestDtoFromJson(Map<String, dynamic> json) {
  return _CreateUserRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequestDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'userStatus')
  int? get userStatus => throw _privateConstructorUsedError;

  /// Serializes this CreateUserRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserRequestDtoCopyWith<CreateUserRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestDtoCopyWith<$Res> {
  factory $CreateUserRequestDtoCopyWith(CreateUserRequestDto value,
          $Res Function(CreateUserRequestDto) then) =
      _$CreateUserRequestDtoCopyWithImpl<$Res, CreateUserRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class _$CreateUserRequestDtoCopyWithImpl<$Res,
        $Val extends CreateUserRequestDto>
    implements $CreateUserRequestDtoCopyWith<$Res> {
  _$CreateUserRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserRequestDtoImplCopyWith<$Res>
    implements $CreateUserRequestDtoCopyWith<$Res> {
  factory _$$CreateUserRequestDtoImplCopyWith(_$CreateUserRequestDtoImpl value,
          $Res Function(_$CreateUserRequestDtoImpl) then) =
      __$$CreateUserRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class __$$CreateUserRequestDtoImplCopyWithImpl<$Res>
    extends _$CreateUserRequestDtoCopyWithImpl<$Res, _$CreateUserRequestDtoImpl>
    implements _$$CreateUserRequestDtoImplCopyWith<$Res> {
  __$$CreateUserRequestDtoImplCopyWithImpl(_$CreateUserRequestDtoImpl _value,
      $Res Function(_$CreateUserRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$CreateUserRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserRequestDtoImpl implements _CreateUserRequestDto {
  _$CreateUserRequestDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'userStatus') this.userStatus});

  factory _$CreateUserRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'userStatus')
  final int? userStatus;

  @override
  String toString() {
    return 'CreateUserRequestDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, firstName,
      lastName, email, password, phone, userStatus);

  /// Create a copy of CreateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestDtoImplCopyWith<_$CreateUserRequestDtoImpl>
      get copyWith =>
          __$$CreateUserRequestDtoImplCopyWithImpl<_$CreateUserRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateUserRequestDto implements CreateUserRequestDto {
  factory _CreateUserRequestDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'firstName') final String? firstName,
          @JsonKey(name: 'lastName') final String? lastName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'userStatus') final int? userStatus}) =
      _$CreateUserRequestDtoImpl;

  factory _CreateUserRequestDto.fromJson(Map<String, dynamic> json) =
      _$CreateUserRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'userStatus')
  int? get userStatus;

  /// Create a copy of CreateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserRequestDtoImplCopyWith<_$CreateUserRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetUserByNameResponseDto _$GetUserByNameResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetUserByNameResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetUserByNameResponseDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'userStatus')
  int? get userStatus => throw _privateConstructorUsedError;

  /// Serializes this GetUserByNameResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserByNameResponseDtoCopyWith<GetUserByNameResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserByNameResponseDtoCopyWith<$Res> {
  factory $GetUserByNameResponseDtoCopyWith(GetUserByNameResponseDto value,
          $Res Function(GetUserByNameResponseDto) then) =
      _$GetUserByNameResponseDtoCopyWithImpl<$Res, GetUserByNameResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class _$GetUserByNameResponseDtoCopyWithImpl<$Res,
        $Val extends GetUserByNameResponseDto>
    implements $GetUserByNameResponseDtoCopyWith<$Res> {
  _$GetUserByNameResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserByNameResponseDtoImplCopyWith<$Res>
    implements $GetUserByNameResponseDtoCopyWith<$Res> {
  factory _$$GetUserByNameResponseDtoImplCopyWith(
          _$GetUserByNameResponseDtoImpl value,
          $Res Function(_$GetUserByNameResponseDtoImpl) then) =
      __$$GetUserByNameResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class __$$GetUserByNameResponseDtoImplCopyWithImpl<$Res>
    extends _$GetUserByNameResponseDtoCopyWithImpl<$Res,
        _$GetUserByNameResponseDtoImpl>
    implements _$$GetUserByNameResponseDtoImplCopyWith<$Res> {
  __$$GetUserByNameResponseDtoImplCopyWithImpl(
      _$GetUserByNameResponseDtoImpl _value,
      $Res Function(_$GetUserByNameResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$GetUserByNameResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserByNameResponseDtoImpl implements _GetUserByNameResponseDto {
  _$GetUserByNameResponseDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'userStatus') this.userStatus});

  factory _$GetUserByNameResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserByNameResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'userStatus')
  final int? userStatus;

  @override
  String toString() {
    return 'GetUserByNameResponseDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserByNameResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, firstName,
      lastName, email, password, phone, userStatus);

  /// Create a copy of GetUserByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserByNameResponseDtoImplCopyWith<_$GetUserByNameResponseDtoImpl>
      get copyWith => __$$GetUserByNameResponseDtoImplCopyWithImpl<
          _$GetUserByNameResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserByNameResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetUserByNameResponseDto implements GetUserByNameResponseDto {
  factory _GetUserByNameResponseDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'firstName') final String? firstName,
          @JsonKey(name: 'lastName') final String? lastName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'userStatus') final int? userStatus}) =
      _$GetUserByNameResponseDtoImpl;

  factory _GetUserByNameResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetUserByNameResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'userStatus')
  int? get userStatus;

  /// Create a copy of GetUserByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserByNameResponseDtoImplCopyWith<_$GetUserByNameResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateUserRequestDto _$UpdateUserRequestDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequestDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'userStatus')
  int? get userStatus => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserRequestDtoCopyWith<UpdateUserRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestDtoCopyWith<$Res> {
  factory $UpdateUserRequestDtoCopyWith(UpdateUserRequestDto value,
          $Res Function(UpdateUserRequestDto) then) =
      _$UpdateUserRequestDtoCopyWithImpl<$Res, UpdateUserRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class _$UpdateUserRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateUserRequestDto>
    implements $UpdateUserRequestDtoCopyWith<$Res> {
  _$UpdateUserRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserRequestDtoImplCopyWith<$Res>
    implements $UpdateUserRequestDtoCopyWith<$Res> {
  factory _$$UpdateUserRequestDtoImplCopyWith(_$UpdateUserRequestDtoImpl value,
          $Res Function(_$UpdateUserRequestDtoImpl) then) =
      __$$UpdateUserRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userStatus') int? userStatus});
}

/// @nodoc
class __$$UpdateUserRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdateUserRequestDtoCopyWithImpl<$Res, _$UpdateUserRequestDtoImpl>
    implements _$$UpdateUserRequestDtoImplCopyWith<$Res> {
  __$$UpdateUserRequestDtoImplCopyWithImpl(_$UpdateUserRequestDtoImpl _value,
      $Res Function(_$UpdateUserRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$UpdateUserRequestDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserRequestDtoImpl implements _UpdateUserRequestDto {
  _$UpdateUserRequestDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'userStatus') this.userStatus});

  factory _$UpdateUserRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'userStatus')
  final int? userStatus;

  @override
  String toString() {
    return 'UpdateUserRequestDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserRequestDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, firstName,
      lastName, email, password, phone, userStatus);

  /// Create a copy of UpdateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserRequestDtoImplCopyWith<_$UpdateUserRequestDtoImpl>
      get copyWith =>
          __$$UpdateUserRequestDtoImplCopyWithImpl<_$UpdateUserRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserRequestDto implements UpdateUserRequestDto {
  factory _UpdateUserRequestDto(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'firstName') final String? firstName,
          @JsonKey(name: 'lastName') final String? lastName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'userStatus') final int? userStatus}) =
      _$UpdateUserRequestDtoImpl;

  factory _UpdateUserRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdateUserRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'userStatus')
  int? get userStatus;

  /// Create a copy of UpdateUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserRequestDtoImplCopyWith<_$UpdateUserRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
