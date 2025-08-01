// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_store.openapi.dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDto {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'petId')
  int? get petId;
  @JsonKey(name: 'quantity')
  int? get quantity;
  @JsonKey(name: 'shipDate')
  DateTime? get shipDate;
  @JsonKey(name: 'status')
  OrderDtoStatusDto? get status;
  @JsonKey(name: 'complete')
  bool get complete;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      _$OrderDtoCopyWithImpl<OrderDto>(this as OrderDto, _$identity);

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDto &&
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

  @override
  String toString() {
    return 'OrderDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }
}

/// @nodoc
abstract mixin class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) _then) =
      _$OrderDtoCopyWithImpl;
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
class _$OrderDtoCopyWithImpl<$Res> implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._self, this._then);

  final OrderDto _self;
  final $Res Function(OrderDto) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _self.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _self.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _self.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderDto].
extension OrderDtoPatterns on OrderDto {
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
    TResult Function(_OrderDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
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
    TResult Function(_OrderDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto():
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
    TResult? Function(_OrderDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'petId') int? petId,
            @JsonKey(name: 'quantity') int? quantity,
            @JsonKey(name: 'shipDate') DateTime? shipDate,
            @JsonKey(name: 'status') OrderDtoStatusDto? status,
            @JsonKey(name: 'complete') bool complete)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
        return $default(_that.id, _that.petId, _that.quantity, _that.shipDate,
            _that.status, _that.complete);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'petId') int? petId,
            @JsonKey(name: 'quantity') int? quantity,
            @JsonKey(name: 'shipDate') DateTime? shipDate,
            @JsonKey(name: 'status') OrderDtoStatusDto? status,
            @JsonKey(name: 'complete') bool complete)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto():
        return $default(_that.id, _that.petId, _that.quantity, _that.shipDate,
            _that.status, _that.complete);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'petId') int? petId,
            @JsonKey(name: 'quantity') int? quantity,
            @JsonKey(name: 'shipDate') DateTime? shipDate,
            @JsonKey(name: 'status') OrderDtoStatusDto? status,
            @JsonKey(name: 'complete') bool complete)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
        return $default(_that.id, _that.petId, _that.quantity, _that.shipDate,
            _that.status, _that.complete);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderDto implements OrderDto {
  _OrderDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'petId') this.petId,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'shipDate') this.shipDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'complete') this.complete = false});
  factory _OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

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

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderDtoCopyWith<_OrderDto> get copyWith =>
      __$OrderDtoCopyWithImpl<_OrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDto &&
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

  @override
  String toString() {
    return 'OrderDto(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)';
  }
}

/// @nodoc
abstract mixin class _$OrderDtoCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$OrderDtoCopyWith(_OrderDto value, $Res Function(_OrderDto) _then) =
      __$OrderDtoCopyWithImpl;
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
class __$OrderDtoCopyWithImpl<$Res> implements _$OrderDtoCopyWith<$Res> {
  __$OrderDtoCopyWithImpl(this._self, this._then);

  final _OrderDto _self;
  final $Res Function(_OrderDto) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? petId = freezed,
    Object? quantity = freezed,
    Object? shipDate = freezed,
    Object? status = freezed,
    Object? complete = null,
  }) {
    return _then(_OrderDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      petId: freezed == petId
          ? _self.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shipDate: freezed == shipDate
          ? _self.shipDate
          : shipDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderDtoStatusDto?,
      complete: null == complete
          ? _self.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CategoryDto {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) _then) =
      _$CategoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
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
    TResult Function(_CategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
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
    TResult Function(_CategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto():
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
    TResult? Function(_CategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
        return $default(_that.id, _that.name);
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto():
        return $default(_that.id, _that.name);
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryDto() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryDto implements CategoryDto {
  _CategoryDto(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith =>
      __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(
          _CategoryDto value, $Res Function(_CategoryDto) _then) =
      __$CategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res> implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

  /// Create a copy of CategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CategoryDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'username')
  String? get username;
  @JsonKey(name: 'firstName')
  String? get firstName;
  @JsonKey(name: 'lastName')
  String? get lastName;
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'password')
  String? get password;
  @JsonKey(name: 'phone')
  String? get phone;
  @JsonKey(name: 'userStatus')
  int? get userStatus;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<UserDto> get copyWith =>
      _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDto &&
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

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }
}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) =
      _$UserDtoCopyWithImpl;
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
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _self.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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
    TResult Function(_UserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
    TResult Function(_UserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
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
    TResult? Function(_UserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'firstName') String? firstName,
            @JsonKey(name: 'lastName') String? lastName,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'userStatus') int? userStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.password,
            _that.phone,
            _that.userStatus);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'firstName') String? firstName,
            @JsonKey(name: 'lastName') String? lastName,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'userStatus') int? userStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
        return $default(
            _that.id,
            _that.username,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.password,
            _that.phone,
            _that.userStatus);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'firstName') String? firstName,
            @JsonKey(name: 'lastName') String? lastName,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'password') String? password,
            @JsonKey(name: 'phone') String? phone,
            @JsonKey(name: 'userStatus') int? userStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.password,
            _that.phone,
            _that.userStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserDto implements UserDto {
  _UserDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'userStatus') this.userStatus});
  factory _UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

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

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
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

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone, userStatus: $userStatus)';
  }
}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) =
      __$UserDtoCopyWithImpl;
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
class __$UserDtoCopyWithImpl<$Res> implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UserDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userStatus: freezed == userStatus
          ? _self.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$TagDto {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TagDtoCopyWith<TagDto> get copyWith =>
      _$TagDtoCopyWithImpl<TagDto>(this as TagDto, _$identity);

  /// Serializes this TagDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TagDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) _then) =
      _$TagDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res> implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._self, this._then);

  final TagDto _self;
  final $Res Function(TagDto) _then;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TagDto].
extension TagDtoPatterns on TagDto {
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
    TResult Function(_TagDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TagDto() when $default != null:
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
    TResult Function(_TagDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TagDto():
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
    TResult? Function(_TagDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TagDto() when $default != null:
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TagDto() when $default != null:
        return $default(_that.id, _that.name);
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TagDto():
        return $default(_that.id, _that.name);
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
            @JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TagDto() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TagDto implements TagDto {
  _TagDto({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TagDtoCopyWith<_TagDto> get copyWith =>
      __$TagDtoCopyWithImpl<_TagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TagDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$TagDtoCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$TagDtoCopyWith(_TagDto value, $Res Function(_TagDto) _then) =
      __$TagDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$TagDtoCopyWithImpl<$Res> implements _$TagDtoCopyWith<$Res> {
  __$TagDtoCopyWithImpl(this._self, this._then);

  final _TagDto _self;
  final $Res Function(_TagDto) _then;

  /// Create a copy of TagDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_TagDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PetDto {
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'category')
  CategoryDto? get category;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'photoUrls')
  List<String> get photoUrls;
  @JsonKey(name: 'tags')
  List<TagDto>? get tags;
  @JsonKey(name: 'status')
  PetDtoStatusDto? get status;

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PetDtoCopyWith<PetDto> get copyWith =>
      _$PetDtoCopyWithImpl<PetDto>(this as PetDto, _$identity);

  /// Serializes this PetDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PetDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.photoUrls, photoUrls) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      name,
      const DeepCollectionEquality().hash(photoUrls),
      const DeepCollectionEquality().hash(tags),
      status);

  @override
  String toString() {
    return 'PetDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }
}

/// @nodoc
abstract mixin class $PetDtoCopyWith<$Res> {
  factory $PetDtoCopyWith(PetDto value, $Res Function(PetDto) _then) =
      _$PetDtoCopyWithImpl;
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
class _$PetDtoCopyWithImpl<$Res> implements $PetDtoCopyWith<$Res> {
  _$PetDtoCopyWithImpl(this._self, this._then);

  final PetDto _self;
  final $Res Function(PetDto) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _self.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PetDto].
extension PetDtoPatterns on PetDto {
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
    TResult Function(_PetDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PetDto() when $default != null:
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
    TResult Function(_PetDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PetDto():
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
    TResult? Function(_PetDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PetDto() when $default != null:
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'category') CategoryDto? category,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'photoUrls') List<String> photoUrls,
            @JsonKey(name: 'tags') List<TagDto>? tags,
            @JsonKey(name: 'status') PetDtoStatusDto? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PetDto() when $default != null:
        return $default(_that.id, _that.category, _that.name, _that.photoUrls,
            _that.tags, _that.status);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'category') CategoryDto? category,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'photoUrls') List<String> photoUrls,
            @JsonKey(name: 'tags') List<TagDto>? tags,
            @JsonKey(name: 'status') PetDtoStatusDto? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PetDto():
        return $default(_that.id, _that.category, _that.name, _that.photoUrls,
            _that.tags, _that.status);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'category') CategoryDto? category,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'photoUrls') List<String> photoUrls,
            @JsonKey(name: 'tags') List<TagDto>? tags,
            @JsonKey(name: 'status') PetDtoStatusDto? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PetDto() when $default != null:
        return $default(_that.id, _that.category, _that.name, _that.photoUrls,
            _that.tags, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PetDto implements PetDto {
  _PetDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'photoUrls') required final List<String> photoUrls,
      @JsonKey(name: 'tags') final List<TagDto>? tags,
      @JsonKey(name: 'status') this.status})
      : _photoUrls = photoUrls,
        _tags = tags;
  factory _PetDto.fromJson(Map<String, dynamic> json) => _$PetDtoFromJson(json);

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

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PetDtoCopyWith<_PetDto> get copyWith =>
      __$PetDtoCopyWithImpl<_PetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PetDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetDto &&
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

  @override
  String toString() {
    return 'PetDto(id: $id, category: $category, name: $name, photoUrls: $photoUrls, tags: $tags, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$PetDtoCopyWith<$Res> implements $PetDtoCopyWith<$Res> {
  factory _$PetDtoCopyWith(_PetDto value, $Res Function(_PetDto) _then) =
      __$PetDtoCopyWithImpl;
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
class __$PetDtoCopyWithImpl<$Res> implements _$PetDtoCopyWith<$Res> {
  __$PetDtoCopyWithImpl(this._self, this._then);

  final _PetDto _self;
  final $Res Function(_PetDto) _then;

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = null,
    Object? photoUrls = null,
    Object? tags = freezed,
    Object? status = freezed,
  }) {
    return _then(_PetDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrls: null == photoUrls
          ? _self._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagDto>?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PetDtoStatusDto?,
    ));
  }

  /// Create a copy of PetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $CategoryDtoCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
mixin _$ApiResponseDto {
  @JsonKey(name: 'code')
  int? get code;
  @JsonKey(name: 'type')
  String? get type;
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseDtoCopyWith<ApiResponseDto> get copyWith =>
      _$ApiResponseDtoCopyWithImpl<ApiResponseDto>(
          this as ApiResponseDto, _$identity);

  /// Serializes this ApiResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, type, message);

  @override
  String toString() {
    return 'ApiResponseDto(code: $code, type: $type, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseDtoCopyWith<$Res> {
  factory $ApiResponseDtoCopyWith(
          ApiResponseDto value, $Res Function(ApiResponseDto) _then) =
      _$ApiResponseDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ApiResponseDtoCopyWithImpl<$Res>
    implements $ApiResponseDtoCopyWith<$Res> {
  _$ApiResponseDtoCopyWithImpl(this._self, this._then);

  final ApiResponseDto _self;
  final $Res Function(ApiResponseDto) _then;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiResponseDto].
extension ApiResponseDtoPatterns on ApiResponseDto {
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
    TResult Function(_ApiResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto() when $default != null:
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
    TResult Function(_ApiResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto():
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
    TResult? Function(_ApiResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto() when $default != null:
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
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'message') String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto() when $default != null:
        return $default(_that.code, _that.type, _that.message);
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
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'message') String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto():
        return $default(_that.code, _that.type, _that.message);
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
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'message') String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponseDto() when $default != null:
        return $default(_that.code, _that.type, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApiResponseDto implements ApiResponseDto {
  _ApiResponseDto(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'message') this.message});
  factory _ApiResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiResponseDtoCopyWith<_ApiResponseDto> get copyWith =>
      __$ApiResponseDtoCopyWithImpl<_ApiResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponseDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, type, message);

  @override
  String toString() {
    return 'ApiResponseDto(code: $code, type: $type, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ApiResponseDtoCopyWith<$Res>
    implements $ApiResponseDtoCopyWith<$Res> {
  factory _$ApiResponseDtoCopyWith(
          _ApiResponseDto value, $Res Function(_ApiResponseDto) _then) =
      __$ApiResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$ApiResponseDtoCopyWithImpl<$Res>
    implements _$ApiResponseDtoCopyWith<$Res> {
  __$ApiResponseDtoCopyWithImpl(this._self, this._then);

  final _ApiResponseDto _self;
  final $Res Function(_ApiResponseDto) _then;

  /// Create a copy of ApiResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_ApiResponseDto(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePetWithFormRequestDto {
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'status')
  String? get status;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePetWithFormRequestDtoCopyWith<UpdatePetWithFormRequestDto>
      get copyWith => _$UpdatePetWithFormRequestDtoCopyWithImpl<
              UpdatePetWithFormRequestDto>(
          this as UpdatePetWithFormRequestDto, _$identity);

  /// Serializes this UpdatePetWithFormRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePetWithFormRequestDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, status);

  @override
  String toString() {
    return 'UpdatePetWithFormRequestDto(name: $name, status: $status)';
  }
}

/// @nodoc
abstract mixin class $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  factory $UpdatePetWithFormRequestDtoCopyWith(
          UpdatePetWithFormRequestDto value,
          $Res Function(UpdatePetWithFormRequestDto) _then) =
      _$UpdatePetWithFormRequestDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$UpdatePetWithFormRequestDtoCopyWithImpl<$Res>
    implements $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  _$UpdatePetWithFormRequestDtoCopyWithImpl(this._self, this._then);

  final UpdatePetWithFormRequestDto _self;
  final $Res Function(UpdatePetWithFormRequestDto) _then;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePetWithFormRequestDto].
extension UpdatePetWithFormRequestDtoPatterns on UpdatePetWithFormRequestDto {
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
    TResult Function(_UpdatePetWithFormRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto() when $default != null:
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
    TResult Function(_UpdatePetWithFormRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto():
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
    TResult? Function(_UpdatePetWithFormRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'name') String? name,
            @JsonKey(name: 'status') String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto() when $default != null:
        return $default(_that.name, _that.status);
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
    TResult Function(@JsonKey(name: 'name') String? name,
            @JsonKey(name: 'status') String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto():
        return $default(_that.name, _that.status);
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
    TResult? Function(@JsonKey(name: 'name') String? name,
            @JsonKey(name: 'status') String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePetWithFormRequestDto() when $default != null:
        return $default(_that.name, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePetWithFormRequestDto implements UpdatePetWithFormRequestDto {
  _UpdatePetWithFormRequestDto(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'status') this.status});
  factory _UpdatePetWithFormRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePetWithFormRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'status')
  final String? status;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePetWithFormRequestDtoCopyWith<_UpdatePetWithFormRequestDto>
      get copyWith => __$UpdatePetWithFormRequestDtoCopyWithImpl<
          _UpdatePetWithFormRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePetWithFormRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePetWithFormRequestDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, status);

  @override
  String toString() {
    return 'UpdatePetWithFormRequestDto(name: $name, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePetWithFormRequestDtoCopyWith<$Res>
    implements $UpdatePetWithFormRequestDtoCopyWith<$Res> {
  factory _$UpdatePetWithFormRequestDtoCopyWith(
          _UpdatePetWithFormRequestDto value,
          $Res Function(_UpdatePetWithFormRequestDto) _then) =
      __$UpdatePetWithFormRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$UpdatePetWithFormRequestDtoCopyWithImpl<$Res>
    implements _$UpdatePetWithFormRequestDtoCopyWith<$Res> {
  __$UpdatePetWithFormRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdatePetWithFormRequestDto _self;
  final $Res Function(_UpdatePetWithFormRequestDto) _then;

  /// Create a copy of UpdatePetWithFormRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_UpdatePetWithFormRequestDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
