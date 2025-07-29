// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stepo.openapi.dtos.dart';

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
mixin _$AccountDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'user')
  UserDto get user;

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      _$AccountDtoCopyWithImpl<AccountDto>(this as AccountDto, _$identity);

  /// Serializes this AccountDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @override
  String toString() {
    return 'AccountDto(id: $id, user: $user)';
  }
}

/// @nodoc
abstract mixin class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) _then) =
      _$AccountDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'user') UserDto user});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res> implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._self, this._then);

  final AccountDto _self;
  final $Res Function(AccountDto) _then;

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AccountDto].
extension AccountDtoPatterns on AccountDto {
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
    TResult Function(_AccountDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountDto() when $default != null:
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
    TResult Function(_AccountDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountDto():
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
    TResult? Function(_AccountDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'id') String id,
            @JsonKey(name: 'user') UserDto user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AccountDto() when $default != null:
        return $default(_that.id, _that.user);
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
            @JsonKey(name: 'id') String id, @JsonKey(name: 'user') UserDto user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountDto():
        return $default(_that.id, _that.user);
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
    TResult? Function(@JsonKey(name: 'id') String id,
            @JsonKey(name: 'user') UserDto user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AccountDto() when $default != null:
        return $default(_that.id, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AccountDto implements AccountDto {
  _AccountDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user') required this.user});
  factory _AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user')
  final UserDto user;

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      __$AccountDtoCopyWithImpl<_AccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccountDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @override
  String toString() {
    return 'AccountDto(id: $id, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$AccountDtoCopyWith<$Res>
    implements $AccountDtoCopyWith<$Res> {
  factory _$AccountDtoCopyWith(
          _AccountDto value, $Res Function(_AccountDto) _then) =
      __$AccountDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'user') UserDto user});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$AccountDtoCopyWithImpl<$Res> implements _$AccountDtoCopyWith<$Res> {
  __$AccountDtoCopyWithImpl(this._self, this._then);

  final _AccountDto _self;
  final $Res Function(_AccountDto) _then;

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_AccountDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }

  /// Create a copy of AccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$AppFeedbackDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'feedbackType')
  FeedbackTypeDto get feedbackType;
  @JsonKey(name: 'status')
  FeedbackStatusDto get status;
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;
  @JsonKey(name: 'deviceInfo')
  String? get deviceInfo;
  @JsonKey(name: 'appVersion')
  String? get appVersion;
  @JsonKey(name: 'user')
  UserDto get user;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'adminResponse')
  String? get adminResponse;
  @JsonKey(name: 'respondedDate')
  DateTime? get respondedDate;

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppFeedbackDtoCopyWith<AppFeedbackDto> get copyWith =>
      _$AppFeedbackDtoCopyWithImpl<AppFeedbackDto>(
          this as AppFeedbackDto, _$identity);

  /// Serializes this AppFeedbackDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppFeedbackDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.respondedDate, respondedDate) ||
                other.respondedDate == respondedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      feedbackType,
      status,
      imageUrl,
      deviceInfo,
      appVersion,
      user,
      createdDate,
      adminResponse,
      respondedDate);

  @override
  String toString() {
    return 'AppFeedbackDto(id: $id, content: $content, feedbackType: $feedbackType, status: $status, imageUrl: $imageUrl, deviceInfo: $deviceInfo, appVersion: $appVersion, user: $user, createdDate: $createdDate, adminResponse: $adminResponse, respondedDate: $respondedDate)';
  }
}

/// @nodoc
abstract mixin class $AppFeedbackDtoCopyWith<$Res> {
  factory $AppFeedbackDtoCopyWith(
          AppFeedbackDto value, $Res Function(AppFeedbackDto) _then) =
      _$AppFeedbackDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
      @JsonKey(name: 'status') FeedbackStatusDto status,
      @JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'deviceInfo') String? deviceInfo,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'adminResponse') String? adminResponse,
      @JsonKey(name: 'respondedDate') DateTime? respondedDate});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$AppFeedbackDtoCopyWithImpl<$Res>
    implements $AppFeedbackDtoCopyWith<$Res> {
  _$AppFeedbackDtoCopyWithImpl(this._self, this._then);

  final AppFeedbackDto _self;
  final $Res Function(AppFeedbackDto) _then;

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? feedbackType = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
    Object? user = null,
    Object? createdDate = null,
    Object? adminResponse = freezed,
    Object? respondedDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackType: null == feedbackType
          ? _self.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackTypeDto,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusDto,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adminResponse: freezed == adminResponse
          ? _self.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedDate: freezed == respondedDate
          ? _self.respondedDate
          : respondedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AppFeedbackDto].
extension AppFeedbackDtoPatterns on AppFeedbackDto {
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
    TResult Function(_AppFeedbackDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto() when $default != null:
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
    TResult Function(_AppFeedbackDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto():
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
    TResult? Function(_AppFeedbackDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'imageUrl') String? imageUrl,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'adminResponse') String? adminResponse,
            @JsonKey(name: 'respondedDate') DateTime? respondedDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.feedbackType,
            _that.status,
            _that.imageUrl,
            _that.deviceInfo,
            _that.appVersion,
            _that.user,
            _that.createdDate,
            _that.adminResponse,
            _that.respondedDate);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'imageUrl') String? imageUrl,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'adminResponse') String? adminResponse,
            @JsonKey(name: 'respondedDate') DateTime? respondedDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto():
        return $default(
            _that.id,
            _that.content,
            _that.feedbackType,
            _that.status,
            _that.imageUrl,
            _that.deviceInfo,
            _that.appVersion,
            _that.user,
            _that.createdDate,
            _that.adminResponse,
            _that.respondedDate);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'imageUrl') String? imageUrl,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'adminResponse') String? adminResponse,
            @JsonKey(name: 'respondedDate') DateTime? respondedDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppFeedbackDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.feedbackType,
            _that.status,
            _that.imageUrl,
            _that.deviceInfo,
            _that.appVersion,
            _that.user,
            _that.createdDate,
            _that.adminResponse,
            _that.respondedDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppFeedbackDto implements AppFeedbackDto {
  _AppFeedbackDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'feedbackType') required this.feedbackType,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'imageUrl') this.imageUrl,
      @JsonKey(name: 'deviceInfo') this.deviceInfo,
      @JsonKey(name: 'appVersion') this.appVersion,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'adminResponse') this.adminResponse,
      @JsonKey(name: 'respondedDate') this.respondedDate});
  factory _AppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$AppFeedbackDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'feedbackType')
  final FeedbackTypeDto feedbackType;
  @override
  @JsonKey(name: 'status')
  final FeedbackStatusDto status;
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @override
  @JsonKey(name: 'deviceInfo')
  final String? deviceInfo;
  @override
  @JsonKey(name: 'appVersion')
  final String? appVersion;
  @override
  @JsonKey(name: 'user')
  final UserDto user;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'adminResponse')
  final String? adminResponse;
  @override
  @JsonKey(name: 'respondedDate')
  final DateTime? respondedDate;

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppFeedbackDtoCopyWith<_AppFeedbackDto> get copyWith =>
      __$AppFeedbackDtoCopyWithImpl<_AppFeedbackDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppFeedbackDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppFeedbackDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.respondedDate, respondedDate) ||
                other.respondedDate == respondedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      feedbackType,
      status,
      imageUrl,
      deviceInfo,
      appVersion,
      user,
      createdDate,
      adminResponse,
      respondedDate);

  @override
  String toString() {
    return 'AppFeedbackDto(id: $id, content: $content, feedbackType: $feedbackType, status: $status, imageUrl: $imageUrl, deviceInfo: $deviceInfo, appVersion: $appVersion, user: $user, createdDate: $createdDate, adminResponse: $adminResponse, respondedDate: $respondedDate)';
  }
}

/// @nodoc
abstract mixin class _$AppFeedbackDtoCopyWith<$Res>
    implements $AppFeedbackDtoCopyWith<$Res> {
  factory _$AppFeedbackDtoCopyWith(
          _AppFeedbackDto value, $Res Function(_AppFeedbackDto) _then) =
      __$AppFeedbackDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
      @JsonKey(name: 'status') FeedbackStatusDto status,
      @JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'deviceInfo') String? deviceInfo,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'adminResponse') String? adminResponse,
      @JsonKey(name: 'respondedDate') DateTime? respondedDate});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$AppFeedbackDtoCopyWithImpl<$Res>
    implements _$AppFeedbackDtoCopyWith<$Res> {
  __$AppFeedbackDtoCopyWithImpl(this._self, this._then);

  final _AppFeedbackDto _self;
  final $Res Function(_AppFeedbackDto) _then;

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? feedbackType = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
    Object? user = null,
    Object? createdDate = null,
    Object? adminResponse = freezed,
    Object? respondedDate = freezed,
  }) {
    return _then(_AppFeedbackDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackType: null == feedbackType
          ? _self.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackTypeDto,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusDto,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adminResponse: freezed == adminResponse
          ? _self.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      respondedDate: freezed == respondedDate
          ? _self.respondedDate
          : respondedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of AppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$BanUserDto {
  @JsonKey(name: 'reason')
  String get reason;
  @JsonKey(name: 'isShadowBan')
  bool get isShadowBan;
  @JsonKey(name: 'additionalNotes')
  String? get additionalNotes;

  /// Create a copy of BanUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BanUserDtoCopyWith<BanUserDto> get copyWith =>
      _$BanUserDtoCopyWithImpl<BanUserDto>(this as BanUserDto, _$identity);

  /// Serializes this BanUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BanUserDto &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.isShadowBan, isShadowBan) ||
                other.isShadowBan == isShadowBan) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, isShadowBan, additionalNotes);

  @override
  String toString() {
    return 'BanUserDto(reason: $reason, isShadowBan: $isShadowBan, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class $BanUserDtoCopyWith<$Res> {
  factory $BanUserDtoCopyWith(
          BanUserDto value, $Res Function(BanUserDto) _then) =
      _$BanUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'isShadowBan') bool isShadowBan,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class _$BanUserDtoCopyWithImpl<$Res> implements $BanUserDtoCopyWith<$Res> {
  _$BanUserDtoCopyWithImpl(this._self, this._then);

  final BanUserDto _self;
  final $Res Function(BanUserDto) _then;

  /// Create a copy of BanUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? isShadowBan = null,
    Object? additionalNotes = freezed,
  }) {
    return _then(_self.copyWith(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isShadowBan: null == isShadowBan
          ? _self.isShadowBan
          : isShadowBan // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BanUserDto].
extension BanUserDtoPatterns on BanUserDto {
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
    TResult Function(_BanUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BanUserDto() when $default != null:
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
    TResult Function(_BanUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BanUserDto():
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
    TResult? Function(_BanUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BanUserDto() when $default != null:
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
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'isShadowBan') bool isShadowBan,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BanUserDto() when $default != null:
        return $default(_that.reason, _that.isShadowBan, _that.additionalNotes);
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
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'isShadowBan') bool isShadowBan,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BanUserDto():
        return $default(_that.reason, _that.isShadowBan, _that.additionalNotes);
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
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'isShadowBan') bool isShadowBan,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BanUserDto() when $default != null:
        return $default(_that.reason, _that.isShadowBan, _that.additionalNotes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BanUserDto implements BanUserDto {
  _BanUserDto(
      {@JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'isShadowBan') this.isShadowBan = false,
      @JsonKey(name: 'additionalNotes') this.additionalNotes});
  factory _BanUserDto.fromJson(Map<String, dynamic> json) =>
      _$BanUserDtoFromJson(json);

  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'isShadowBan')
  final bool isShadowBan;
  @override
  @JsonKey(name: 'additionalNotes')
  final String? additionalNotes;

  /// Create a copy of BanUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BanUserDtoCopyWith<_BanUserDto> get copyWith =>
      __$BanUserDtoCopyWithImpl<_BanUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BanUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BanUserDto &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.isShadowBan, isShadowBan) ||
                other.isShadowBan == isShadowBan) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, isShadowBan, additionalNotes);

  @override
  String toString() {
    return 'BanUserDto(reason: $reason, isShadowBan: $isShadowBan, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class _$BanUserDtoCopyWith<$Res>
    implements $BanUserDtoCopyWith<$Res> {
  factory _$BanUserDtoCopyWith(
          _BanUserDto value, $Res Function(_BanUserDto) _then) =
      __$BanUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'isShadowBan') bool isShadowBan,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class __$BanUserDtoCopyWithImpl<$Res> implements _$BanUserDtoCopyWith<$Res> {
  __$BanUserDtoCopyWithImpl(this._self, this._then);

  final _BanUserDto _self;
  final $Res Function(_BanUserDto) _then;

  /// Create a copy of BanUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? isShadowBan = null,
    Object? additionalNotes = freezed,
  }) {
    return _then(_BanUserDto(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isShadowBan: null == isShadowBan
          ? _self.isShadowBan
          : isShadowBan // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateAppFeedbackDto {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'feedbackType')
  FeedbackTypeDto get feedbackType;
  @JsonKey(name: 'deviceInfo')
  String? get deviceInfo;
  @JsonKey(name: 'appVersion')
  String? get appVersion;

  /// Create a copy of CreateAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAppFeedbackDtoCopyWith<CreateAppFeedbackDto> get copyWith =>
      _$CreateAppFeedbackDtoCopyWithImpl<CreateAppFeedbackDto>(
          this as CreateAppFeedbackDto, _$identity);

  /// Serializes this CreateAppFeedbackDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAppFeedbackDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, feedbackType, deviceInfo, appVersion);

  @override
  String toString() {
    return 'CreateAppFeedbackDto(content: $content, feedbackType: $feedbackType, deviceInfo: $deviceInfo, appVersion: $appVersion)';
  }
}

/// @nodoc
abstract mixin class $CreateAppFeedbackDtoCopyWith<$Res> {
  factory $CreateAppFeedbackDtoCopyWith(CreateAppFeedbackDto value,
          $Res Function(CreateAppFeedbackDto) _then) =
      _$CreateAppFeedbackDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
      @JsonKey(name: 'deviceInfo') String? deviceInfo,
      @JsonKey(name: 'appVersion') String? appVersion});
}

/// @nodoc
class _$CreateAppFeedbackDtoCopyWithImpl<$Res>
    implements $CreateAppFeedbackDtoCopyWith<$Res> {
  _$CreateAppFeedbackDtoCopyWithImpl(this._self, this._then);

  final CreateAppFeedbackDto _self;
  final $Res Function(CreateAppFeedbackDto) _then;

  /// Create a copy of CreateAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? feedbackType = null,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackType: null == feedbackType
          ? _self.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackTypeDto,
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateAppFeedbackDto].
extension CreateAppFeedbackDtoPatterns on CreateAppFeedbackDto {
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
    TResult Function(_CreateAppFeedbackDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto() when $default != null:
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
    TResult Function(_CreateAppFeedbackDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto():
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
    TResult? Function(_CreateAppFeedbackDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto() when $default != null:
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto() when $default != null:
        return $default(_that.content, _that.feedbackType, _that.deviceInfo,
            _that.appVersion);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto():
        return $default(_that.content, _that.feedbackType, _that.deviceInfo,
            _that.appVersion);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
            @JsonKey(name: 'deviceInfo') String? deviceInfo,
            @JsonKey(name: 'appVersion') String? appVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAppFeedbackDto() when $default != null:
        return $default(_that.content, _that.feedbackType, _that.deviceInfo,
            _that.appVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateAppFeedbackDto implements CreateAppFeedbackDto {
  _CreateAppFeedbackDto(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'feedbackType') required this.feedbackType,
      @JsonKey(name: 'deviceInfo') this.deviceInfo,
      @JsonKey(name: 'appVersion') this.appVersion});
  factory _CreateAppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAppFeedbackDtoFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'feedbackType')
  final FeedbackTypeDto feedbackType;
  @override
  @JsonKey(name: 'deviceInfo')
  final String? deviceInfo;
  @override
  @JsonKey(name: 'appVersion')
  final String? appVersion;

  /// Create a copy of CreateAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAppFeedbackDtoCopyWith<_CreateAppFeedbackDto> get copyWith =>
      __$CreateAppFeedbackDtoCopyWithImpl<_CreateAppFeedbackDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAppFeedbackDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAppFeedbackDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, feedbackType, deviceInfo, appVersion);

  @override
  String toString() {
    return 'CreateAppFeedbackDto(content: $content, feedbackType: $feedbackType, deviceInfo: $deviceInfo, appVersion: $appVersion)';
  }
}

/// @nodoc
abstract mixin class _$CreateAppFeedbackDtoCopyWith<$Res>
    implements $CreateAppFeedbackDtoCopyWith<$Res> {
  factory _$CreateAppFeedbackDtoCopyWith(_CreateAppFeedbackDto value,
          $Res Function(_CreateAppFeedbackDto) _then) =
      __$CreateAppFeedbackDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'feedbackType') FeedbackTypeDto feedbackType,
      @JsonKey(name: 'deviceInfo') String? deviceInfo,
      @JsonKey(name: 'appVersion') String? appVersion});
}

/// @nodoc
class __$CreateAppFeedbackDtoCopyWithImpl<$Res>
    implements _$CreateAppFeedbackDtoCopyWith<$Res> {
  __$CreateAppFeedbackDtoCopyWithImpl(this._self, this._then);

  final _CreateAppFeedbackDto _self;
  final $Res Function(_CreateAppFeedbackDto) _then;

  /// Create a copy of CreateAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? feedbackType = null,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_CreateAppFeedbackDto(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackType: null == feedbackType
          ? _self.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackTypeDto,
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateCommentInteractionDto {
  @JsonKey(name: 'type')
  InteractionTypeDto get type;

  /// Create a copy of CreateCommentInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCommentInteractionDtoCopyWith<CreateCommentInteractionDto>
      get copyWith => _$CreateCommentInteractionDtoCopyWithImpl<
              CreateCommentInteractionDto>(
          this as CreateCommentInteractionDto, _$identity);

  /// Serializes this CreateCommentInteractionDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCommentInteractionDto &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'CreateCommentInteractionDto(type: $type)';
  }
}

/// @nodoc
abstract mixin class $CreateCommentInteractionDtoCopyWith<$Res> {
  factory $CreateCommentInteractionDtoCopyWith(
          CreateCommentInteractionDto value,
          $Res Function(CreateCommentInteractionDto) _then) =
      _$CreateCommentInteractionDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') InteractionTypeDto type});
}

/// @nodoc
class _$CreateCommentInteractionDtoCopyWithImpl<$Res>
    implements $CreateCommentInteractionDtoCopyWith<$Res> {
  _$CreateCommentInteractionDtoCopyWithImpl(this._self, this._then);

  final CreateCommentInteractionDto _self;
  final $Res Function(CreateCommentInteractionDto) _then;

  /// Create a copy of CreateCommentInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionTypeDto,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCommentInteractionDto].
extension CreateCommentInteractionDtoPatterns on CreateCommentInteractionDto {
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
    TResult Function(_CreateCommentInteractionDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto() when $default != null:
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
    TResult Function(_CreateCommentInteractionDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto():
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
    TResult? Function(_CreateCommentInteractionDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'type') InteractionTypeDto type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto() when $default != null:
        return $default(_that.type);
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
    TResult Function(@JsonKey(name: 'type') InteractionTypeDto type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto():
        return $default(_that.type);
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
    TResult? Function(@JsonKey(name: 'type') InteractionTypeDto type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommentInteractionDto() when $default != null:
        return $default(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateCommentInteractionDto implements CreateCommentInteractionDto {
  _CreateCommentInteractionDto(
      {@JsonKey(name: 'type') this.type = InteractionTypeDto.heart});
  factory _CreateCommentInteractionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentInteractionDtoFromJson(json);

  @override
  @JsonKey(name: 'type')
  final InteractionTypeDto type;

  /// Create a copy of CreateCommentInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCommentInteractionDtoCopyWith<_CreateCommentInteractionDto>
      get copyWith => __$CreateCommentInteractionDtoCopyWithImpl<
          _CreateCommentInteractionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCommentInteractionDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCommentInteractionDto &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'CreateCommentInteractionDto(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$CreateCommentInteractionDtoCopyWith<$Res>
    implements $CreateCommentInteractionDtoCopyWith<$Res> {
  factory _$CreateCommentInteractionDtoCopyWith(
          _CreateCommentInteractionDto value,
          $Res Function(_CreateCommentInteractionDto) _then) =
      __$CreateCommentInteractionDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') InteractionTypeDto type});
}

/// @nodoc
class __$CreateCommentInteractionDtoCopyWithImpl<$Res>
    implements _$CreateCommentInteractionDtoCopyWith<$Res> {
  __$CreateCommentInteractionDtoCopyWithImpl(this._self, this._then);

  final _CreateCommentInteractionDto _self;
  final $Res Function(_CreateCommentInteractionDto) _then;

  /// Create a copy of CreateCommentInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(_CreateCommentInteractionDto(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionTypeDto,
    ));
  }
}

/// @nodoc
mixin _$CreateReplyCommentDto {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'responseToUserId')
  String? get responseToUserId;
  @JsonKey(name: 'responseToCommentId')
  String? get responseToCommentId;

  /// Create a copy of CreateReplyCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateReplyCommentDtoCopyWith<CreateReplyCommentDto> get copyWith =>
      _$CreateReplyCommentDtoCopyWithImpl<CreateReplyCommentDto>(
          this as CreateReplyCommentDto, _$identity);

  /// Serializes this CreateReplyCommentDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateReplyCommentDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.responseToUserId, responseToUserId) ||
                other.responseToUserId == responseToUserId) &&
            (identical(other.responseToCommentId, responseToCommentId) ||
                other.responseToCommentId == responseToCommentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, responseToUserId, responseToCommentId);

  @override
  String toString() {
    return 'CreateReplyCommentDto(content: $content, responseToUserId: $responseToUserId, responseToCommentId: $responseToCommentId)';
  }
}

/// @nodoc
abstract mixin class $CreateReplyCommentDtoCopyWith<$Res> {
  factory $CreateReplyCommentDtoCopyWith(CreateReplyCommentDto value,
          $Res Function(CreateReplyCommentDto) _then) =
      _$CreateReplyCommentDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId') String? responseToCommentId});
}

/// @nodoc
class _$CreateReplyCommentDtoCopyWithImpl<$Res>
    implements $CreateReplyCommentDtoCopyWith<$Res> {
  _$CreateReplyCommentDtoCopyWithImpl(this._self, this._then);

  final CreateReplyCommentDto _self;
  final $Res Function(CreateReplyCommentDto) _then;

  /// Create a copy of CreateReplyCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _self.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _self.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateReplyCommentDto].
extension CreateReplyCommentDtoPatterns on CreateReplyCommentDto {
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
    TResult Function(_CreateReplyCommentDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto() when $default != null:
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
    TResult Function(_CreateReplyCommentDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto():
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
    TResult? Function(_CreateReplyCommentDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto() when $default != null:
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'responseToUserId') String? responseToUserId,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto() when $default != null:
        return $default(
            _that.content, _that.responseToUserId, _that.responseToCommentId);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'responseToUserId') String? responseToUserId,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto():
        return $default(
            _that.content, _that.responseToUserId, _that.responseToCommentId);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'responseToUserId') String? responseToUserId,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReplyCommentDto() when $default != null:
        return $default(
            _that.content, _that.responseToUserId, _that.responseToCommentId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateReplyCommentDto implements CreateReplyCommentDto {
  _CreateReplyCommentDto(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'responseToUserId') this.responseToUserId,
      @JsonKey(name: 'responseToCommentId') this.responseToCommentId});
  factory _CreateReplyCommentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReplyCommentDtoFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'responseToUserId')
  final String? responseToUserId;
  @override
  @JsonKey(name: 'responseToCommentId')
  final String? responseToCommentId;

  /// Create a copy of CreateReplyCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateReplyCommentDtoCopyWith<_CreateReplyCommentDto> get copyWith =>
      __$CreateReplyCommentDtoCopyWithImpl<_CreateReplyCommentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateReplyCommentDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateReplyCommentDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.responseToUserId, responseToUserId) ||
                other.responseToUserId == responseToUserId) &&
            (identical(other.responseToCommentId, responseToCommentId) ||
                other.responseToCommentId == responseToCommentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, responseToUserId, responseToCommentId);

  @override
  String toString() {
    return 'CreateReplyCommentDto(content: $content, responseToUserId: $responseToUserId, responseToCommentId: $responseToCommentId)';
  }
}

/// @nodoc
abstract mixin class _$CreateReplyCommentDtoCopyWith<$Res>
    implements $CreateReplyCommentDtoCopyWith<$Res> {
  factory _$CreateReplyCommentDtoCopyWith(_CreateReplyCommentDto value,
          $Res Function(_CreateReplyCommentDto) _then) =
      __$CreateReplyCommentDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId') String? responseToCommentId});
}

/// @nodoc
class __$CreateReplyCommentDtoCopyWithImpl<$Res>
    implements _$CreateReplyCommentDtoCopyWith<$Res> {
  __$CreateReplyCommentDtoCopyWithImpl(this._self, this._then);

  final _CreateReplyCommentDto _self;
  final $Res Function(_CreateReplyCommentDto) _then;

  /// Create a copy of CreateReplyCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_CreateReplyCommentDto(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _self.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _self.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CreateStepCommentDto {
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of CreateStepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStepCommentDtoCopyWith<CreateStepCommentDto> get copyWith =>
      _$CreateStepCommentDtoCopyWithImpl<CreateStepCommentDto>(
          this as CreateStepCommentDto, _$identity);

  /// Serializes this CreateStepCommentDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStepCommentDto &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'CreateStepCommentDto(content: $content)';
  }
}

/// @nodoc
abstract mixin class $CreateStepCommentDtoCopyWith<$Res> {
  factory $CreateStepCommentDtoCopyWith(CreateStepCommentDto value,
          $Res Function(CreateStepCommentDto) _then) =
      _$CreateStepCommentDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$CreateStepCommentDtoCopyWithImpl<$Res>
    implements $CreateStepCommentDtoCopyWith<$Res> {
  _$CreateStepCommentDtoCopyWithImpl(this._self, this._then);

  final CreateStepCommentDto _self;
  final $Res Function(CreateStepCommentDto) _then;

  /// Create a copy of CreateStepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateStepCommentDto].
extension CreateStepCommentDtoPatterns on CreateStepCommentDto {
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
    TResult Function(_CreateStepCommentDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto() when $default != null:
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
    TResult Function(_CreateStepCommentDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto():
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
    TResult? Function(_CreateStepCommentDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') String content)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto() when $default != null:
        return $default(_that.content);
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
    TResult Function(@JsonKey(name: 'content') String content) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto():
        return $default(_that.content);
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
    TResult? Function(@JsonKey(name: 'content') String content)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepCommentDto() when $default != null:
        return $default(_that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateStepCommentDto implements CreateStepCommentDto {
  _CreateStepCommentDto({@JsonKey(name: 'content') required this.content});
  factory _CreateStepCommentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepCommentDtoFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  /// Create a copy of CreateStepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStepCommentDtoCopyWith<_CreateStepCommentDto> get copyWith =>
      __$CreateStepCommentDtoCopyWithImpl<_CreateStepCommentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateStepCommentDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStepCommentDto &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'CreateStepCommentDto(content: $content)';
  }
}

/// @nodoc
abstract mixin class _$CreateStepCommentDtoCopyWith<$Res>
    implements $CreateStepCommentDtoCopyWith<$Res> {
  factory _$CreateStepCommentDtoCopyWith(_CreateStepCommentDto value,
          $Res Function(_CreateStepCommentDto) _then) =
      __$CreateStepCommentDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$CreateStepCommentDtoCopyWithImpl<$Res>
    implements _$CreateStepCommentDtoCopyWith<$Res> {
  __$CreateStepCommentDtoCopyWithImpl(this._self, this._then);

  final _CreateStepCommentDto _self;
  final $Res Function(_CreateStepCommentDto) _then;

  /// Create a copy of CreateStepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
  }) {
    return _then(_CreateStepCommentDto(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CreateStepDto {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'journeyId')
  String get journeyId;
  @JsonKey(name: 'isFinalStep')
  bool get isFinalStep;

  /// Create a copy of CreateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStepDtoCopyWith<CreateStepDto> get copyWith =>
      _$CreateStepDtoCopyWithImpl<CreateStepDto>(
          this as CreateStepDto, _$identity);

  /// Serializes this CreateStepDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStepDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.isFinalStep, isFinalStep) ||
                other.isFinalStep == isFinalStep));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, journeyId, isFinalStep);

  @override
  String toString() {
    return 'CreateStepDto(content: $content, journeyId: $journeyId, isFinalStep: $isFinalStep)';
  }
}

/// @nodoc
abstract mixin class $CreateStepDtoCopyWith<$Res> {
  factory $CreateStepDtoCopyWith(
          CreateStepDto value, $Res Function(CreateStepDto) _then) =
      _$CreateStepDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'isFinalStep') bool isFinalStep});
}

/// @nodoc
class _$CreateStepDtoCopyWithImpl<$Res>
    implements $CreateStepDtoCopyWith<$Res> {
  _$CreateStepDtoCopyWithImpl(this._self, this._then);

  final CreateStepDto _self;
  final $Res Function(CreateStepDto) _then;

  /// Create a copy of CreateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
    Object? isFinalStep = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      isFinalStep: null == isFinalStep
          ? _self.isFinalStep
          : isFinalStep // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateStepDto].
extension CreateStepDtoPatterns on CreateStepDto {
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
    TResult Function(_CreateStepDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto() when $default != null:
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
    TResult Function(_CreateStepDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto():
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
    TResult? Function(_CreateStepDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto() when $default != null:
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'isFinalStep') bool isFinalStep)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto() when $default != null:
        return $default(_that.content, _that.journeyId, _that.isFinalStep);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'isFinalStep') bool isFinalStep)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto():
        return $default(_that.content, _that.journeyId, _that.isFinalStep);
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
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'isFinalStep') bool isFinalStep)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepDto() when $default != null:
        return $default(_that.content, _that.journeyId, _that.isFinalStep);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateStepDto implements CreateStepDto {
  _CreateStepDto(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'journeyId') required this.journeyId,
      @JsonKey(name: 'isFinalStep') this.isFinalStep = false});
  factory _CreateStepDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepDtoFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'journeyId')
  final String journeyId;
  @override
  @JsonKey(name: 'isFinalStep')
  final bool isFinalStep;

  /// Create a copy of CreateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStepDtoCopyWith<_CreateStepDto> get copyWith =>
      __$CreateStepDtoCopyWithImpl<_CreateStepDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateStepDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStepDto &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.isFinalStep, isFinalStep) ||
                other.isFinalStep == isFinalStep));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, journeyId, isFinalStep);

  @override
  String toString() {
    return 'CreateStepDto(content: $content, journeyId: $journeyId, isFinalStep: $isFinalStep)';
  }
}

/// @nodoc
abstract mixin class _$CreateStepDtoCopyWith<$Res>
    implements $CreateStepDtoCopyWith<$Res> {
  factory _$CreateStepDtoCopyWith(
          _CreateStepDto value, $Res Function(_CreateStepDto) _then) =
      __$CreateStepDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'isFinalStep') bool isFinalStep});
}

/// @nodoc
class __$CreateStepDtoCopyWithImpl<$Res>
    implements _$CreateStepDtoCopyWith<$Res> {
  __$CreateStepDtoCopyWithImpl(this._self, this._then);

  final _CreateStepDto _self;
  final $Res Function(_CreateStepDto) _then;

  /// Create a copy of CreateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? journeyId = null,
    Object? isFinalStep = null,
  }) {
    return _then(_CreateStepDto(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      isFinalStep: null == isFinalStep
          ? _self.isFinalStep
          : isFinalStep // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CreateStepInteractionDto {
  @JsonKey(name: 'type')
  InteractionTypeDto get type;

  /// Create a copy of CreateStepInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStepInteractionDtoCopyWith<CreateStepInteractionDto> get copyWith =>
      _$CreateStepInteractionDtoCopyWithImpl<CreateStepInteractionDto>(
          this as CreateStepInteractionDto, _$identity);

  /// Serializes this CreateStepInteractionDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStepInteractionDto &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'CreateStepInteractionDto(type: $type)';
  }
}

/// @nodoc
abstract mixin class $CreateStepInteractionDtoCopyWith<$Res> {
  factory $CreateStepInteractionDtoCopyWith(CreateStepInteractionDto value,
          $Res Function(CreateStepInteractionDto) _then) =
      _$CreateStepInteractionDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') InteractionTypeDto type});
}

/// @nodoc
class _$CreateStepInteractionDtoCopyWithImpl<$Res>
    implements $CreateStepInteractionDtoCopyWith<$Res> {
  _$CreateStepInteractionDtoCopyWithImpl(this._self, this._then);

  final CreateStepInteractionDto _self;
  final $Res Function(CreateStepInteractionDto) _then;

  /// Create a copy of CreateStepInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionTypeDto,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateStepInteractionDto].
extension CreateStepInteractionDtoPatterns on CreateStepInteractionDto {
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
    TResult Function(_CreateStepInteractionDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto() when $default != null:
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
    TResult Function(_CreateStepInteractionDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto():
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
    TResult? Function(_CreateStepInteractionDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'type') InteractionTypeDto type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto() when $default != null:
        return $default(_that.type);
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
    TResult Function(@JsonKey(name: 'type') InteractionTypeDto type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto():
        return $default(_that.type);
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
    TResult? Function(@JsonKey(name: 'type') InteractionTypeDto type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStepInteractionDto() when $default != null:
        return $default(_that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateStepInteractionDto implements CreateStepInteractionDto {
  _CreateStepInteractionDto(
      {@JsonKey(name: 'type') this.type = InteractionTypeDto.heart});
  factory _CreateStepInteractionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepInteractionDtoFromJson(json);

  @override
  @JsonKey(name: 'type')
  final InteractionTypeDto type;

  /// Create a copy of CreateStepInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStepInteractionDtoCopyWith<_CreateStepInteractionDto> get copyWith =>
      __$CreateStepInteractionDtoCopyWithImpl<_CreateStepInteractionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateStepInteractionDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStepInteractionDto &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'CreateStepInteractionDto(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$CreateStepInteractionDtoCopyWith<$Res>
    implements $CreateStepInteractionDtoCopyWith<$Res> {
  factory _$CreateStepInteractionDtoCopyWith(_CreateStepInteractionDto value,
          $Res Function(_CreateStepInteractionDto) _then) =
      __$CreateStepInteractionDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') InteractionTypeDto type});
}

/// @nodoc
class __$CreateStepInteractionDtoCopyWithImpl<$Res>
    implements _$CreateStepInteractionDtoCopyWith<$Res> {
  __$CreateStepInteractionDtoCopyWithImpl(this._self, this._then);

  final _CreateStepInteractionDto _self;
  final $Res Function(_CreateStepInteractionDto) _then;

  /// Create a copy of CreateStepInteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(_CreateStepInteractionDto(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InteractionTypeDto,
    ));
  }
}

/// @nodoc
mixin _$DeviceTokenDto {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'deviceToken')
  String? get deviceToken;
  @JsonKey(name: 'platform')
  String? get platform;
  @JsonKey(name: 'isActive')
  bool? get isActive;
  @JsonKey(name: 'lastUsed')
  DateTime? get lastUsed;
  @JsonKey(name: 'appVersion')
  String? get appVersion;
  @JsonKey(name: 'deviceModel')
  String? get deviceModel;
  @JsonKey(name: 'deviceName')
  String? get deviceName;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;

  /// Create a copy of DeviceTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeviceTokenDtoCopyWith<DeviceTokenDto> get copyWith =>
      _$DeviceTokenDtoCopyWithImpl<DeviceTokenDto>(
          this as DeviceTokenDto, _$identity);

  /// Serializes this DeviceTokenDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceTokenDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceToken, platform,
      isActive, lastUsed, appVersion, deviceModel, deviceName, createdDate);

  @override
  String toString() {
    return 'DeviceTokenDto(id: $id, deviceToken: $deviceToken, platform: $platform, isActive: $isActive, lastUsed: $lastUsed, appVersion: $appVersion, deviceModel: $deviceModel, deviceName: $deviceName, createdDate: $createdDate)';
  }
}

/// @nodoc
abstract mixin class $DeviceTokenDtoCopyWith<$Res> {
  factory $DeviceTokenDtoCopyWith(
          DeviceTokenDto value, $Res Function(DeviceTokenDto) _then) =
      _$DeviceTokenDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'lastUsed') DateTime? lastUsed,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceName') String? deviceName,
      @JsonKey(name: 'createdDate') DateTime? createdDate});
}

/// @nodoc
class _$DeviceTokenDtoCopyWithImpl<$Res>
    implements $DeviceTokenDtoCopyWith<$Res> {
  _$DeviceTokenDtoCopyWithImpl(this._self, this._then);

  final DeviceTokenDto _self;
  final $Res Function(DeviceTokenDto) _then;

  /// Create a copy of DeviceTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? isActive = freezed,
    Object? lastUsed = freezed,
    Object? appVersion = freezed,
    Object? deviceModel = freezed,
    Object? deviceName = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _self.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUsed: freezed == lastUsed
          ? _self.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _self.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeviceTokenDto].
extension DeviceTokenDtoPatterns on DeviceTokenDto {
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
    TResult Function(_DeviceTokenDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto() when $default != null:
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
    TResult Function(_DeviceTokenDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto():
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
    TResult? Function(_DeviceTokenDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'isActive') bool? isActive,
            @JsonKey(name: 'lastUsed') DateTime? lastUsed,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName,
            @JsonKey(name: 'createdDate') DateTime? createdDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto() when $default != null:
        return $default(
            _that.id,
            _that.deviceToken,
            _that.platform,
            _that.isActive,
            _that.lastUsed,
            _that.appVersion,
            _that.deviceModel,
            _that.deviceName,
            _that.createdDate);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'isActive') bool? isActive,
            @JsonKey(name: 'lastUsed') DateTime? lastUsed,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName,
            @JsonKey(name: 'createdDate') DateTime? createdDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto():
        return $default(
            _that.id,
            _that.deviceToken,
            _that.platform,
            _that.isActive,
            _that.lastUsed,
            _that.appVersion,
            _that.deviceModel,
            _that.deviceName,
            _that.createdDate);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'isActive') bool? isActive,
            @JsonKey(name: 'lastUsed') DateTime? lastUsed,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName,
            @JsonKey(name: 'createdDate') DateTime? createdDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeviceTokenDto() when $default != null:
        return $default(
            _that.id,
            _that.deviceToken,
            _that.platform,
            _that.isActive,
            _that.lastUsed,
            _that.appVersion,
            _that.deviceModel,
            _that.deviceName,
            _that.createdDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DeviceTokenDto implements DeviceTokenDto {
  _DeviceTokenDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'deviceToken') this.deviceToken,
      @JsonKey(name: 'platform') this.platform,
      @JsonKey(name: 'isActive') this.isActive,
      @JsonKey(name: 'lastUsed') this.lastUsed,
      @JsonKey(name: 'appVersion') this.appVersion,
      @JsonKey(name: 'deviceModel') this.deviceModel,
      @JsonKey(name: 'deviceName') this.deviceName,
      @JsonKey(name: 'createdDate') this.createdDate});
  factory _DeviceTokenDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'deviceToken')
  final String? deviceToken;
  @override
  @JsonKey(name: 'platform')
  final String? platform;
  @override
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @override
  @JsonKey(name: 'lastUsed')
  final DateTime? lastUsed;
  @override
  @JsonKey(name: 'appVersion')
  final String? appVersion;
  @override
  @JsonKey(name: 'deviceModel')
  final String? deviceModel;
  @override
  @JsonKey(name: 'deviceName')
  final String? deviceName;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;

  /// Create a copy of DeviceTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeviceTokenDtoCopyWith<_DeviceTokenDto> get copyWith =>
      __$DeviceTokenDtoCopyWithImpl<_DeviceTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeviceTokenDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceTokenDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceToken, platform,
      isActive, lastUsed, appVersion, deviceModel, deviceName, createdDate);

  @override
  String toString() {
    return 'DeviceTokenDto(id: $id, deviceToken: $deviceToken, platform: $platform, isActive: $isActive, lastUsed: $lastUsed, appVersion: $appVersion, deviceModel: $deviceModel, deviceName: $deviceName, createdDate: $createdDate)';
  }
}

/// @nodoc
abstract mixin class _$DeviceTokenDtoCopyWith<$Res>
    implements $DeviceTokenDtoCopyWith<$Res> {
  factory _$DeviceTokenDtoCopyWith(
          _DeviceTokenDto value, $Res Function(_DeviceTokenDto) _then) =
      __$DeviceTokenDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'lastUsed') DateTime? lastUsed,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceName') String? deviceName,
      @JsonKey(name: 'createdDate') DateTime? createdDate});
}

/// @nodoc
class __$DeviceTokenDtoCopyWithImpl<$Res>
    implements _$DeviceTokenDtoCopyWith<$Res> {
  __$DeviceTokenDtoCopyWithImpl(this._self, this._then);

  final _DeviceTokenDto _self;
  final $Res Function(_DeviceTokenDto) _then;

  /// Create a copy of DeviceTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? isActive = freezed,
    Object? lastUsed = freezed,
    Object? appVersion = freezed,
    Object? deviceModel = freezed,
    Object? deviceName = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_DeviceTokenDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _self.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUsed: freezed == lastUsed
          ? _self.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _self.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$EditUserDto {
  @JsonKey(name: 'displayName')
  String get displayName;
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'isPrivate')
  bool get isPrivate;

  /// Create a copy of EditUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditUserDtoCopyWith<EditUserDto> get copyWith =>
      _$EditUserDtoCopyWithImpl<EditUserDto>(this as EditUserDto, _$identity);

  /// Serializes this EditUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditUserDto &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, username, description, isPrivate);

  @override
  String toString() {
    return 'EditUserDto(displayName: $displayName, username: $username, description: $description, isPrivate: $isPrivate)';
  }
}

/// @nodoc
abstract mixin class $EditUserDtoCopyWith<$Res> {
  factory $EditUserDtoCopyWith(
          EditUserDto value, $Res Function(EditUserDto) _then) =
      _$EditUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isPrivate') bool isPrivate});
}

/// @nodoc
class _$EditUserDtoCopyWithImpl<$Res> implements $EditUserDtoCopyWith<$Res> {
  _$EditUserDtoCopyWithImpl(this._self, this._then);

  final EditUserDto _self;
  final $Res Function(EditUserDto) _then;

  /// Create a copy of EditUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = null,
    Object? isPrivate = null,
  }) {
    return _then(_self.copyWith(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [EditUserDto].
extension EditUserDtoPatterns on EditUserDto {
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
    TResult Function(_EditUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditUserDto() when $default != null:
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
    TResult Function(_EditUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserDto():
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
    TResult? Function(_EditUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserDto() when $default != null:
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
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'isPrivate') bool isPrivate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditUserDto() when $default != null:
        return $default(_that.displayName, _that.username, _that.description,
            _that.isPrivate);
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
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'isPrivate') bool isPrivate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserDto():
        return $default(_that.displayName, _that.username, _that.description,
            _that.isPrivate);
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
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'isPrivate') bool isPrivate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserDto() when $default != null:
        return $default(_that.displayName, _that.username, _that.description,
            _that.isPrivate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EditUserDto implements EditUserDto {
  _EditUserDto(
      {@JsonKey(name: 'displayName') required this.displayName,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'isPrivate') this.isPrivate = false});
  factory _EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$EditUserDtoFromJson(json);

  @override
  @JsonKey(name: 'displayName')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'isPrivate')
  final bool isPrivate;

  /// Create a copy of EditUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditUserDtoCopyWith<_EditUserDto> get copyWith =>
      __$EditUserDtoCopyWithImpl<_EditUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditUserDto &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, username, description, isPrivate);

  @override
  String toString() {
    return 'EditUserDto(displayName: $displayName, username: $username, description: $description, isPrivate: $isPrivate)';
  }
}

/// @nodoc
abstract mixin class _$EditUserDtoCopyWith<$Res>
    implements $EditUserDtoCopyWith<$Res> {
  factory _$EditUserDtoCopyWith(
          _EditUserDto value, $Res Function(_EditUserDto) _then) =
      __$EditUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'isPrivate') bool isPrivate});
}

/// @nodoc
class __$EditUserDtoCopyWithImpl<$Res> implements _$EditUserDtoCopyWith<$Res> {
  __$EditUserDtoCopyWithImpl(this._self, this._then);

  final _EditUserDto _self;
  final $Res Function(_EditUserDto) _then;

  /// Create a copy of EditUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = null,
    Object? isPrivate = null,
  }) {
    return _then(_EditUserDto(
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$FeedMetricsDto {
  @JsonKey(name: 'followingCount')
  int get followingCount;
  @JsonKey(name: 'hotContentRatio')
  num get hotContentRatio;
  @JsonKey(name: 'followingContentRatio')
  num get followingContentRatio;
  @JsonKey(name: 'lastRefresh')
  DateTime get lastRefresh;

  /// Create a copy of FeedMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedMetricsDtoCopyWith<FeedMetricsDto> get copyWith =>
      _$FeedMetricsDtoCopyWithImpl<FeedMetricsDto>(
          this as FeedMetricsDto, _$identity);

  /// Serializes this FeedMetricsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedMetricsDto &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.hotContentRatio, hotContentRatio) ||
                other.hotContentRatio == hotContentRatio) &&
            (identical(other.followingContentRatio, followingContentRatio) ||
                other.followingContentRatio == followingContentRatio) &&
            (identical(other.lastRefresh, lastRefresh) ||
                other.lastRefresh == lastRefresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, followingCount, hotContentRatio,
      followingContentRatio, lastRefresh);

  @override
  String toString() {
    return 'FeedMetricsDto(followingCount: $followingCount, hotContentRatio: $hotContentRatio, followingContentRatio: $followingContentRatio, lastRefresh: $lastRefresh)';
  }
}

/// @nodoc
abstract mixin class $FeedMetricsDtoCopyWith<$Res> {
  factory $FeedMetricsDtoCopyWith(
          FeedMetricsDto value, $Res Function(FeedMetricsDto) _then) =
      _$FeedMetricsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'followingCount') int followingCount,
      @JsonKey(name: 'hotContentRatio') num hotContentRatio,
      @JsonKey(name: 'followingContentRatio') num followingContentRatio,
      @JsonKey(name: 'lastRefresh') DateTime lastRefresh});
}

/// @nodoc
class _$FeedMetricsDtoCopyWithImpl<$Res>
    implements $FeedMetricsDtoCopyWith<$Res> {
  _$FeedMetricsDtoCopyWithImpl(this._self, this._then);

  final FeedMetricsDto _self;
  final $Res Function(FeedMetricsDto) _then;

  /// Create a copy of FeedMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followingCount = null,
    Object? hotContentRatio = null,
    Object? followingContentRatio = null,
    Object? lastRefresh = null,
  }) {
    return _then(_self.copyWith(
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      hotContentRatio: null == hotContentRatio
          ? _self.hotContentRatio
          : hotContentRatio // ignore: cast_nullable_to_non_nullable
              as num,
      followingContentRatio: null == followingContentRatio
          ? _self.followingContentRatio
          : followingContentRatio // ignore: cast_nullable_to_non_nullable
              as num,
      lastRefresh: null == lastRefresh
          ? _self.lastRefresh
          : lastRefresh // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeedMetricsDto].
extension FeedMetricsDtoPatterns on FeedMetricsDto {
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
    TResult Function(_FeedMetricsDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto() when $default != null:
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
    TResult Function(_FeedMetricsDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto():
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
    TResult? Function(_FeedMetricsDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto() when $default != null:
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
            @JsonKey(name: 'followingCount') int followingCount,
            @JsonKey(name: 'hotContentRatio') num hotContentRatio,
            @JsonKey(name: 'followingContentRatio') num followingContentRatio,
            @JsonKey(name: 'lastRefresh') DateTime lastRefresh)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto() when $default != null:
        return $default(_that.followingCount, _that.hotContentRatio,
            _that.followingContentRatio, _that.lastRefresh);
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
            @JsonKey(name: 'followingCount') int followingCount,
            @JsonKey(name: 'hotContentRatio') num hotContentRatio,
            @JsonKey(name: 'followingContentRatio') num followingContentRatio,
            @JsonKey(name: 'lastRefresh') DateTime lastRefresh)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto():
        return $default(_that.followingCount, _that.hotContentRatio,
            _that.followingContentRatio, _that.lastRefresh);
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
            @JsonKey(name: 'followingCount') int followingCount,
            @JsonKey(name: 'hotContentRatio') num hotContentRatio,
            @JsonKey(name: 'followingContentRatio') num followingContentRatio,
            @JsonKey(name: 'lastRefresh') DateTime lastRefresh)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetricsDto() when $default != null:
        return $default(_that.followingCount, _that.hotContentRatio,
            _that.followingContentRatio, _that.lastRefresh);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FeedMetricsDto implements FeedMetricsDto {
  _FeedMetricsDto(
      {@JsonKey(name: 'followingCount') required this.followingCount,
      @JsonKey(name: 'hotContentRatio') required this.hotContentRatio,
      @JsonKey(name: 'followingContentRatio')
      required this.followingContentRatio,
      @JsonKey(name: 'lastRefresh') required this.lastRefresh});
  factory _FeedMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$FeedMetricsDtoFromJson(json);

  @override
  @JsonKey(name: 'followingCount')
  final int followingCount;
  @override
  @JsonKey(name: 'hotContentRatio')
  final num hotContentRatio;
  @override
  @JsonKey(name: 'followingContentRatio')
  final num followingContentRatio;
  @override
  @JsonKey(name: 'lastRefresh')
  final DateTime lastRefresh;

  /// Create a copy of FeedMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedMetricsDtoCopyWith<_FeedMetricsDto> get copyWith =>
      __$FeedMetricsDtoCopyWithImpl<_FeedMetricsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedMetricsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedMetricsDto &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.hotContentRatio, hotContentRatio) ||
                other.hotContentRatio == hotContentRatio) &&
            (identical(other.followingContentRatio, followingContentRatio) ||
                other.followingContentRatio == followingContentRatio) &&
            (identical(other.lastRefresh, lastRefresh) ||
                other.lastRefresh == lastRefresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, followingCount, hotContentRatio,
      followingContentRatio, lastRefresh);

  @override
  String toString() {
    return 'FeedMetricsDto(followingCount: $followingCount, hotContentRatio: $hotContentRatio, followingContentRatio: $followingContentRatio, lastRefresh: $lastRefresh)';
  }
}

/// @nodoc
abstract mixin class _$FeedMetricsDtoCopyWith<$Res>
    implements $FeedMetricsDtoCopyWith<$Res> {
  factory _$FeedMetricsDtoCopyWith(
          _FeedMetricsDto value, $Res Function(_FeedMetricsDto) _then) =
      __$FeedMetricsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'followingCount') int followingCount,
      @JsonKey(name: 'hotContentRatio') num hotContentRatio,
      @JsonKey(name: 'followingContentRatio') num followingContentRatio,
      @JsonKey(name: 'lastRefresh') DateTime lastRefresh});
}

/// @nodoc
class __$FeedMetricsDtoCopyWithImpl<$Res>
    implements _$FeedMetricsDtoCopyWith<$Res> {
  __$FeedMetricsDtoCopyWithImpl(this._self, this._then);

  final _FeedMetricsDto _self;
  final $Res Function(_FeedMetricsDto) _then;

  /// Create a copy of FeedMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? followingCount = null,
    Object? hotContentRatio = null,
    Object? followingContentRatio = null,
    Object? lastRefresh = null,
  }) {
    return _then(_FeedMetricsDto(
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      hotContentRatio: null == hotContentRatio
          ? _self.hotContentRatio
          : hotContentRatio // ignore: cast_nullable_to_non_nullable
              as num,
      followingContentRatio: null == followingContentRatio
          ? _self.followingContentRatio
          : followingContentRatio // ignore: cast_nullable_to_non_nullable
              as num,
      lastRefresh: null == lastRefresh
          ? _self.lastRefresh
          : lastRefresh // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$FollowingResultDto {
  @JsonKey(name: 'status')
  FollowingStatusEnumDto get status;
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of FollowingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowingResultDtoCopyWith<FollowingResultDto> get copyWith =>
      _$FollowingResultDtoCopyWithImpl<FollowingResultDto>(
          this as FollowingResultDto, _$identity);

  /// Serializes this FollowingResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowingResultDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'FollowingResultDto(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FollowingResultDtoCopyWith<$Res> {
  factory $FollowingResultDtoCopyWith(
          FollowingResultDto value, $Res Function(FollowingResultDto) _then) =
      _$FollowingResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') FollowingStatusEnumDto status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$FollowingResultDtoCopyWithImpl<$Res>
    implements $FollowingResultDtoCopyWith<$Res> {
  _$FollowingResultDtoCopyWithImpl(this._self, this._then);

  final FollowingResultDto _self;
  final $Res Function(FollowingResultDto) _then;

  /// Create a copy of FollowingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FollowingResultDto].
extension FollowingResultDtoPatterns on FollowingResultDto {
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
    TResult Function(_FollowingResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto() when $default != null:
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
    TResult Function(_FollowingResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto():
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
    TResult? Function(_FollowingResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'status') FollowingStatusEnumDto status,
            @JsonKey(name: 'message') String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto() when $default != null:
        return $default(_that.status, _that.message);
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
    TResult Function(@JsonKey(name: 'status') FollowingStatusEnumDto status,
            @JsonKey(name: 'message') String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto():
        return $default(_that.status, _that.message);
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
    TResult? Function(@JsonKey(name: 'status') FollowingStatusEnumDto status,
            @JsonKey(name: 'message') String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingResultDto() when $default != null:
        return $default(_that.status, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FollowingResultDto implements FollowingResultDto {
  _FollowingResultDto(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') this.message});
  factory _FollowingResultDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingResultDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final FollowingStatusEnumDto status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of FollowingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowingResultDtoCopyWith<_FollowingResultDto> get copyWith =>
      __$FollowingResultDtoCopyWithImpl<_FollowingResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FollowingResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingResultDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'FollowingResultDto(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FollowingResultDtoCopyWith<$Res>
    implements $FollowingResultDtoCopyWith<$Res> {
  factory _$FollowingResultDtoCopyWith(
          _FollowingResultDto value, $Res Function(_FollowingResultDto) _then) =
      __$FollowingResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') FollowingStatusEnumDto status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$FollowingResultDtoCopyWithImpl<$Res>
    implements _$FollowingResultDtoCopyWith<$Res> {
  __$FollowingResultDtoCopyWithImpl(this._self, this._then);

  final _FollowingResultDto _self;
  final $Res Function(_FollowingResultDto) _then;

  /// Create a copy of FollowingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_FollowingResultDto(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$FollowingStatusDto {
  @JsonKey(name: 'status')
  FollowingStatusEnumDto get status;

  /// Create a copy of FollowingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowingStatusDtoCopyWith<FollowingStatusDto> get copyWith =>
      _$FollowingStatusDtoCopyWithImpl<FollowingStatusDto>(
          this as FollowingStatusDto, _$identity);

  /// Serializes this FollowingStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowingStatusDto &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'FollowingStatusDto(status: $status)';
  }
}

/// @nodoc
abstract mixin class $FollowingStatusDtoCopyWith<$Res> {
  factory $FollowingStatusDtoCopyWith(
          FollowingStatusDto value, $Res Function(FollowingStatusDto) _then) =
      _$FollowingStatusDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'status') FollowingStatusEnumDto status});
}

/// @nodoc
class _$FollowingStatusDtoCopyWithImpl<$Res>
    implements $FollowingStatusDtoCopyWith<$Res> {
  _$FollowingStatusDtoCopyWithImpl(this._self, this._then);

  final FollowingStatusDto _self;
  final $Res Function(FollowingStatusDto) _then;

  /// Create a copy of FollowingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
    ));
  }
}

/// Adds pattern-matching-related methods to [FollowingStatusDto].
extension FollowingStatusDtoPatterns on FollowingStatusDto {
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
    TResult Function(_FollowingStatusDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto() when $default != null:
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
    TResult Function(_FollowingStatusDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto():
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
    TResult? Function(_FollowingStatusDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'status') FollowingStatusEnumDto status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto() when $default != null:
        return $default(_that.status);
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
    TResult Function(@JsonKey(name: 'status') FollowingStatusEnumDto status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto():
        return $default(_that.status);
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
    TResult? Function(@JsonKey(name: 'status') FollowingStatusEnumDto status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowingStatusDto() when $default != null:
        return $default(_that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FollowingStatusDto implements FollowingStatusDto {
  _FollowingStatusDto({@JsonKey(name: 'status') required this.status});
  factory _FollowingStatusDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingStatusDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final FollowingStatusEnumDto status;

  /// Create a copy of FollowingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowingStatusDtoCopyWith<_FollowingStatusDto> get copyWith =>
      __$FollowingStatusDtoCopyWithImpl<_FollowingStatusDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FollowingStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingStatusDto &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'FollowingStatusDto(status: $status)';
  }
}

/// @nodoc
abstract mixin class _$FollowingStatusDtoCopyWith<$Res>
    implements $FollowingStatusDtoCopyWith<$Res> {
  factory _$FollowingStatusDtoCopyWith(
          _FollowingStatusDto value, $Res Function(_FollowingStatusDto) _then) =
      __$FollowingStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') FollowingStatusEnumDto status});
}

/// @nodoc
class __$FollowingStatusDtoCopyWithImpl<$Res>
    implements _$FollowingStatusDtoCopyWith<$Res> {
  __$FollowingStatusDtoCopyWithImpl(this._self, this._then);

  final _FollowingStatusDto _self;
  final $Res Function(_FollowingStatusDto) _then;

  /// Create a copy of FollowingStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(_FollowingStatusDto(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
    ));
  }
}

/// @nodoc
mixin _$FollowRequestDto {
  @JsonKey(name: 'requesterId')
  String get requesterId;
  @JsonKey(name: 'requester')
  UserDetailDto get requester;
  @JsonKey(name: 'requestDate')
  DateTime get requestDate;

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowRequestDtoCopyWith<FollowRequestDto> get copyWith =>
      _$FollowRequestDtoCopyWithImpl<FollowRequestDto>(
          this as FollowRequestDto, _$identity);

  /// Serializes this FollowRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowRequestDto &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requesterId, requester, requestDate);

  @override
  String toString() {
    return 'FollowRequestDto(requesterId: $requesterId, requester: $requester, requestDate: $requestDate)';
  }
}

/// @nodoc
abstract mixin class $FollowRequestDtoCopyWith<$Res> {
  factory $FollowRequestDtoCopyWith(
          FollowRequestDto value, $Res Function(FollowRequestDto) _then) =
      _$FollowRequestDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'requesterId') String requesterId,
      @JsonKey(name: 'requester') UserDetailDto requester,
      @JsonKey(name: 'requestDate') DateTime requestDate});

  $UserDetailDtoCopyWith<$Res> get requester;
}

/// @nodoc
class _$FollowRequestDtoCopyWithImpl<$Res>
    implements $FollowRequestDtoCopyWith<$Res> {
  _$FollowRequestDtoCopyWithImpl(this._self, this._then);

  final FollowRequestDto _self;
  final $Res Function(FollowRequestDto) _then;

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? requester = null,
    Object? requestDate = null,
  }) {
    return _then(_self.copyWith(
      requesterId: null == requesterId
          ? _self.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      requester: null == requester
          ? _self.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as UserDetailDto,
      requestDate: null == requestDate
          ? _self.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res> get requester {
    return $UserDetailDtoCopyWith<$Res>(_self.requester, (value) {
      return _then(_self.copyWith(requester: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FollowRequestDto].
extension FollowRequestDtoPatterns on FollowRequestDto {
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
    TResult Function(_FollowRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto() when $default != null:
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
    TResult Function(_FollowRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto():
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
    TResult? Function(_FollowRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto() when $default != null:
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
            @JsonKey(name: 'requesterId') String requesterId,
            @JsonKey(name: 'requester') UserDetailDto requester,
            @JsonKey(name: 'requestDate') DateTime requestDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto() when $default != null:
        return $default(_that.requesterId, _that.requester, _that.requestDate);
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
            @JsonKey(name: 'requesterId') String requesterId,
            @JsonKey(name: 'requester') UserDetailDto requester,
            @JsonKey(name: 'requestDate') DateTime requestDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto():
        return $default(_that.requesterId, _that.requester, _that.requestDate);
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
            @JsonKey(name: 'requesterId') String requesterId,
            @JsonKey(name: 'requester') UserDetailDto requester,
            @JsonKey(name: 'requestDate') DateTime requestDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestDto() when $default != null:
        return $default(_that.requesterId, _that.requester, _that.requestDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FollowRequestDto implements FollowRequestDto {
  _FollowRequestDto(
      {@JsonKey(name: 'requesterId') required this.requesterId,
      @JsonKey(name: 'requester') required this.requester,
      @JsonKey(name: 'requestDate') required this.requestDate});
  factory _FollowRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'requesterId')
  final String requesterId;
  @override
  @JsonKey(name: 'requester')
  final UserDetailDto requester;
  @override
  @JsonKey(name: 'requestDate')
  final DateTime requestDate;

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowRequestDtoCopyWith<_FollowRequestDto> get copyWith =>
      __$FollowRequestDtoCopyWithImpl<_FollowRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FollowRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowRequestDto &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requesterId, requester, requestDate);

  @override
  String toString() {
    return 'FollowRequestDto(requesterId: $requesterId, requester: $requester, requestDate: $requestDate)';
  }
}

/// @nodoc
abstract mixin class _$FollowRequestDtoCopyWith<$Res>
    implements $FollowRequestDtoCopyWith<$Res> {
  factory _$FollowRequestDtoCopyWith(
          _FollowRequestDto value, $Res Function(_FollowRequestDto) _then) =
      __$FollowRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'requesterId') String requesterId,
      @JsonKey(name: 'requester') UserDetailDto requester,
      @JsonKey(name: 'requestDate') DateTime requestDate});

  @override
  $UserDetailDtoCopyWith<$Res> get requester;
}

/// @nodoc
class __$FollowRequestDtoCopyWithImpl<$Res>
    implements _$FollowRequestDtoCopyWith<$Res> {
  __$FollowRequestDtoCopyWithImpl(this._self, this._then);

  final _FollowRequestDto _self;
  final $Res Function(_FollowRequestDto) _then;

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requesterId = null,
    Object? requester = null,
    Object? requestDate = null,
  }) {
    return _then(_FollowRequestDto(
      requesterId: null == requesterId
          ? _self.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      requester: null == requester
          ? _self.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as UserDetailDto,
      requestDate: null == requestDate
          ? _self.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of FollowRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res> get requester {
    return $UserDetailDtoCopyWith<$Res>(_self.requester, (value) {
      return _then(_self.copyWith(requester: value));
    });
  }
}

/// @nodoc
mixin _$FollowRequestResultDto {
  @JsonKey(name: 'result')
  String get result;
  @JsonKey(name: 'newStatus')
  FollowingStatusEnumDto get newStatus;
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of FollowRequestResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowRequestResultDtoCopyWith<FollowRequestResultDto> get copyWith =>
      _$FollowRequestResultDtoCopyWithImpl<FollowRequestResultDto>(
          this as FollowRequestResultDto, _$identity);

  /// Serializes this FollowRequestResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowRequestResultDto &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, newStatus, message);

  @override
  String toString() {
    return 'FollowRequestResultDto(result: $result, newStatus: $newStatus, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FollowRequestResultDtoCopyWith<$Res> {
  factory $FollowRequestResultDtoCopyWith(FollowRequestResultDto value,
          $Res Function(FollowRequestResultDto) _then) =
      _$FollowRequestResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'newStatus') FollowingStatusEnumDto newStatus,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$FollowRequestResultDtoCopyWithImpl<$Res>
    implements $FollowRequestResultDtoCopyWith<$Res> {
  _$FollowRequestResultDtoCopyWithImpl(this._self, this._then);

  final FollowRequestResultDto _self;
  final $Res Function(FollowRequestResultDto) _then;

  /// Create a copy of FollowRequestResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? newStatus = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      newStatus: null == newStatus
          ? _self.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FollowRequestResultDto].
extension FollowRequestResultDtoPatterns on FollowRequestResultDto {
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
    TResult Function(_FollowRequestResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto() when $default != null:
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
    TResult Function(_FollowRequestResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto():
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
    TResult? Function(_FollowRequestResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto() when $default != null:
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
            @JsonKey(name: 'result') String result,
            @JsonKey(name: 'newStatus') FollowingStatusEnumDto newStatus,
            @JsonKey(name: 'message') String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto() when $default != null:
        return $default(_that.result, _that.newStatus, _that.message);
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
            @JsonKey(name: 'result') String result,
            @JsonKey(name: 'newStatus') FollowingStatusEnumDto newStatus,
            @JsonKey(name: 'message') String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto():
        return $default(_that.result, _that.newStatus, _that.message);
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
            @JsonKey(name: 'result') String result,
            @JsonKey(name: 'newStatus') FollowingStatusEnumDto newStatus,
            @JsonKey(name: 'message') String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FollowRequestResultDto() when $default != null:
        return $default(_that.result, _that.newStatus, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FollowRequestResultDto implements FollowRequestResultDto {
  _FollowRequestResultDto(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'newStatus') required this.newStatus,
      @JsonKey(name: 'message') this.message});
  factory _FollowRequestResultDto.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestResultDtoFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String result;
  @override
  @JsonKey(name: 'newStatus')
  final FollowingStatusEnumDto newStatus;
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of FollowRequestResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowRequestResultDtoCopyWith<_FollowRequestResultDto> get copyWith =>
      __$FollowRequestResultDtoCopyWithImpl<_FollowRequestResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FollowRequestResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowRequestResultDto &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, newStatus, message);

  @override
  String toString() {
    return 'FollowRequestResultDto(result: $result, newStatus: $newStatus, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FollowRequestResultDtoCopyWith<$Res>
    implements $FollowRequestResultDtoCopyWith<$Res> {
  factory _$FollowRequestResultDtoCopyWith(_FollowRequestResultDto value,
          $Res Function(_FollowRequestResultDto) _then) =
      __$FollowRequestResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String result,
      @JsonKey(name: 'newStatus') FollowingStatusEnumDto newStatus,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$FollowRequestResultDtoCopyWithImpl<$Res>
    implements _$FollowRequestResultDtoCopyWith<$Res> {
  __$FollowRequestResultDtoCopyWithImpl(this._self, this._then);

  final _FollowRequestResultDto _self;
  final $Res Function(_FollowRequestResultDto) _then;

  /// Create a copy of FollowRequestResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
    Object? newStatus = null,
    Object? message = freezed,
  }) {
    return _then(_FollowRequestResultDto(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      newStatus: null == newStatus
          ? _self.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$InteractionResultDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of InteractionResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InteractionResultDtoCopyWith<InteractionResultDto> get copyWith =>
      _$InteractionResultDtoCopyWithImpl<InteractionResultDto>(
          this as InteractionResultDto, _$identity);

  /// Serializes this InteractionResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InteractionResultDto &&
            (identical(other.isSteppedWith, isSteppedWith) ||
                other.isSteppedWith == isSteppedWith) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSteppedWith, isLiked, totalLikes);

  @override
  String toString() {
    return 'InteractionResultDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }
}

/// @nodoc
abstract mixin class $InteractionResultDtoCopyWith<$Res> {
  factory $InteractionResultDtoCopyWith(InteractionResultDto value,
          $Res Function(InteractionResultDto) _then) =
      _$InteractionResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$InteractionResultDtoCopyWithImpl<$Res>
    implements $InteractionResultDtoCopyWith<$Res> {
  _$InteractionResultDtoCopyWithImpl(this._self, this._then);

  final InteractionResultDto _self;
  final $Res Function(InteractionResultDto) _then;

  /// Create a copy of InteractionResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_self.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _self.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _self.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [InteractionResultDto].
extension InteractionResultDtoPatterns on InteractionResultDto {
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
    TResult Function(_InteractionResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto() when $default != null:
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
    TResult Function(_InteractionResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto():
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
    TResult? Function(_InteractionResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto() when $default != null:
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
            @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
            @JsonKey(name: 'isLiked') bool? isLiked,
            @JsonKey(name: 'totalLikes') int? totalLikes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto() when $default != null:
        return $default(_that.isSteppedWith, _that.isLiked, _that.totalLikes);
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
            @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
            @JsonKey(name: 'isLiked') bool? isLiked,
            @JsonKey(name: 'totalLikes') int? totalLikes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto():
        return $default(_that.isSteppedWith, _that.isLiked, _that.totalLikes);
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
            @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
            @JsonKey(name: 'isLiked') bool? isLiked,
            @JsonKey(name: 'totalLikes') int? totalLikes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InteractionResultDto() when $default != null:
        return $default(_that.isSteppedWith, _that.isLiked, _that.totalLikes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InteractionResultDto implements InteractionResultDto {
  _InteractionResultDto(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});
  factory _InteractionResultDto.fromJson(Map<String, dynamic> json) =>
      _$InteractionResultDtoFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  /// Create a copy of InteractionResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InteractionResultDtoCopyWith<_InteractionResultDto> get copyWith =>
      __$InteractionResultDtoCopyWithImpl<_InteractionResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InteractionResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InteractionResultDto &&
            (identical(other.isSteppedWith, isSteppedWith) ||
                other.isSteppedWith == isSteppedWith) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSteppedWith, isLiked, totalLikes);

  @override
  String toString() {
    return 'InteractionResultDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }
}

/// @nodoc
abstract mixin class _$InteractionResultDtoCopyWith<$Res>
    implements $InteractionResultDtoCopyWith<$Res> {
  factory _$InteractionResultDtoCopyWith(_InteractionResultDto value,
          $Res Function(_InteractionResultDto) _then) =
      __$InteractionResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$InteractionResultDtoCopyWithImpl<$Res>
    implements _$InteractionResultDtoCopyWith<$Res> {
  __$InteractionResultDtoCopyWithImpl(this._self, this._then);

  final _InteractionResultDto _self;
  final $Res Function(_InteractionResultDto) _then;

  /// Create a copy of InteractionResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_InteractionResultDto(
      isSteppedWith: freezed == isSteppedWith
          ? _self.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _self.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$JourneyCreatingDto {
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'firstStepContent')
  String get firstStepContent;

  /// Create a copy of JourneyCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JourneyCreatingDtoCopyWith<JourneyCreatingDto> get copyWith =>
      _$JourneyCreatingDtoCopyWithImpl<JourneyCreatingDto>(
          this as JourneyCreatingDto, _$identity);

  /// Serializes this JourneyCreatingDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JourneyCreatingDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.firstStepContent, firstStepContent) ||
                other.firstStepContent == firstStepContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, firstStepContent);

  @override
  String toString() {
    return 'JourneyCreatingDto(title: $title, description: $description, firstStepContent: $firstStepContent)';
  }
}

/// @nodoc
abstract mixin class $JourneyCreatingDtoCopyWith<$Res> {
  factory $JourneyCreatingDtoCopyWith(
          JourneyCreatingDto value, $Res Function(JourneyCreatingDto) _then) =
      _$JourneyCreatingDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class _$JourneyCreatingDtoCopyWithImpl<$Res>
    implements $JourneyCreatingDtoCopyWith<$Res> {
  _$JourneyCreatingDtoCopyWithImpl(this._self, this._then);

  final JourneyCreatingDto _self;
  final $Res Function(JourneyCreatingDto) _then;

  /// Create a copy of JourneyCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _self.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [JourneyCreatingDto].
extension JourneyCreatingDtoPatterns on JourneyCreatingDto {
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
    TResult Function(_JourneyCreatingDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto() when $default != null:
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
    TResult Function(_JourneyCreatingDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto():
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
    TResult? Function(_JourneyCreatingDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto() when $default != null:
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
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'firstStepContent') String firstStepContent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto() when $default != null:
        return $default(_that.title, _that.description, _that.firstStepContent);
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
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'firstStepContent') String firstStepContent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto():
        return $default(_that.title, _that.description, _that.firstStepContent);
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
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'firstStepContent') String firstStepContent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyCreatingDto() when $default != null:
        return $default(_that.title, _that.description, _that.firstStepContent);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JourneyCreatingDto implements JourneyCreatingDto {
  _JourneyCreatingDto(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'firstStepContent') required this.firstStepContent});
  factory _JourneyCreatingDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyCreatingDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'firstStepContent')
  final String firstStepContent;

  /// Create a copy of JourneyCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JourneyCreatingDtoCopyWith<_JourneyCreatingDto> get copyWith =>
      __$JourneyCreatingDtoCopyWithImpl<_JourneyCreatingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyCreatingDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyCreatingDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.firstStepContent, firstStepContent) ||
                other.firstStepContent == firstStepContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, firstStepContent);

  @override
  String toString() {
    return 'JourneyCreatingDto(title: $title, description: $description, firstStepContent: $firstStepContent)';
  }
}

/// @nodoc
abstract mixin class _$JourneyCreatingDtoCopyWith<$Res>
    implements $JourneyCreatingDtoCopyWith<$Res> {
  factory _$JourneyCreatingDtoCopyWith(
          _JourneyCreatingDto value, $Res Function(_JourneyCreatingDto) _then) =
      __$JourneyCreatingDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class __$JourneyCreatingDtoCopyWithImpl<$Res>
    implements _$JourneyCreatingDtoCopyWith<$Res> {
  __$JourneyCreatingDtoCopyWithImpl(this._self, this._then);

  final _JourneyCreatingDto _self;
  final $Res Function(_JourneyCreatingDto) _then;

  /// Create a copy of JourneyCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_JourneyCreatingDto(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _self.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$JourneyDayCalendarDto {
  @JsonKey(name: 'lastStep')
  StepDto get lastStep;
  @JsonKey(name: 'totalSteps')
  int get totalSteps;
  @JsonKey(name: 'date')
  DateTime get date;

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JourneyDayCalendarDtoCopyWith<JourneyDayCalendarDto> get copyWith =>
      _$JourneyDayCalendarDtoCopyWithImpl<JourneyDayCalendarDto>(
          this as JourneyDayCalendarDto, _$identity);

  /// Serializes this JourneyDayCalendarDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JourneyDayCalendarDto &&
            (identical(other.lastStep, lastStep) ||
                other.lastStep == lastStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastStep, totalSteps, date);

  @override
  String toString() {
    return 'JourneyDayCalendarDto(lastStep: $lastStep, totalSteps: $totalSteps, date: $date)';
  }
}

/// @nodoc
abstract mixin class $JourneyDayCalendarDtoCopyWith<$Res> {
  factory $JourneyDayCalendarDtoCopyWith(JourneyDayCalendarDto value,
          $Res Function(JourneyDayCalendarDto) _then) =
      _$JourneyDayCalendarDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'lastStep') StepDto lastStep,
      @JsonKey(name: 'totalSteps') int totalSteps,
      @JsonKey(name: 'date') DateTime date});

  $StepDtoCopyWith<$Res> get lastStep;
}

/// @nodoc
class _$JourneyDayCalendarDtoCopyWithImpl<$Res>
    implements $JourneyDayCalendarDtoCopyWith<$Res> {
  _$JourneyDayCalendarDtoCopyWithImpl(this._self, this._then);

  final JourneyDayCalendarDto _self;
  final $Res Function(JourneyDayCalendarDto) _then;

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastStep = null,
    Object? totalSteps = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      lastStep: null == lastStep
          ? _self.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as StepDto,
      totalSteps: null == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepDtoCopyWith<$Res> get lastStep {
    return $StepDtoCopyWith<$Res>(_self.lastStep, (value) {
      return _then(_self.copyWith(lastStep: value));
    });
  }
}

/// Adds pattern-matching-related methods to [JourneyDayCalendarDto].
extension JourneyDayCalendarDtoPatterns on JourneyDayCalendarDto {
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
    TResult Function(_JourneyDayCalendarDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto() when $default != null:
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
    TResult Function(_JourneyDayCalendarDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto():
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
    TResult? Function(_JourneyDayCalendarDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto() when $default != null:
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
            @JsonKey(name: 'lastStep') StepDto lastStep,
            @JsonKey(name: 'totalSteps') int totalSteps,
            @JsonKey(name: 'date') DateTime date)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto() when $default != null:
        return $default(_that.lastStep, _that.totalSteps, _that.date);
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
            @JsonKey(name: 'lastStep') StepDto lastStep,
            @JsonKey(name: 'totalSteps') int totalSteps,
            @JsonKey(name: 'date') DateTime date)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto():
        return $default(_that.lastStep, _that.totalSteps, _that.date);
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
            @JsonKey(name: 'lastStep') StepDto lastStep,
            @JsonKey(name: 'totalSteps') int totalSteps,
            @JsonKey(name: 'date') DateTime date)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDayCalendarDto() when $default != null:
        return $default(_that.lastStep, _that.totalSteps, _that.date);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JourneyDayCalendarDto implements JourneyDayCalendarDto {
  _JourneyDayCalendarDto(
      {@JsonKey(name: 'lastStep') required this.lastStep,
      @JsonKey(name: 'totalSteps') this.totalSteps = 0,
      @JsonKey(name: 'date') required this.date});
  factory _JourneyDayCalendarDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyDayCalendarDtoFromJson(json);

  @override
  @JsonKey(name: 'lastStep')
  final StepDto lastStep;
  @override
  @JsonKey(name: 'totalSteps')
  final int totalSteps;
  @override
  @JsonKey(name: 'date')
  final DateTime date;

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JourneyDayCalendarDtoCopyWith<_JourneyDayCalendarDto> get copyWith =>
      __$JourneyDayCalendarDtoCopyWithImpl<_JourneyDayCalendarDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyDayCalendarDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyDayCalendarDto &&
            (identical(other.lastStep, lastStep) ||
                other.lastStep == lastStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastStep, totalSteps, date);

  @override
  String toString() {
    return 'JourneyDayCalendarDto(lastStep: $lastStep, totalSteps: $totalSteps, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$JourneyDayCalendarDtoCopyWith<$Res>
    implements $JourneyDayCalendarDtoCopyWith<$Res> {
  factory _$JourneyDayCalendarDtoCopyWith(_JourneyDayCalendarDto value,
          $Res Function(_JourneyDayCalendarDto) _then) =
      __$JourneyDayCalendarDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lastStep') StepDto lastStep,
      @JsonKey(name: 'totalSteps') int totalSteps,
      @JsonKey(name: 'date') DateTime date});

  @override
  $StepDtoCopyWith<$Res> get lastStep;
}

/// @nodoc
class __$JourneyDayCalendarDtoCopyWithImpl<$Res>
    implements _$JourneyDayCalendarDtoCopyWith<$Res> {
  __$JourneyDayCalendarDtoCopyWithImpl(this._self, this._then);

  final _JourneyDayCalendarDto _self;
  final $Res Function(_JourneyDayCalendarDto) _then;

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lastStep = null,
    Object? totalSteps = null,
    Object? date = null,
  }) {
    return _then(_JourneyDayCalendarDto(
      lastStep: null == lastStep
          ? _self.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as StepDto,
      totalSteps: null == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of JourneyDayCalendarDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepDtoCopyWith<$Res> get lastStep {
    return $StepDtoCopyWith<$Res>(_self.lastStep, (value) {
      return _then(_self.copyWith(lastStep: value));
    });
  }
}

/// @nodoc
mixin _$JourneyDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime get lastUpdated;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @JsonKey(name: 'userId')
  String get userId;
  @JsonKey(name: 'firstStepId')
  String? get firstStepId;
  @JsonKey(name: 'finalStepId')
  String? get finalStepId;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @JsonKey(name: 'isUnavailable')
  bool get isUnavailable;
  @JsonKey(name: 'unavailableReason')
  String get unavailableReason;

  /// Create a copy of JourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<JourneyDto> get copyWith =>
      _$JourneyDtoCopyWithImpl<JourneyDto>(this as JourneyDto, _$identity);

  /// Serializes this JourneyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JourneyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstStepId, firstStepId) ||
                other.firstStepId == firstStepId) &&
            (identical(other.finalStepId, finalStepId) ||
                other.finalStepId == finalStepId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      createdDate,
      lastUpdated,
      status,
      completedDate,
      userId,
      firstStepId,
      finalStepId,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'JourneyDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class $JourneyDtoCopyWith<$Res> {
  factory $JourneyDtoCopyWith(
          JourneyDto value, $Res Function(JourneyDto) _then) =
      _$JourneyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'firstStepId') String? firstStepId,
      @JsonKey(name: 'finalStepId') String? finalStepId,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});
}

/// @nodoc
class _$JourneyDtoCopyWithImpl<$Res> implements $JourneyDtoCopyWith<$Res> {
  _$JourneyDtoCopyWithImpl(this._self, this._then);

  final JourneyDto _self;
  final $Res Function(JourneyDto) _then;

  /// Create a copy of JourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? status = null,
    Object? completedDate = freezed,
    Object? userId = null,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedDate: freezed == completedDate
          ? _self.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstStepId: freezed == firstStepId
          ? _self.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as String?,
      finalStepId: freezed == finalStepId
          ? _self.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [JourneyDto].
extension JourneyDtoPatterns on JourneyDto {
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
    TResult Function(_JourneyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyDto() when $default != null:
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
    TResult Function(_JourneyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDto():
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
    TResult? Function(_JourneyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDto() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'completedDate') DateTime? completedDate,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'firstStepId') String? firstStepId,
            @JsonKey(name: 'finalStepId') String? finalStepId,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyDto() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.completedDate,
            _that.userId,
            _that.firstStepId,
            _that.finalStepId,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'completedDate') DateTime? completedDate,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'firstStepId') String? firstStepId,
            @JsonKey(name: 'finalStepId') String? finalStepId,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDto():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.completedDate,
            _that.userId,
            _that.firstStepId,
            _that.finalStepId,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'status') String status,
            @JsonKey(name: 'completedDate') DateTime? completedDate,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'firstStepId') String? firstStepId,
            @JsonKey(name: 'finalStepId') String? finalStepId,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyDto() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.completedDate,
            _that.userId,
            _that.firstStepId,
            _that.finalStepId,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JourneyDto implements JourneyDto {
  _JourneyDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'lastUpdated') required this.lastUpdated,
      @JsonKey(name: 'status') this.status = 'Open',
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId = '',
      @JsonKey(name: 'firstStepId') this.firstStepId,
      @JsonKey(name: 'finalStepId') this.finalStepId,
      @JsonKey(name: 'isDeleted') this.isDeleted = false,
      @JsonKey(name: 'isUnavailable') this.isUnavailable = false,
      @JsonKey(name: 'unavailableReason') this.unavailableReason = ''});
  factory _JourneyDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'firstStepId')
  final String? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  final String? finalStepId;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'isUnavailable')
  final bool isUnavailable;
  @override
  @JsonKey(name: 'unavailableReason')
  final String unavailableReason;

  /// Create a copy of JourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JourneyDtoCopyWith<_JourneyDto> get copyWith =>
      __$JourneyDtoCopyWithImpl<_JourneyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstStepId, firstStepId) ||
                other.firstStepId == firstStepId) &&
            (identical(other.finalStepId, finalStepId) ||
                other.finalStepId == finalStepId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      createdDate,
      lastUpdated,
      status,
      completedDate,
      userId,
      firstStepId,
      finalStepId,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'JourneyDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class _$JourneyDtoCopyWith<$Res>
    implements $JourneyDtoCopyWith<$Res> {
  factory _$JourneyDtoCopyWith(
          _JourneyDto value, $Res Function(_JourneyDto) _then) =
      __$JourneyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'firstStepId') String? firstStepId,
      @JsonKey(name: 'finalStepId') String? finalStepId,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});
}

/// @nodoc
class __$JourneyDtoCopyWithImpl<$Res> implements _$JourneyDtoCopyWith<$Res> {
  __$JourneyDtoCopyWithImpl(this._self, this._then);

  final _JourneyDto _self;
  final $Res Function(_JourneyDto) _then;

  /// Create a copy of JourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? status = null,
    Object? completedDate = freezed,
    Object? userId = null,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_JourneyDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completedDate: freezed == completedDate
          ? _self.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstStepId: freezed == firstStepId
          ? _self.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as String?,
      finalStepId: freezed == finalStepId
          ? _self.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$JourneyInDetailDto {
  @JsonKey(name: 'journey')
  JourneyDto get journey;
  @JsonKey(name: 'stepsCount')
  int get stepsCount;
  @JsonKey(name: 'lastStepDate')
  DateTime get lastStepDate;
  @JsonKey(name: 'stepperCount')
  int? get stepperCount;
  @JsonKey(name: 'latestSteppers')
  List<UserDto>? get latestSteppers;
  @JsonKey(name: 'starterCount')
  int? get starterCount;
  @JsonKey(name: 'latestStarters')
  List<UserDto>? get latestStarters;
  @JsonKey(name: 'companionCount')
  int? get companionCount;
  @JsonKey(name: 'latestCompanions')
  List<UserDto>? get latestCompanions;
  @JsonKey(name: 'celebratorCount')
  int? get celebratorCount;
  @JsonKey(name: 'latestCelebrators')
  List<UserDto>? get latestCelebrators;
  @JsonKey(name: 'companionProgress')
  num get companionProgress;
  @JsonKey(name: 'companionProgressMessage')
  String? get companionProgressMessage;

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JourneyInDetailDtoCopyWith<JourneyInDetailDto> get copyWith =>
      _$JourneyInDetailDtoCopyWithImpl<JourneyInDetailDto>(
          this as JourneyInDetailDto, _$identity);

  /// Serializes this JourneyInDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JourneyInDetailDto &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.stepsCount, stepsCount) ||
                other.stepsCount == stepsCount) &&
            (identical(other.lastStepDate, lastStepDate) ||
                other.lastStepDate == lastStepDate) &&
            (identical(other.stepperCount, stepperCount) ||
                other.stepperCount == stepperCount) &&
            const DeepCollectionEquality()
                .equals(other.latestSteppers, latestSteppers) &&
            (identical(other.starterCount, starterCount) ||
                other.starterCount == starterCount) &&
            const DeepCollectionEquality()
                .equals(other.latestStarters, latestStarters) &&
            (identical(other.companionCount, companionCount) ||
                other.companionCount == companionCount) &&
            const DeepCollectionEquality()
                .equals(other.latestCompanions, latestCompanions) &&
            (identical(other.celebratorCount, celebratorCount) ||
                other.celebratorCount == celebratorCount) &&
            const DeepCollectionEquality()
                .equals(other.latestCelebrators, latestCelebrators) &&
            (identical(other.companionProgress, companionProgress) ||
                other.companionProgress == companionProgress) &&
            (identical(
                    other.companionProgressMessage, companionProgressMessage) ||
                other.companionProgressMessage == companionProgressMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      journey,
      stepsCount,
      lastStepDate,
      stepperCount,
      const DeepCollectionEquality().hash(latestSteppers),
      starterCount,
      const DeepCollectionEquality().hash(latestStarters),
      companionCount,
      const DeepCollectionEquality().hash(latestCompanions),
      celebratorCount,
      const DeepCollectionEquality().hash(latestCelebrators),
      companionProgress,
      companionProgressMessage);

  @override
  String toString() {
    return 'JourneyInDetailDto(journey: $journey, stepsCount: $stepsCount, lastStepDate: $lastStepDate, stepperCount: $stepperCount, latestSteppers: $latestSteppers, starterCount: $starterCount, latestStarters: $latestStarters, companionCount: $companionCount, latestCompanions: $latestCompanions, celebratorCount: $celebratorCount, latestCelebrators: $latestCelebrators, companionProgress: $companionProgress, companionProgressMessage: $companionProgressMessage)';
  }
}

/// @nodoc
abstract mixin class $JourneyInDetailDtoCopyWith<$Res> {
  factory $JourneyInDetailDtoCopyWith(
          JourneyInDetailDto value, $Res Function(JourneyInDetailDto) _then) =
      _$JourneyInDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators') List<UserDto>? latestCelebrators,
      @JsonKey(name: 'companionProgress') num companionProgress,
      @JsonKey(name: 'companionProgressMessage')
      String? companionProgressMessage});

  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class _$JourneyInDetailDtoCopyWithImpl<$Res>
    implements $JourneyInDetailDtoCopyWith<$Res> {
  _$JourneyInDetailDtoCopyWithImpl(this._self, this._then);

  final JourneyInDetailDto _self;
  final $Res Function(JourneyInDetailDto) _then;

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journey = null,
    Object? stepsCount = null,
    Object? lastStepDate = null,
    Object? stepperCount = freezed,
    Object? latestSteppers = freezed,
    Object? starterCount = freezed,
    Object? latestStarters = freezed,
    Object? companionCount = freezed,
    Object? latestCompanions = freezed,
    Object? celebratorCount = freezed,
    Object? latestCelebrators = freezed,
    Object? companionProgress = null,
    Object? companionProgressMessage = freezed,
  }) {
    return _then(_self.copyWith(
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      stepsCount: null == stepsCount
          ? _self.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _self.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _self.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _self.latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      starterCount: freezed == starterCount
          ? _self.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _self.latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      companionCount: freezed == companionCount
          ? _self.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _self.latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      celebratorCount: freezed == celebratorCount
          ? _self.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _self.latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      companionProgress: null == companionProgress
          ? _self.companionProgress
          : companionProgress // ignore: cast_nullable_to_non_nullable
              as num,
      companionProgressMessage: freezed == companionProgressMessage
          ? _self.companionProgressMessage
          : companionProgressMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// Adds pattern-matching-related methods to [JourneyInDetailDto].
extension JourneyInDetailDtoPatterns on JourneyInDetailDto {
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
    TResult Function(_JourneyInDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto() when $default != null:
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
    TResult Function(_JourneyInDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto():
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
    TResult? Function(_JourneyInDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto() when $default != null:
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
            @JsonKey(name: 'stepperCount') int? stepperCount,
            @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
            @JsonKey(name: 'starterCount') int? starterCount,
            @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
            @JsonKey(name: 'companionCount') int? companionCount,
            @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
            @JsonKey(name: 'celebratorCount') int? celebratorCount,
            @JsonKey(name: 'latestCelebrators')
            List<UserDto>? latestCelebrators,
            @JsonKey(name: 'companionProgress') num companionProgress,
            @JsonKey(name: 'companionProgressMessage')
            String? companionProgressMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto() when $default != null:
        return $default(
            _that.journey,
            _that.stepsCount,
            _that.lastStepDate,
            _that.stepperCount,
            _that.latestSteppers,
            _that.starterCount,
            _that.latestStarters,
            _that.companionCount,
            _that.latestCompanions,
            _that.celebratorCount,
            _that.latestCelebrators,
            _that.companionProgress,
            _that.companionProgressMessage);
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
            @JsonKey(name: 'stepperCount') int? stepperCount,
            @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
            @JsonKey(name: 'starterCount') int? starterCount,
            @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
            @JsonKey(name: 'companionCount') int? companionCount,
            @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
            @JsonKey(name: 'celebratorCount') int? celebratorCount,
            @JsonKey(name: 'latestCelebrators')
            List<UserDto>? latestCelebrators,
            @JsonKey(name: 'companionProgress') num companionProgress,
            @JsonKey(name: 'companionProgressMessage')
            String? companionProgressMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto():
        return $default(
            _that.journey,
            _that.stepsCount,
            _that.lastStepDate,
            _that.stepperCount,
            _that.latestSteppers,
            _that.starterCount,
            _that.latestStarters,
            _that.companionCount,
            _that.latestCompanions,
            _that.celebratorCount,
            _that.latestCelebrators,
            _that.companionProgress,
            _that.companionProgressMessage);
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
            @JsonKey(name: 'stepperCount') int? stepperCount,
            @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
            @JsonKey(name: 'starterCount') int? starterCount,
            @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
            @JsonKey(name: 'companionCount') int? companionCount,
            @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
            @JsonKey(name: 'celebratorCount') int? celebratorCount,
            @JsonKey(name: 'latestCelebrators')
            List<UserDto>? latestCelebrators,
            @JsonKey(name: 'companionProgress') num companionProgress,
            @JsonKey(name: 'companionProgressMessage')
            String? companionProgressMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInDetailDto() when $default != null:
        return $default(
            _that.journey,
            _that.stepsCount,
            _that.lastStepDate,
            _that.stepperCount,
            _that.latestSteppers,
            _that.starterCount,
            _that.latestStarters,
            _that.companionCount,
            _that.latestCompanions,
            _that.celebratorCount,
            _that.latestCelebrators,
            _that.companionProgress,
            _that.companionProgressMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JourneyInDetailDto implements JourneyInDetailDto {
  _JourneyInDetailDto(
      {@JsonKey(name: 'journey') required this.journey,
      @JsonKey(name: 'stepsCount') required this.stepsCount,
      @JsonKey(name: 'lastStepDate') required this.lastStepDate,
      @JsonKey(name: 'stepperCount') this.stepperCount,
      @JsonKey(name: 'latestSteppers') final List<UserDto>? latestSteppers,
      @JsonKey(name: 'starterCount') this.starterCount,
      @JsonKey(name: 'latestStarters') final List<UserDto>? latestStarters,
      @JsonKey(name: 'companionCount') this.companionCount,
      @JsonKey(name: 'latestCompanions') final List<UserDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') this.celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      final List<UserDto>? latestCelebrators,
      @JsonKey(name: 'companionProgress') this.companionProgress = 0,
      @JsonKey(name: 'companionProgressMessage') this.companionProgressMessage})
      : _latestSteppers = latestSteppers,
        _latestStarters = latestStarters,
        _latestCompanions = latestCompanions,
        _latestCelebrators = latestCelebrators;
  factory _JourneyInDetailDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyInDetailDtoFromJson(json);

  @override
  @JsonKey(name: 'journey')
  final JourneyDto journey;
  @override
  @JsonKey(name: 'stepsCount')
  final int stepsCount;
  @override
  @JsonKey(name: 'lastStepDate')
  final DateTime lastStepDate;
  @override
  @JsonKey(name: 'stepperCount')
  final int? stepperCount;
  final List<UserDto>? _latestSteppers;
  @override
  @JsonKey(name: 'latestSteppers')
  List<UserDto>? get latestSteppers {
    final value = _latestSteppers;
    if (value == null) return null;
    if (_latestSteppers is EqualUnmodifiableListView) return _latestSteppers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'starterCount')
  final int? starterCount;
  final List<UserDto>? _latestStarters;
  @override
  @JsonKey(name: 'latestStarters')
  List<UserDto>? get latestStarters {
    final value = _latestStarters;
    if (value == null) return null;
    if (_latestStarters is EqualUnmodifiableListView) return _latestStarters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'companionCount')
  final int? companionCount;
  final List<UserDto>? _latestCompanions;
  @override
  @JsonKey(name: 'latestCompanions')
  List<UserDto>? get latestCompanions {
    final value = _latestCompanions;
    if (value == null) return null;
    if (_latestCompanions is EqualUnmodifiableListView)
      return _latestCompanions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'celebratorCount')
  final int? celebratorCount;
  final List<UserDto>? _latestCelebrators;
  @override
  @JsonKey(name: 'latestCelebrators')
  List<UserDto>? get latestCelebrators {
    final value = _latestCelebrators;
    if (value == null) return null;
    if (_latestCelebrators is EqualUnmodifiableListView)
      return _latestCelebrators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'companionProgress')
  final num companionProgress;
  @override
  @JsonKey(name: 'companionProgressMessage')
  final String? companionProgressMessage;

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JourneyInDetailDtoCopyWith<_JourneyInDetailDto> get copyWith =>
      __$JourneyInDetailDtoCopyWithImpl<_JourneyInDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyInDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyInDetailDto &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.stepsCount, stepsCount) ||
                other.stepsCount == stepsCount) &&
            (identical(other.lastStepDate, lastStepDate) ||
                other.lastStepDate == lastStepDate) &&
            (identical(other.stepperCount, stepperCount) ||
                other.stepperCount == stepperCount) &&
            const DeepCollectionEquality()
                .equals(other._latestSteppers, _latestSteppers) &&
            (identical(other.starterCount, starterCount) ||
                other.starterCount == starterCount) &&
            const DeepCollectionEquality()
                .equals(other._latestStarters, _latestStarters) &&
            (identical(other.companionCount, companionCount) ||
                other.companionCount == companionCount) &&
            const DeepCollectionEquality()
                .equals(other._latestCompanions, _latestCompanions) &&
            (identical(other.celebratorCount, celebratorCount) ||
                other.celebratorCount == celebratorCount) &&
            const DeepCollectionEquality()
                .equals(other._latestCelebrators, _latestCelebrators) &&
            (identical(other.companionProgress, companionProgress) ||
                other.companionProgress == companionProgress) &&
            (identical(
                    other.companionProgressMessage, companionProgressMessage) ||
                other.companionProgressMessage == companionProgressMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      journey,
      stepsCount,
      lastStepDate,
      stepperCount,
      const DeepCollectionEquality().hash(_latestSteppers),
      starterCount,
      const DeepCollectionEquality().hash(_latestStarters),
      companionCount,
      const DeepCollectionEquality().hash(_latestCompanions),
      celebratorCount,
      const DeepCollectionEquality().hash(_latestCelebrators),
      companionProgress,
      companionProgressMessage);

  @override
  String toString() {
    return 'JourneyInDetailDto(journey: $journey, stepsCount: $stepsCount, lastStepDate: $lastStepDate, stepperCount: $stepperCount, latestSteppers: $latestSteppers, starterCount: $starterCount, latestStarters: $latestStarters, companionCount: $companionCount, latestCompanions: $latestCompanions, celebratorCount: $celebratorCount, latestCelebrators: $latestCelebrators, companionProgress: $companionProgress, companionProgressMessage: $companionProgressMessage)';
  }
}

/// @nodoc
abstract mixin class _$JourneyInDetailDtoCopyWith<$Res>
    implements $JourneyInDetailDtoCopyWith<$Res> {
  factory _$JourneyInDetailDtoCopyWith(
          _JourneyInDetailDto value, $Res Function(_JourneyInDetailDto) _then) =
      __$JourneyInDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators') List<UserDto>? latestCelebrators,
      @JsonKey(name: 'companionProgress') num companionProgress,
      @JsonKey(name: 'companionProgressMessage')
      String? companionProgressMessage});

  @override
  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class __$JourneyInDetailDtoCopyWithImpl<$Res>
    implements _$JourneyInDetailDtoCopyWith<$Res> {
  __$JourneyInDetailDtoCopyWithImpl(this._self, this._then);

  final _JourneyInDetailDto _self;
  final $Res Function(_JourneyInDetailDto) _then;

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? journey = null,
    Object? stepsCount = null,
    Object? lastStepDate = null,
    Object? stepperCount = freezed,
    Object? latestSteppers = freezed,
    Object? starterCount = freezed,
    Object? latestStarters = freezed,
    Object? companionCount = freezed,
    Object? latestCompanions = freezed,
    Object? celebratorCount = freezed,
    Object? latestCelebrators = freezed,
    Object? companionProgress = null,
    Object? companionProgressMessage = freezed,
  }) {
    return _then(_JourneyInDetailDto(
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      stepsCount: null == stepsCount
          ? _self.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _self.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _self.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _self._latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      starterCount: freezed == starterCount
          ? _self.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _self._latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      companionCount: freezed == companionCount
          ? _self.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _self._latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      celebratorCount: freezed == celebratorCount
          ? _self.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _self._latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      companionProgress: null == companionProgress
          ? _self.companionProgress
          : companionProgress // ignore: cast_nullable_to_non_nullable
              as num,
      companionProgressMessage: freezed == companionProgressMessage
          ? _self.companionProgressMessage
          : companionProgressMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of JourneyInDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// @nodoc
mixin _$JourneyInProfileDto {
  @JsonKey(name: 'journey')
  JourneyDto get journey;
  @JsonKey(name: 'stepsCount')
  int get stepsCount;
  @JsonKey(name: 'thumbnailSteps')
  List<StepMediaDto> get thumbnailSteps;

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JourneyInProfileDtoCopyWith<JourneyInProfileDto> get copyWith =>
      _$JourneyInProfileDtoCopyWithImpl<JourneyInProfileDto>(
          this as JourneyInProfileDto, _$identity);

  /// Serializes this JourneyInProfileDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JourneyInProfileDto &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.stepsCount, stepsCount) ||
                other.stepsCount == stepsCount) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailSteps, thumbnailSteps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, journey, stepsCount,
      const DeepCollectionEquality().hash(thumbnailSteps));

  @override
  String toString() {
    return 'JourneyInProfileDto(journey: $journey, stepsCount: $stepsCount, thumbnailSteps: $thumbnailSteps)';
  }
}

/// @nodoc
abstract mixin class $JourneyInProfileDtoCopyWith<$Res> {
  factory $JourneyInProfileDtoCopyWith(
          JourneyInProfileDto value, $Res Function(JourneyInProfileDto) _then) =
      _$JourneyInProfileDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'thumbnailSteps') List<StepMediaDto> thumbnailSteps});

  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class _$JourneyInProfileDtoCopyWithImpl<$Res>
    implements $JourneyInProfileDtoCopyWith<$Res> {
  _$JourneyInProfileDtoCopyWithImpl(this._self, this._then);

  final JourneyInProfileDto _self;
  final $Res Function(JourneyInProfileDto) _then;

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journey = null,
    Object? stepsCount = null,
    Object? thumbnailSteps = null,
  }) {
    return _then(_self.copyWith(
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      stepsCount: null == stepsCount
          ? _self.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailSteps: null == thumbnailSteps
          ? _self.thumbnailSteps
          : thumbnailSteps // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDto>,
    ));
  }

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// Adds pattern-matching-related methods to [JourneyInProfileDto].
extension JourneyInProfileDtoPatterns on JourneyInProfileDto {
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
    TResult Function(_JourneyInProfileDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto() when $default != null:
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
    TResult Function(_JourneyInProfileDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto():
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
    TResult? Function(_JourneyInProfileDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto() when $default != null:
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'thumbnailSteps') List<StepMediaDto> thumbnailSteps)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto() when $default != null:
        return $default(_that.journey, _that.stepsCount, _that.thumbnailSteps);
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'thumbnailSteps') List<StepMediaDto> thumbnailSteps)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto():
        return $default(_that.journey, _that.stepsCount, _that.thumbnailSteps);
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
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'stepsCount') int stepsCount,
            @JsonKey(name: 'thumbnailSteps') List<StepMediaDto> thumbnailSteps)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JourneyInProfileDto() when $default != null:
        return $default(_that.journey, _that.stepsCount, _that.thumbnailSteps);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _JourneyInProfileDto implements JourneyInProfileDto {
  _JourneyInProfileDto(
      {@JsonKey(name: 'journey') required this.journey,
      @JsonKey(name: 'stepsCount') required this.stepsCount,
      @JsonKey(name: 'thumbnailSteps')
      required final List<StepMediaDto> thumbnailSteps})
      : _thumbnailSteps = thumbnailSteps;
  factory _JourneyInProfileDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyInProfileDtoFromJson(json);

  @override
  @JsonKey(name: 'journey')
  final JourneyDto journey;
  @override
  @JsonKey(name: 'stepsCount')
  final int stepsCount;
  final List<StepMediaDto> _thumbnailSteps;
  @override
  @JsonKey(name: 'thumbnailSteps')
  List<StepMediaDto> get thumbnailSteps {
    if (_thumbnailSteps is EqualUnmodifiableListView) return _thumbnailSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnailSteps);
  }

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JourneyInProfileDtoCopyWith<_JourneyInProfileDto> get copyWith =>
      __$JourneyInProfileDtoCopyWithImpl<_JourneyInProfileDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JourneyInProfileDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyInProfileDto &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.stepsCount, stepsCount) ||
                other.stepsCount == stepsCount) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailSteps, _thumbnailSteps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, journey, stepsCount,
      const DeepCollectionEquality().hash(_thumbnailSteps));

  @override
  String toString() {
    return 'JourneyInProfileDto(journey: $journey, stepsCount: $stepsCount, thumbnailSteps: $thumbnailSteps)';
  }
}

/// @nodoc
abstract mixin class _$JourneyInProfileDtoCopyWith<$Res>
    implements $JourneyInProfileDtoCopyWith<$Res> {
  factory _$JourneyInProfileDtoCopyWith(_JourneyInProfileDto value,
          $Res Function(_JourneyInProfileDto) _then) =
      __$JourneyInProfileDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'thumbnailSteps') List<StepMediaDto> thumbnailSteps});

  @override
  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class __$JourneyInProfileDtoCopyWithImpl<$Res>
    implements _$JourneyInProfileDtoCopyWith<$Res> {
  __$JourneyInProfileDtoCopyWithImpl(this._self, this._then);

  final _JourneyInProfileDto _self;
  final $Res Function(_JourneyInProfileDto) _then;

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? journey = null,
    Object? stepsCount = null,
    Object? thumbnailSteps = null,
  }) {
    return _then(_JourneyInProfileDto(
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      stepsCount: null == stepsCount
          ? _self.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailSteps: null == thumbnailSteps
          ? _self._thumbnailSteps
          : thumbnailSteps // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDto>,
    ));
  }

  /// Create a copy of JourneyInProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// @nodoc
mixin _$LoginDto {
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      _$LoginDtoCopyWithImpl<LoginDto>(this as LoginDto, _$identity);

  /// Serializes this LoginDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) _then) =
      _$LoginDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._self, this._then);

  final LoginDto _self;
  final $Res Function(LoginDto) _then;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginDto].
extension LoginDtoPatterns on LoginDto {
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
    TResult Function(_LoginDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginDto() when $default != null:
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
    TResult Function(_LoginDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginDto():
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
    TResult? Function(_LoginDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginDto() when $default != null:
        return $default(_that.email, _that.password);
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
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginDto():
        return $default(_that.email, _that.password);
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
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginDto() when $default != null:
        return $default(_that.email, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginDto implements LoginDto {
  _LoginDto(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});
  factory _LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginDtoCopyWith<_LoginDto> get copyWith =>
      __$LoginDtoCopyWithImpl<_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginDtoCopyWith<$Res>
    implements $LoginDtoCopyWith<$Res> {
  factory _$LoginDtoCopyWith(_LoginDto value, $Res Function(_LoginDto) _then) =
      __$LoginDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$LoginDtoCopyWithImpl<$Res> implements _$LoginDtoCopyWith<$Res> {
  __$LoginDtoCopyWithImpl(this._self, this._then);

  final _LoginDto _self;
  final $Res Function(_LoginDto) _then;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LoginResponseDto {
  @JsonKey(name: 'token')
  String get token;
  @JsonKey(name: 'uid')
  String get uid;

  /// Create a copy of LoginResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseDtoCopyWith<LoginResponseDto> get copyWith =>
      _$LoginResponseDtoCopyWithImpl<LoginResponseDto>(
          this as LoginResponseDto, _$identity);

  /// Serializes this LoginResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponseDto &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, uid);

  @override
  String toString() {
    return 'LoginResponseDto(token: $token, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseDtoCopyWith<$Res> {
  factory $LoginResponseDtoCopyWith(
          LoginResponseDto value, $Res Function(LoginResponseDto) _then) =
      _$LoginResponseDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token, @JsonKey(name: 'uid') String uid});
}

/// @nodoc
class _$LoginResponseDtoCopyWithImpl<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  _$LoginResponseDtoCopyWithImpl(this._self, this._then);

  final LoginResponseDto _self;
  final $Res Function(LoginResponseDto) _then;

  /// Create a copy of LoginResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? uid = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginResponseDto].
extension LoginResponseDtoPatterns on LoginResponseDto {
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
    TResult Function(_LoginResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto() when $default != null:
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
    TResult Function(_LoginResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto():
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
    TResult? Function(_LoginResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'token') String token,
            @JsonKey(name: 'uid') String uid)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto() when $default != null:
        return $default(_that.token, _that.uid);
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
    TResult Function(@JsonKey(name: 'token') String token,
            @JsonKey(name: 'uid') String uid)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto():
        return $default(_that.token, _that.uid);
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
    TResult? Function(@JsonKey(name: 'token') String token,
            @JsonKey(name: 'uid') String uid)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseDto() when $default != null:
        return $default(_that.token, _that.uid);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponseDto implements LoginResponseDto {
  _LoginResponseDto(
      {@JsonKey(name: 'token') this.token = '',
      @JsonKey(name: 'uid') this.uid = ''});
  factory _LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'uid')
  final String uid;

  /// Create a copy of LoginResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseDtoCopyWith<_LoginResponseDto> get copyWith =>
      __$LoginResponseDtoCopyWithImpl<_LoginResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseDto &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, uid);

  @override
  String toString() {
    return 'LoginResponseDto(token: $token, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseDtoCopyWith<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  factory _$LoginResponseDtoCopyWith(
          _LoginResponseDto value, $Res Function(_LoginResponseDto) _then) =
      __$LoginResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token, @JsonKey(name: 'uid') String uid});
}

/// @nodoc
class __$LoginResponseDtoCopyWithImpl<$Res>
    implements _$LoginResponseDtoCopyWith<$Res> {
  __$LoginResponseDtoCopyWithImpl(this._self, this._then);

  final _LoginResponseDto _self;
  final $Res Function(_LoginResponseDto) _then;

  /// Create a copy of LoginResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? uid = null,
  }) {
    return _then(_LoginResponseDto(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$NotificationDto {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'body')
  String get body;
  @JsonKey(name: 'notificationType')
  NotificationTypeDto? get notificationType;
  @JsonKey(name: 'isRead')
  bool? get isRead;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @JsonKey(name: 'priority')
  int? get priority;
  @JsonKey(name: 'relatedEntityId')
  String? get relatedEntityId;
  @JsonKey(name: 'sourceUser')
  UserDetailDto? get sourceUser;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      _$NotificationDtoCopyWithImpl<NotificationDto>(
          this as NotificationDto, _$identity);

  /// Serializes this NotificationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
            (identical(other.sourceUser, sourceUser) ||
                other.sourceUser == sourceUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      notificationType,
      isRead,
      createdDate,
      const DeepCollectionEquality().hash(data),
      priority,
      relatedEntityId,
      sourceUser);

  @override
  String toString() {
    return 'NotificationDto(id: $id, title: $title, body: $body, notificationType: $notificationType, isRead: $isRead, createdDate: $createdDate, data: $data, priority: $priority, relatedEntityId: $relatedEntityId, sourceUser: $sourceUser)';
  }
}

/// @nodoc
abstract mixin class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) _then) =
      _$NotificationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') NotificationTypeDto? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser});

  $UserDetailDtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._self, this._then);

  final NotificationDto _self;
  final $Res Function(NotificationDto) _then;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? body = null,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationTypeDto?,
      isRead: freezed == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _self.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUser: freezed == sourceUser
          ? _self.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto?,
    ));
  }

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res>? get sourceUser {
    if (_self.sourceUser == null) {
      return null;
    }

    return $UserDetailDtoCopyWith<$Res>(_self.sourceUser!, (value) {
      return _then(_self.copyWith(sourceUser: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NotificationDto].
extension NotificationDtoPatterns on NotificationDto {
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
    TResult Function(_NotificationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationDto() when $default != null:
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
    TResult Function(_NotificationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationDto():
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
    TResult? Function(_NotificationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationDto() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'body') String body,
            @JsonKey(name: 'notificationType')
            NotificationTypeDto? notificationType,
            @JsonKey(name: 'isRead') bool? isRead,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority,
            @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
            @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationDto() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.notificationType,
            _that.isRead,
            _that.createdDate,
            _that.data,
            _that.priority,
            _that.relatedEntityId,
            _that.sourceUser);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'body') String body,
            @JsonKey(name: 'notificationType')
            NotificationTypeDto? notificationType,
            @JsonKey(name: 'isRead') bool? isRead,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority,
            @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
            @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationDto():
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.notificationType,
            _that.isRead,
            _that.createdDate,
            _that.data,
            _that.priority,
            _that.relatedEntityId,
            _that.sourceUser);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'body') String body,
            @JsonKey(name: 'notificationType')
            NotificationTypeDto? notificationType,
            @JsonKey(name: 'isRead') bool? isRead,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority,
            @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
            @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationDto() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.body,
            _that.notificationType,
            _that.isRead,
            _that.createdDate,
            _that.data,
            _that.priority,
            _that.relatedEntityId,
            _that.sourceUser);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationDto implements NotificationDto {
  _NotificationDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'body') this.body = '',
      @JsonKey(name: 'notificationType') this.notificationType,
      @JsonKey(name: 'isRead') this.isRead,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'relatedEntityId') this.relatedEntityId,
      @JsonKey(name: 'sourceUser') this.sourceUser})
      : _data = data;
  factory _NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'notificationType')
  final NotificationTypeDto? notificationType;
  @override
  @JsonKey(name: 'isRead')
  final bool? isRead;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  final Map<String, String>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'priority')
  final int? priority;
  @override
  @JsonKey(name: 'relatedEntityId')
  final String? relatedEntityId;
  @override
  @JsonKey(name: 'sourceUser')
  final UserDetailDto? sourceUser;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
            (identical(other.sourceUser, sourceUser) ||
                other.sourceUser == sourceUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      notificationType,
      isRead,
      createdDate,
      const DeepCollectionEquality().hash(_data),
      priority,
      relatedEntityId,
      sourceUser);

  @override
  String toString() {
    return 'NotificationDto(id: $id, title: $title, body: $body, notificationType: $notificationType, isRead: $isRead, createdDate: $createdDate, data: $data, priority: $priority, relatedEntityId: $relatedEntityId, sourceUser: $sourceUser)';
  }
}

/// @nodoc
abstract mixin class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) _then) =
      __$NotificationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') NotificationTypeDto? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser});

  @override
  $UserDetailDtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(this._self, this._then);

  final _NotificationDto _self;
  final $Res Function(_NotificationDto) _then;

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? body = null,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_NotificationDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationTypeDto?,
      isRead: freezed == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _self.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUser: freezed == sourceUser
          ? _self.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto?,
    ));
  }

  /// Create a copy of NotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res>? get sourceUser {
    if (_self.sourceUser == null) {
      return null;
    }

    return $UserDetailDtoCopyWith<$Res>(_self.sourceUser!, (value) {
      return _then(_self.copyWith(sourceUser: value));
    });
  }
}

/// @nodoc
mixin _$NotificationPagedDto {
  @JsonKey(name: 'notifications')
  List<NotificationDto>? get notifications;
  @JsonKey(name: 'page')
  int? get page;
  @JsonKey(name: 'pageSize')
  int? get pageSize;
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;
  @JsonKey(name: 'hasMore')
  bool? get hasMore;

  /// Create a copy of NotificationPagedDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationPagedDtoCopyWith<NotificationPagedDto> get copyWith =>
      _$NotificationPagedDtoCopyWithImpl<NotificationPagedDto>(
          this as NotificationPagedDto, _$identity);

  /// Serializes this NotificationPagedDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationPagedDto &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notifications),
      page,
      pageSize,
      totalCount,
      unreadCount,
      hasMore);

  @override
  String toString() {
    return 'NotificationPagedDto(notifications: $notifications, page: $page, pageSize: $pageSize, totalCount: $totalCount, unreadCount: $unreadCount, hasMore: $hasMore)';
  }
}

/// @nodoc
abstract mixin class $NotificationPagedDtoCopyWith<$Res> {
  factory $NotificationPagedDtoCopyWith(NotificationPagedDto value,
          $Res Function(NotificationPagedDto) _then) =
      _$NotificationPagedDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class _$NotificationPagedDtoCopyWithImpl<$Res>
    implements $NotificationPagedDtoCopyWith<$Res> {
  _$NotificationPagedDtoCopyWithImpl(this._self, this._then);

  final NotificationPagedDto _self;
  final $Res Function(NotificationPagedDto) _then;

  /// Create a copy of NotificationPagedDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
    Object? unreadCount = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_self.copyWith(
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDto>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationPagedDto].
extension NotificationPagedDtoPatterns on NotificationPagedDto {
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
    TResult Function(_NotificationPagedDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto() when $default != null:
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
    TResult Function(_NotificationPagedDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto():
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
    TResult? Function(_NotificationPagedDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto() when $default != null:
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
            @JsonKey(name: 'notifications')
            List<NotificationDto>? notifications,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'unreadCount') int? unreadCount,
            @JsonKey(name: 'hasMore') bool? hasMore)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto() when $default != null:
        return $default(_that.notifications, _that.page, _that.pageSize,
            _that.totalCount, _that.unreadCount, _that.hasMore);
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
            @JsonKey(name: 'notifications')
            List<NotificationDto>? notifications,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'unreadCount') int? unreadCount,
            @JsonKey(name: 'hasMore') bool? hasMore)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto():
        return $default(_that.notifications, _that.page, _that.pageSize,
            _that.totalCount, _that.unreadCount, _that.hasMore);
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
            @JsonKey(name: 'notifications')
            List<NotificationDto>? notifications,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'unreadCount') int? unreadCount,
            @JsonKey(name: 'hasMore') bool? hasMore)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPagedDto() when $default != null:
        return $default(_that.notifications, _that.page, _that.pageSize,
            _that.totalCount, _that.unreadCount, _that.hasMore);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationPagedDto implements NotificationPagedDto {
  _NotificationPagedDto(
      {@JsonKey(name: 'notifications')
      final List<NotificationDto>? notifications,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'pageSize') this.pageSize,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'unreadCount') this.unreadCount,
      @JsonKey(name: 'hasMore') this.hasMore})
      : _notifications = notifications;
  factory _NotificationPagedDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPagedDtoFromJson(json);

  final List<NotificationDto>? _notifications;
  @override
  @JsonKey(name: 'notifications')
  List<NotificationDto>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @override
  @JsonKey(name: 'unreadCount')
  final int? unreadCount;
  @override
  @JsonKey(name: 'hasMore')
  final bool? hasMore;

  /// Create a copy of NotificationPagedDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationPagedDtoCopyWith<_NotificationPagedDto> get copyWith =>
      __$NotificationPagedDtoCopyWithImpl<_NotificationPagedDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationPagedDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPagedDto &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      page,
      pageSize,
      totalCount,
      unreadCount,
      hasMore);

  @override
  String toString() {
    return 'NotificationPagedDto(notifications: $notifications, page: $page, pageSize: $pageSize, totalCount: $totalCount, unreadCount: $unreadCount, hasMore: $hasMore)';
  }
}

/// @nodoc
abstract mixin class _$NotificationPagedDtoCopyWith<$Res>
    implements $NotificationPagedDtoCopyWith<$Res> {
  factory _$NotificationPagedDtoCopyWith(_NotificationPagedDto value,
          $Res Function(_NotificationPagedDto) _then) =
      __$NotificationPagedDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class __$NotificationPagedDtoCopyWithImpl<$Res>
    implements _$NotificationPagedDtoCopyWith<$Res> {
  __$NotificationPagedDtoCopyWithImpl(this._self, this._then);

  final _NotificationPagedDto _self;
  final $Res Function(_NotificationPagedDto) _then;

  /// Create a copy of NotificationPagedDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
    Object? unreadCount = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_NotificationPagedDto(
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDto>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _self.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$NotificationPreferencesDto {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'userId')
  String? get userId;
  @JsonKey(name: 'pushNotifications')
  bool? get pushNotifications;
  @JsonKey(name: 'mentions')
  bool? get mentions;
  @JsonKey(name: 'oldStepNotifications')
  bool? get oldStepNotifications;
  @JsonKey(name: 'trendingStepSuggestions')
  bool? get trendingStepSuggestions;
  @JsonKey(name: 'trendingJourneySuggestions')
  bool? get trendingJourneySuggestions;
  @JsonKey(name: 'followSuggestions')
  bool? get followSuggestions;

  /// Create a copy of NotificationPreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationPreferencesDtoCopyWith<NotificationPreferencesDto>
      get copyWith =>
          _$NotificationPreferencesDtoCopyWithImpl<NotificationPreferencesDto>(
              this as NotificationPreferencesDto, _$identity);

  /// Serializes this NotificationPreferencesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationPreferencesDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.oldStepNotifications, oldStepNotifications) ||
                other.oldStepNotifications == oldStepNotifications) &&
            (identical(
                    other.trendingStepSuggestions, trendingStepSuggestions) ||
                other.trendingStepSuggestions == trendingStepSuggestions) &&
            (identical(other.trendingJourneySuggestions,
                    trendingJourneySuggestions) ||
                other.trendingJourneySuggestions ==
                    trendingJourneySuggestions) &&
            (identical(other.followSuggestions, followSuggestions) ||
                other.followSuggestions == followSuggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      pushNotifications,
      mentions,
      oldStepNotifications,
      trendingStepSuggestions,
      trendingJourneySuggestions,
      followSuggestions);

  @override
  String toString() {
    return 'NotificationPreferencesDto(id: $id, userId: $userId, pushNotifications: $pushNotifications, mentions: $mentions, oldStepNotifications: $oldStepNotifications, trendingStepSuggestions: $trendingStepSuggestions, trendingJourneySuggestions: $trendingJourneySuggestions, followSuggestions: $followSuggestions)';
  }
}

/// @nodoc
abstract mixin class $NotificationPreferencesDtoCopyWith<$Res> {
  factory $NotificationPreferencesDtoCopyWith(NotificationPreferencesDto value,
          $Res Function(NotificationPreferencesDto) _then) =
      _$NotificationPreferencesDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'pushNotifications') bool? pushNotifications,
      @JsonKey(name: 'mentions') bool? mentions,
      @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      bool? trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') bool? followSuggestions});
}

/// @nodoc
class _$NotificationPreferencesDtoCopyWithImpl<$Res>
    implements $NotificationPreferencesDtoCopyWith<$Res> {
  _$NotificationPreferencesDtoCopyWithImpl(this._self, this._then);

  final NotificationPreferencesDto _self;
  final $Res Function(NotificationPreferencesDto) _then;

  /// Create a copy of NotificationPreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? pushNotifications = freezed,
    Object? mentions = freezed,
    Object? oldStepNotifications = freezed,
    Object? trendingStepSuggestions = freezed,
    Object? trendingJourneySuggestions = freezed,
    Object? followSuggestions = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      pushNotifications: freezed == pushNotifications
          ? _self.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _self.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldStepNotifications: freezed == oldStepNotifications
          ? _self.oldStepNotifications
          : oldStepNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingStepSuggestions: freezed == trendingStepSuggestions
          ? _self.trendingStepSuggestions
          : trendingStepSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingJourneySuggestions: freezed == trendingJourneySuggestions
          ? _self.trendingJourneySuggestions
          : trendingJourneySuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      followSuggestions: freezed == followSuggestions
          ? _self.followSuggestions
          : followSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationPreferencesDto].
extension NotificationPreferencesDtoPatterns on NotificationPreferencesDto {
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
    TResult Function(_NotificationPreferencesDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto() when $default != null:
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
    TResult Function(_NotificationPreferencesDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto():
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
    TResult? Function(_NotificationPreferencesDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto():
        return $default(
            _that.id,
            _that.userId,
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationPreferencesDto() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationPreferencesDto implements NotificationPreferencesDto {
  _NotificationPreferencesDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'pushNotifications') this.pushNotifications,
      @JsonKey(name: 'mentions') this.mentions,
      @JsonKey(name: 'oldStepNotifications') this.oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') this.trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      this.trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') this.followSuggestions});
  factory _NotificationPreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'pushNotifications')
  final bool? pushNotifications;
  @override
  @JsonKey(name: 'mentions')
  final bool? mentions;
  @override
  @JsonKey(name: 'oldStepNotifications')
  final bool? oldStepNotifications;
  @override
  @JsonKey(name: 'trendingStepSuggestions')
  final bool? trendingStepSuggestions;
  @override
  @JsonKey(name: 'trendingJourneySuggestions')
  final bool? trendingJourneySuggestions;
  @override
  @JsonKey(name: 'followSuggestions')
  final bool? followSuggestions;

  /// Create a copy of NotificationPreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationPreferencesDtoCopyWith<_NotificationPreferencesDto>
      get copyWith => __$NotificationPreferencesDtoCopyWithImpl<
          _NotificationPreferencesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationPreferencesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPreferencesDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.oldStepNotifications, oldStepNotifications) ||
                other.oldStepNotifications == oldStepNotifications) &&
            (identical(
                    other.trendingStepSuggestions, trendingStepSuggestions) ||
                other.trendingStepSuggestions == trendingStepSuggestions) &&
            (identical(other.trendingJourneySuggestions,
                    trendingJourneySuggestions) ||
                other.trendingJourneySuggestions ==
                    trendingJourneySuggestions) &&
            (identical(other.followSuggestions, followSuggestions) ||
                other.followSuggestions == followSuggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      pushNotifications,
      mentions,
      oldStepNotifications,
      trendingStepSuggestions,
      trendingJourneySuggestions,
      followSuggestions);

  @override
  String toString() {
    return 'NotificationPreferencesDto(id: $id, userId: $userId, pushNotifications: $pushNotifications, mentions: $mentions, oldStepNotifications: $oldStepNotifications, trendingStepSuggestions: $trendingStepSuggestions, trendingJourneySuggestions: $trendingJourneySuggestions, followSuggestions: $followSuggestions)';
  }
}

/// @nodoc
abstract mixin class _$NotificationPreferencesDtoCopyWith<$Res>
    implements $NotificationPreferencesDtoCopyWith<$Res> {
  factory _$NotificationPreferencesDtoCopyWith(
          _NotificationPreferencesDto value,
          $Res Function(_NotificationPreferencesDto) _then) =
      __$NotificationPreferencesDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'pushNotifications') bool? pushNotifications,
      @JsonKey(name: 'mentions') bool? mentions,
      @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      bool? trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') bool? followSuggestions});
}

/// @nodoc
class __$NotificationPreferencesDtoCopyWithImpl<$Res>
    implements _$NotificationPreferencesDtoCopyWith<$Res> {
  __$NotificationPreferencesDtoCopyWithImpl(this._self, this._then);

  final _NotificationPreferencesDto _self;
  final $Res Function(_NotificationPreferencesDto) _then;

  /// Create a copy of NotificationPreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? pushNotifications = freezed,
    Object? mentions = freezed,
    Object? oldStepNotifications = freezed,
    Object? trendingStepSuggestions = freezed,
    Object? trendingJourneySuggestions = freezed,
    Object? followSuggestions = freezed,
  }) {
    return _then(_NotificationPreferencesDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      pushNotifications: freezed == pushNotifications
          ? _self.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _self.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldStepNotifications: freezed == oldStepNotifications
          ? _self.oldStepNotifications
          : oldStepNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingStepSuggestions: freezed == trendingStepSuggestions
          ? _self.trendingStepSuggestions
          : trendingStepSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingJourneySuggestions: freezed == trendingJourneySuggestions
          ? _self.trendingJourneySuggestions
          : trendingJourneySuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      followSuggestions: freezed == followSuggestions
          ? _self.followSuggestions
          : followSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$PageResponseOfAppFeedbackDto {
  @JsonKey(name: 'items')
  List<AppFeedbackDto>? get items;
  @JsonKey(name: 'page')
  int? get page;
  @JsonKey(name: 'pageSize')
  int? get pageSize;
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @JsonKey(name: 'totalPages')
  int? get totalPages;
  @JsonKey(name: 'hasNextPage')
  bool? get hasNextPage;
  @JsonKey(name: 'hasPreviousPage')
  bool? get hasPreviousPage;

  /// Create a copy of PageResponseOfAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageResponseOfAppFeedbackDtoCopyWith<PageResponseOfAppFeedbackDto>
      get copyWith => _$PageResponseOfAppFeedbackDtoCopyWithImpl<
              PageResponseOfAppFeedbackDto>(
          this as PageResponseOfAppFeedbackDto, _$identity);

  /// Serializes this PageResponseOfAppFeedbackDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageResponseOfAppFeedbackDto &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      page,
      pageSize,
      totalCount,
      totalPages,
      hasNextPage,
      hasPreviousPage);

  @override
  String toString() {
    return 'PageResponseOfAppFeedbackDto(items: $items, page: $page, pageSize: $pageSize, totalCount: $totalCount, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }
}

/// @nodoc
abstract mixin class $PageResponseOfAppFeedbackDtoCopyWith<$Res> {
  factory $PageResponseOfAppFeedbackDtoCopyWith(
          PageResponseOfAppFeedbackDto value,
          $Res Function(PageResponseOfAppFeedbackDto) _then) =
      _$PageResponseOfAppFeedbackDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<AppFeedbackDto>? items,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'hasNextPage') bool? hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage});
}

/// @nodoc
class _$PageResponseOfAppFeedbackDtoCopyWithImpl<$Res>
    implements $PageResponseOfAppFeedbackDtoCopyWith<$Res> {
  _$PageResponseOfAppFeedbackDtoCopyWithImpl(this._self, this._then);

  final PageResponseOfAppFeedbackDto _self;
  final $Res Function(PageResponseOfAppFeedbackDto) _then;

  /// Create a copy of PageResponseOfAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
  }) {
    return _then(_self.copyWith(
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AppFeedbackDto>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageResponseOfAppFeedbackDto].
extension PageResponseOfAppFeedbackDtoPatterns on PageResponseOfAppFeedbackDto {
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
    TResult Function(_PageResponseOfAppFeedbackDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto() when $default != null:
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
    TResult Function(_PageResponseOfAppFeedbackDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto():
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
    TResult? Function(_PageResponseOfAppFeedbackDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto() when $default != null:
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
            @JsonKey(name: 'items') List<AppFeedbackDto>? items,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'hasNextPage') bool? hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto() when $default != null:
        return $default(
            _that.items,
            _that.page,
            _that.pageSize,
            _that.totalCount,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage);
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
            @JsonKey(name: 'items') List<AppFeedbackDto>? items,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'hasNextPage') bool? hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto():
        return $default(
            _that.items,
            _that.page,
            _that.pageSize,
            _that.totalCount,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage);
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
            @JsonKey(name: 'items') List<AppFeedbackDto>? items,
            @JsonKey(name: 'page') int? page,
            @JsonKey(name: 'pageSize') int? pageSize,
            @JsonKey(name: 'totalCount') int? totalCount,
            @JsonKey(name: 'totalPages') int? totalPages,
            @JsonKey(name: 'hasNextPage') bool? hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponseOfAppFeedbackDto() when $default != null:
        return $default(
            _that.items,
            _that.page,
            _that.pageSize,
            _that.totalCount,
            _that.totalPages,
            _that.hasNextPage,
            _that.hasPreviousPage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageResponseOfAppFeedbackDto implements PageResponseOfAppFeedbackDto {
  _PageResponseOfAppFeedbackDto(
      {@JsonKey(name: 'items') final List<AppFeedbackDto>? items,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'pageSize') this.pageSize,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'totalPages') this.totalPages,
      @JsonKey(name: 'hasNextPage') this.hasNextPage,
      @JsonKey(name: 'hasPreviousPage') this.hasPreviousPage})
      : _items = items;
  factory _PageResponseOfAppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$PageResponseOfAppFeedbackDtoFromJson(json);

  final List<AppFeedbackDto>? _items;
  @override
  @JsonKey(name: 'items')
  List<AppFeedbackDto>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'pageSize')
  final int? pageSize;
  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @override
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @override
  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;
  @override
  @JsonKey(name: 'hasPreviousPage')
  final bool? hasPreviousPage;

  /// Create a copy of PageResponseOfAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageResponseOfAppFeedbackDtoCopyWith<_PageResponseOfAppFeedbackDto>
      get copyWith => __$PageResponseOfAppFeedbackDtoCopyWithImpl<
          _PageResponseOfAppFeedbackDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageResponseOfAppFeedbackDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageResponseOfAppFeedbackDto &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      page,
      pageSize,
      totalCount,
      totalPages,
      hasNextPage,
      hasPreviousPage);

  @override
  String toString() {
    return 'PageResponseOfAppFeedbackDto(items: $items, page: $page, pageSize: $pageSize, totalCount: $totalCount, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }
}

/// @nodoc
abstract mixin class _$PageResponseOfAppFeedbackDtoCopyWith<$Res>
    implements $PageResponseOfAppFeedbackDtoCopyWith<$Res> {
  factory _$PageResponseOfAppFeedbackDtoCopyWith(
          _PageResponseOfAppFeedbackDto value,
          $Res Function(_PageResponseOfAppFeedbackDto) _then) =
      __$PageResponseOfAppFeedbackDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<AppFeedbackDto>? items,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'hasNextPage') bool? hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage});
}

/// @nodoc
class __$PageResponseOfAppFeedbackDtoCopyWithImpl<$Res>
    implements _$PageResponseOfAppFeedbackDtoCopyWith<$Res> {
  __$PageResponseOfAppFeedbackDtoCopyWithImpl(this._self, this._then);

  final _PageResponseOfAppFeedbackDto _self;
  final $Res Function(_PageResponseOfAppFeedbackDto) _then;

  /// Create a copy of PageResponseOfAppFeedbackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalCount = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
  }) {
    return _then(_PageResponseOfAppFeedbackDto(
      items: freezed == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AppFeedbackDto>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$ProfileDto {
  @JsonKey(name: 'userDetail')
  UserDetailDto get userDetail;
  @JsonKey(name: 'badgesCount')
  int get badgesCount;
  @JsonKey(name: 'badgesUsers')
  List<UserDto>? get badgesUsers;
  @JsonKey(name: 'supportersCount')
  int get supportersCount;
  @JsonKey(name: 'supportersUsers')
  List<UserDto>? get supportersUsers;
  @JsonKey(name: 'followersCount')
  int get followersCount;
  @JsonKey(name: 'followingsCount')
  int get followingsCount;

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      _$ProfileDtoCopyWithImpl<ProfileDto>(this as ProfileDto, _$identity);

  /// Serializes this ProfileDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileDto &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail) &&
            (identical(other.badgesCount, badgesCount) ||
                other.badgesCount == badgesCount) &&
            const DeepCollectionEquality()
                .equals(other.badgesUsers, badgesUsers) &&
            (identical(other.supportersCount, supportersCount) ||
                other.supportersCount == supportersCount) &&
            const DeepCollectionEquality()
                .equals(other.supportersUsers, supportersUsers) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingsCount, followingsCount) ||
                other.followingsCount == followingsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDetail,
      badgesCount,
      const DeepCollectionEquality().hash(badgesUsers),
      supportersCount,
      const DeepCollectionEquality().hash(supportersUsers),
      followersCount,
      followingsCount);

  @override
  String toString() {
    return 'ProfileDto(userDetail: $userDetail, badgesCount: $badgesCount, badgesUsers: $badgesUsers, supportersCount: $supportersCount, supportersUsers: $supportersUsers, followersCount: $followersCount, followingsCount: $followingsCount)';
  }
}

/// @nodoc
abstract mixin class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) _then) =
      _$ProfileDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDto userDetail,
      @JsonKey(name: 'badgesCount') int badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int supportersCount,
      @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int followersCount,
      @JsonKey(name: 'followingsCount') int followingsCount});

  $UserDetailDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._self, this._then);

  final ProfileDto _self;
  final $Res Function(ProfileDto) _then;

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = null,
    Object? badgesUsers = freezed,
    Object? supportersCount = null,
    Object? supportersUsers = freezed,
    Object? followersCount = null,
    Object? followingsCount = null,
  }) {
    return _then(_self.copyWith(
      userDetail: null == userDetail
          ? _self.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDto,
      badgesCount: null == badgesCount
          ? _self.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int,
      badgesUsers: freezed == badgesUsers
          ? _self.badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      supportersCount: null == supportersCount
          ? _self.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int,
      supportersUsers: freezed == supportersUsers
          ? _self.supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      followersCount: null == followersCount
          ? _self.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingsCount: null == followingsCount
          ? _self.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res> get userDetail {
    return $UserDetailDtoCopyWith<$Res>(_self.userDetail, (value) {
      return _then(_self.copyWith(userDetail: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileDto].
extension ProfileDtoPatterns on ProfileDto {
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
    TResult Function(_ProfileDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDto() when $default != null:
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
    TResult Function(_ProfileDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDto():
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
    TResult? Function(_ProfileDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDto() when $default != null:
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
            @JsonKey(name: 'userDetail') UserDetailDto userDetail,
            @JsonKey(name: 'badgesCount') int badgesCount,
            @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
            @JsonKey(name: 'supportersCount') int supportersCount,
            @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
            @JsonKey(name: 'followersCount') int followersCount,
            @JsonKey(name: 'followingsCount') int followingsCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDto() when $default != null:
        return $default(
            _that.userDetail,
            _that.badgesCount,
            _that.badgesUsers,
            _that.supportersCount,
            _that.supportersUsers,
            _that.followersCount,
            _that.followingsCount);
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
            @JsonKey(name: 'userDetail') UserDetailDto userDetail,
            @JsonKey(name: 'badgesCount') int badgesCount,
            @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
            @JsonKey(name: 'supportersCount') int supportersCount,
            @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
            @JsonKey(name: 'followersCount') int followersCount,
            @JsonKey(name: 'followingsCount') int followingsCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDto():
        return $default(
            _that.userDetail,
            _that.badgesCount,
            _that.badgesUsers,
            _that.supportersCount,
            _that.supportersUsers,
            _that.followersCount,
            _that.followingsCount);
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
            @JsonKey(name: 'userDetail') UserDetailDto userDetail,
            @JsonKey(name: 'badgesCount') int badgesCount,
            @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
            @JsonKey(name: 'supportersCount') int supportersCount,
            @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
            @JsonKey(name: 'followersCount') int followersCount,
            @JsonKey(name: 'followingsCount') int followingsCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDto() when $default != null:
        return $default(
            _that.userDetail,
            _that.badgesCount,
            _that.badgesUsers,
            _that.supportersCount,
            _that.supportersUsers,
            _that.followersCount,
            _that.followingsCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileDto implements ProfileDto {
  _ProfileDto(
      {@JsonKey(name: 'userDetail') required this.userDetail,
      @JsonKey(name: 'badgesCount') this.badgesCount = 0,
      @JsonKey(name: 'badgesUsers') final List<UserDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') this.supportersCount = 0,
      @JsonKey(name: 'supportersUsers') final List<UserDto>? supportersUsers,
      @JsonKey(name: 'followersCount') this.followersCount = 0,
      @JsonKey(name: 'followingsCount') this.followingsCount = 0})
      : _badgesUsers = badgesUsers,
        _supportersUsers = supportersUsers;
  factory _ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  @override
  @JsonKey(name: 'userDetail')
  final UserDetailDto userDetail;
  @override
  @JsonKey(name: 'badgesCount')
  final int badgesCount;
  final List<UserDto>? _badgesUsers;
  @override
  @JsonKey(name: 'badgesUsers')
  List<UserDto>? get badgesUsers {
    final value = _badgesUsers;
    if (value == null) return null;
    if (_badgesUsers is EqualUnmodifiableListView) return _badgesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'supportersCount')
  final int supportersCount;
  final List<UserDto>? _supportersUsers;
  @override
  @JsonKey(name: 'supportersUsers')
  List<UserDto>? get supportersUsers {
    final value = _supportersUsers;
    if (value == null) return null;
    if (_supportersUsers is EqualUnmodifiableListView) return _supportersUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'followersCount')
  final int followersCount;
  @override
  @JsonKey(name: 'followingsCount')
  final int followingsCount;

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDto &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail) &&
            (identical(other.badgesCount, badgesCount) ||
                other.badgesCount == badgesCount) &&
            const DeepCollectionEquality()
                .equals(other._badgesUsers, _badgesUsers) &&
            (identical(other.supportersCount, supportersCount) ||
                other.supportersCount == supportersCount) &&
            const DeepCollectionEquality()
                .equals(other._supportersUsers, _supportersUsers) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingsCount, followingsCount) ||
                other.followingsCount == followingsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDetail,
      badgesCount,
      const DeepCollectionEquality().hash(_badgesUsers),
      supportersCount,
      const DeepCollectionEquality().hash(_supportersUsers),
      followersCount,
      followingsCount);

  @override
  String toString() {
    return 'ProfileDto(userDetail: $userDetail, badgesCount: $badgesCount, badgesUsers: $badgesUsers, supportersCount: $supportersCount, supportersUsers: $supportersUsers, followersCount: $followersCount, followingsCount: $followingsCount)';
  }
}

/// @nodoc
abstract mixin class _$ProfileDtoCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) _then) =
      __$ProfileDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDto userDetail,
      @JsonKey(name: 'badgesCount') int badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int supportersCount,
      @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int followersCount,
      @JsonKey(name: 'followingsCount') int followingsCount});

  @override
  $UserDetailDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res> implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(this._self, this._then);

  final _ProfileDto _self;
  final $Res Function(_ProfileDto) _then;

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = null,
    Object? badgesUsers = freezed,
    Object? supportersCount = null,
    Object? supportersUsers = freezed,
    Object? followersCount = null,
    Object? followingsCount = null,
  }) {
    return _then(_ProfileDto(
      userDetail: null == userDetail
          ? _self.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDto,
      badgesCount: null == badgesCount
          ? _self.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int,
      badgesUsers: freezed == badgesUsers
          ? _self._badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      supportersCount: null == supportersCount
          ? _self.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int,
      supportersUsers: freezed == supportersUsers
          ? _self._supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      followersCount: null == followersCount
          ? _self.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingsCount: null == followingsCount
          ? _self.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<$Res> get userDetail {
    return $UserDetailDtoCopyWith<$Res>(_self.userDetail, (value) {
      return _then(_self.copyWith(userDetail: value));
    });
  }
}

/// @nodoc
mixin _$RegisterDeviceDto {
  @JsonKey(name: 'deviceToken')
  String? get deviceToken;
  @JsonKey(name: 'platform')
  String? get platform;
  @JsonKey(name: 'appVersion')
  String? get appVersion;
  @JsonKey(name: 'deviceModel')
  String? get deviceModel;
  @JsonKey(name: 'deviceName')
  String? get deviceName;

  /// Create a copy of RegisterDeviceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterDeviceDtoCopyWith<RegisterDeviceDto> get copyWith =>
      _$RegisterDeviceDtoCopyWithImpl<RegisterDeviceDto>(
          this as RegisterDeviceDto, _$identity);

  /// Serializes this RegisterDeviceDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterDeviceDto &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceToken, platform, appVersion, deviceModel, deviceName);

  @override
  String toString() {
    return 'RegisterDeviceDto(deviceToken: $deviceToken, platform: $platform, appVersion: $appVersion, deviceModel: $deviceModel, deviceName: $deviceName)';
  }
}

/// @nodoc
abstract mixin class $RegisterDeviceDtoCopyWith<$Res> {
  factory $RegisterDeviceDtoCopyWith(
          RegisterDeviceDto value, $Res Function(RegisterDeviceDto) _then) =
      _$RegisterDeviceDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceName') String? deviceName});
}

/// @nodoc
class _$RegisterDeviceDtoCopyWithImpl<$Res>
    implements $RegisterDeviceDtoCopyWith<$Res> {
  _$RegisterDeviceDtoCopyWithImpl(this._self, this._then);

  final RegisterDeviceDto _self;
  final $Res Function(RegisterDeviceDto) _then;

  /// Create a copy of RegisterDeviceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? appVersion = freezed,
    Object? deviceModel = freezed,
    Object? deviceName = freezed,
  }) {
    return _then(_self.copyWith(
      deviceToken: freezed == deviceToken
          ? _self.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _self.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterDeviceDto].
extension RegisterDeviceDtoPatterns on RegisterDeviceDto {
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
    TResult Function(_RegisterDeviceDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto() when $default != null:
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
    TResult Function(_RegisterDeviceDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto():
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
    TResult? Function(_RegisterDeviceDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto() when $default != null:
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
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto() when $default != null:
        return $default(_that.deviceToken, _that.platform, _that.appVersion,
            _that.deviceModel, _that.deviceName);
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
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto():
        return $default(_that.deviceToken, _that.platform, _that.appVersion,
            _that.deviceModel, _that.deviceName);
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
            @JsonKey(name: 'deviceToken') String? deviceToken,
            @JsonKey(name: 'platform') String? platform,
            @JsonKey(name: 'appVersion') String? appVersion,
            @JsonKey(name: 'deviceModel') String? deviceModel,
            @JsonKey(name: 'deviceName') String? deviceName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceDto() when $default != null:
        return $default(_that.deviceToken, _that.platform, _that.appVersion,
            _that.deviceModel, _that.deviceName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterDeviceDto implements RegisterDeviceDto {
  _RegisterDeviceDto(
      {@JsonKey(name: 'deviceToken') this.deviceToken,
      @JsonKey(name: 'platform') this.platform,
      @JsonKey(name: 'appVersion') this.appVersion,
      @JsonKey(name: 'deviceModel') this.deviceModel,
      @JsonKey(name: 'deviceName') this.deviceName});
  factory _RegisterDeviceDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceDtoFromJson(json);

  @override
  @JsonKey(name: 'deviceToken')
  final String? deviceToken;
  @override
  @JsonKey(name: 'platform')
  final String? platform;
  @override
  @JsonKey(name: 'appVersion')
  final String? appVersion;
  @override
  @JsonKey(name: 'deviceModel')
  final String? deviceModel;
  @override
  @JsonKey(name: 'deviceName')
  final String? deviceName;

  /// Create a copy of RegisterDeviceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterDeviceDtoCopyWith<_RegisterDeviceDto> get copyWith =>
      __$RegisterDeviceDtoCopyWithImpl<_RegisterDeviceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterDeviceDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterDeviceDto &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceToken, platform, appVersion, deviceModel, deviceName);

  @override
  String toString() {
    return 'RegisterDeviceDto(deviceToken: $deviceToken, platform: $platform, appVersion: $appVersion, deviceModel: $deviceModel, deviceName: $deviceName)';
  }
}

/// @nodoc
abstract mixin class _$RegisterDeviceDtoCopyWith<$Res>
    implements $RegisterDeviceDtoCopyWith<$Res> {
  factory _$RegisterDeviceDtoCopyWith(
          _RegisterDeviceDto value, $Res Function(_RegisterDeviceDto) _then) =
      __$RegisterDeviceDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'appVersion') String? appVersion,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceName') String? deviceName});
}

/// @nodoc
class __$RegisterDeviceDtoCopyWithImpl<$Res>
    implements _$RegisterDeviceDtoCopyWith<$Res> {
  __$RegisterDeviceDtoCopyWithImpl(this._self, this._then);

  final _RegisterDeviceDto _self;
  final $Res Function(_RegisterDeviceDto) _then;

  /// Create a copy of RegisterDeviceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceToken = freezed,
    Object? platform = freezed,
    Object? appVersion = freezed,
    Object? deviceModel = freezed,
    Object? deviceName = freezed,
  }) {
    return _then(_RegisterDeviceDto(
      deviceToken: freezed == deviceToken
          ? _self.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _self.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RemoveContentDto {
  @JsonKey(name: 'reason')
  String get reason;
  @JsonKey(name: 'additionalNotes')
  String? get additionalNotes;

  /// Create a copy of RemoveContentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveContentDtoCopyWith<RemoveContentDto> get copyWith =>
      _$RemoveContentDtoCopyWithImpl<RemoveContentDto>(
          this as RemoveContentDto, _$identity);

  /// Serializes this RemoveContentDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveContentDto &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, additionalNotes);

  @override
  String toString() {
    return 'RemoveContentDto(reason: $reason, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class $RemoveContentDtoCopyWith<$Res> {
  factory $RemoveContentDtoCopyWith(
          RemoveContentDto value, $Res Function(RemoveContentDto) _then) =
      _$RemoveContentDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class _$RemoveContentDtoCopyWithImpl<$Res>
    implements $RemoveContentDtoCopyWith<$Res> {
  _$RemoveContentDtoCopyWithImpl(this._self, this._then);

  final RemoveContentDto _self;
  final $Res Function(RemoveContentDto) _then;

  /// Create a copy of RemoveContentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? additionalNotes = freezed,
  }) {
    return _then(_self.copyWith(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RemoveContentDto].
extension RemoveContentDtoPatterns on RemoveContentDto {
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
    TResult Function(_RemoveContentDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto() when $default != null:
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
    TResult Function(_RemoveContentDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto():
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
    TResult? Function(_RemoveContentDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto() when $default != null:
        return $default(_that.reason, _that.additionalNotes);
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
    TResult Function(@JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto():
        return $default(_that.reason, _that.additionalNotes);
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
    TResult? Function(@JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RemoveContentDto() when $default != null:
        return $default(_that.reason, _that.additionalNotes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RemoveContentDto implements RemoveContentDto {
  _RemoveContentDto(
      {@JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'additionalNotes') this.additionalNotes});
  factory _RemoveContentDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveContentDtoFromJson(json);

  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'additionalNotes')
  final String? additionalNotes;

  /// Create a copy of RemoveContentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveContentDtoCopyWith<_RemoveContentDto> get copyWith =>
      __$RemoveContentDtoCopyWithImpl<_RemoveContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoveContentDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveContentDto &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, additionalNotes);

  @override
  String toString() {
    return 'RemoveContentDto(reason: $reason, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class _$RemoveContentDtoCopyWith<$Res>
    implements $RemoveContentDtoCopyWith<$Res> {
  factory _$RemoveContentDtoCopyWith(
          _RemoveContentDto value, $Res Function(_RemoveContentDto) _then) =
      __$RemoveContentDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class __$RemoveContentDtoCopyWithImpl<$Res>
    implements _$RemoveContentDtoCopyWith<$Res> {
  __$RemoveContentDtoCopyWithImpl(this._self, this._then);

  final _RemoveContentDto _self;
  final $Res Function(_RemoveContentDto) _then;

  /// Create a copy of RemoveContentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? additionalNotes = freezed,
  }) {
    return _then(_RemoveContentDto(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ReplyDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime get lastUpdated;
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate;
  @JsonKey(name: 'user')
  UserDto get user;
  @JsonKey(name: 'parentCommentId')
  String get parentCommentId;
  @JsonKey(name: 'responseToUser')
  UserDto? get responseToUser;
  @JsonKey(name: 'responseToCommentId')
  String? get responseToCommentId;
  @JsonKey(name: 'heartCount')
  int get heartCount;
  @JsonKey(name: 'heartedByUser')
  bool get heartedByUser;

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReplyDtoCopyWith<ReplyDto> get copyWith =>
      _$ReplyDtoCopyWithImpl<ReplyDto>(this as ReplyDto, _$identity);

  /// Serializes this ReplyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deletedDate, deletedDate) ||
                other.deletedDate == deletedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            (identical(other.responseToUser, responseToUser) ||
                other.responseToUser == responseToUser) &&
            (identical(other.responseToCommentId, responseToCommentId) ||
                other.responseToCommentId == responseToCommentId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      deletedDate,
      user,
      parentCommentId,
      responseToUser,
      responseToCommentId,
      heartCount,
      heartedByUser);

  @override
  String toString() {
    return 'ReplyDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, parentCommentId: $parentCommentId, responseToUser: $responseToUser, responseToCommentId: $responseToCommentId, heartCount: $heartCount, heartedByUser: $heartedByUser)';
  }
}

/// @nodoc
abstract mixin class $ReplyDtoCopyWith<$Res> {
  factory $ReplyDtoCopyWith(ReplyDto value, $Res Function(ReplyDto) _then) =
      _$ReplyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'parentCommentId') String parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto? responseToUser,
      @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
      @JsonKey(name: 'heartCount') int heartCount,
      @JsonKey(name: 'heartedByUser') bool heartedByUser});

  $UserDtoCopyWith<$Res> get user;
  $UserDtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class _$ReplyDtoCopyWithImpl<$Res> implements $ReplyDtoCopyWith<$Res> {
  _$ReplyDtoCopyWithImpl(this._self, this._then);

  final ReplyDto _self;
  final $Res Function(ReplyDto) _then;

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? deletedDate = freezed,
    Object? user = null,
    Object? parentCommentId = null,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = null,
    Object? heartedByUser = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedDate: freezed == deletedDate
          ? _self.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      parentCommentId: null == parentCommentId
          ? _self.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUser: freezed == responseToUser
          ? _self.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      responseToCommentId: freezed == responseToCommentId
          ? _self.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
      heartCount: null == heartCount
          ? _self.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get responseToUser {
    if (_self.responseToUser == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_self.responseToUser!, (value) {
      return _then(_self.copyWith(responseToUser: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReplyDto].
extension ReplyDtoPatterns on ReplyDto {
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
    TResult Function(_ReplyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReplyDto() when $default != null:
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
    TResult Function(_ReplyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReplyDto():
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
    TResult? Function(_ReplyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReplyDto() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'parentCommentId') String parentCommentId,
            @JsonKey(name: 'responseToUser') UserDto? responseToUser,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReplyDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.parentCommentId,
            _that.responseToUser,
            _that.responseToCommentId,
            _that.heartCount,
            _that.heartedByUser);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'parentCommentId') String parentCommentId,
            @JsonKey(name: 'responseToUser') UserDto? responseToUser,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReplyDto():
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.parentCommentId,
            _that.responseToUser,
            _that.responseToCommentId,
            _that.heartCount,
            _that.heartedByUser);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'parentCommentId') String parentCommentId,
            @JsonKey(name: 'responseToUser') UserDto? responseToUser,
            @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReplyDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.parentCommentId,
            _that.responseToUser,
            _that.responseToCommentId,
            _that.heartCount,
            _that.heartedByUser);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReplyDto implements ReplyDto {
  _ReplyDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'lastUpdated') required this.lastUpdated,
      @JsonKey(name: 'deletedDate') this.deletedDate,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'parentCommentId') required this.parentCommentId,
      @JsonKey(name: 'responseToUser') this.responseToUser,
      @JsonKey(name: 'responseToCommentId') this.responseToCommentId,
      @JsonKey(name: 'heartCount') this.heartCount = 0,
      @JsonKey(name: 'heartedByUser') this.heartedByUser = false});
  factory _ReplyDto.fromJson(Map<String, dynamic> json) =>
      _$ReplyDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  final DateTime? deletedDate;
  @override
  @JsonKey(name: 'user')
  final UserDto user;
  @override
  @JsonKey(name: 'parentCommentId')
  final String parentCommentId;
  @override
  @JsonKey(name: 'responseToUser')
  final UserDto? responseToUser;
  @override
  @JsonKey(name: 'responseToCommentId')
  final String? responseToCommentId;
  @override
  @JsonKey(name: 'heartCount')
  final int heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool heartedByUser;

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReplyDtoCopyWith<_ReplyDto> get copyWith =>
      __$ReplyDtoCopyWithImpl<_ReplyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReplyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReplyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deletedDate, deletedDate) ||
                other.deletedDate == deletedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            (identical(other.responseToUser, responseToUser) ||
                other.responseToUser == responseToUser) &&
            (identical(other.responseToCommentId, responseToCommentId) ||
                other.responseToCommentId == responseToCommentId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      deletedDate,
      user,
      parentCommentId,
      responseToUser,
      responseToCommentId,
      heartCount,
      heartedByUser);

  @override
  String toString() {
    return 'ReplyDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, parentCommentId: $parentCommentId, responseToUser: $responseToUser, responseToCommentId: $responseToCommentId, heartCount: $heartCount, heartedByUser: $heartedByUser)';
  }
}

/// @nodoc
abstract mixin class _$ReplyDtoCopyWith<$Res>
    implements $ReplyDtoCopyWith<$Res> {
  factory _$ReplyDtoCopyWith(_ReplyDto value, $Res Function(_ReplyDto) _then) =
      __$ReplyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'parentCommentId') String parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto? responseToUser,
      @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
      @JsonKey(name: 'heartCount') int heartCount,
      @JsonKey(name: 'heartedByUser') bool heartedByUser});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $UserDtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class __$ReplyDtoCopyWithImpl<$Res> implements _$ReplyDtoCopyWith<$Res> {
  __$ReplyDtoCopyWithImpl(this._self, this._then);

  final _ReplyDto _self;
  final $Res Function(_ReplyDto) _then;

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? deletedDate = freezed,
    Object? user = null,
    Object? parentCommentId = null,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = null,
    Object? heartedByUser = null,
  }) {
    return _then(_ReplyDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedDate: freezed == deletedDate
          ? _self.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      parentCommentId: null == parentCommentId
          ? _self.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUser: freezed == responseToUser
          ? _self.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      responseToCommentId: freezed == responseToCommentId
          ? _self.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
      heartCount: null == heartCount
          ? _self.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of ReplyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get responseToUser {
    if (_self.responseToUser == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_self.responseToUser!, (value) {
      return _then(_self.copyWith(responseToUser: value));
    });
  }
}

/// @nodoc
mixin _$ReportCreatingDto {
  @JsonKey(name: 'entityType')
  String get entityType;
  @JsonKey(name: 'entityId')
  String get entityId;
  @JsonKey(name: 'reason')
  String get reason;

  /// Create a copy of ReportCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportCreatingDtoCopyWith<ReportCreatingDto> get copyWith =>
      _$ReportCreatingDtoCopyWithImpl<ReportCreatingDto>(
          this as ReportCreatingDto, _$identity);

  /// Serializes this ReportCreatingDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportCreatingDto &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entityType, entityId, reason);

  @override
  String toString() {
    return 'ReportCreatingDto(entityType: $entityType, entityId: $entityId, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $ReportCreatingDtoCopyWith<$Res> {
  factory $ReportCreatingDtoCopyWith(
          ReportCreatingDto value, $Res Function(ReportCreatingDto) _then) =
      _$ReportCreatingDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class _$ReportCreatingDtoCopyWithImpl<$Res>
    implements $ReportCreatingDtoCopyWith<$Res> {
  _$ReportCreatingDtoCopyWithImpl(this._self, this._then);

  final ReportCreatingDto _self;
  final $Res Function(ReportCreatingDto) _then;

  /// Create a copy of ReportCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_self.copyWith(
      entityType: null == entityType
          ? _self.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportCreatingDto].
extension ReportCreatingDtoPatterns on ReportCreatingDto {
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
    TResult Function(_ReportCreatingDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto() when $default != null:
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
    TResult Function(_ReportCreatingDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto():
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
    TResult? Function(_ReportCreatingDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto() when $default != null:
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
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reason') String reason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto() when $default != null:
        return $default(_that.entityType, _that.entityId, _that.reason);
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
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reason') String reason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto():
        return $default(_that.entityType, _that.entityId, _that.reason);
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
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reason') String reason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportCreatingDto() when $default != null:
        return $default(_that.entityType, _that.entityId, _that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportCreatingDto implements ReportCreatingDto {
  _ReportCreatingDto(
      {@JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') required this.entityId,
      @JsonKey(name: 'reason') required this.reason});
  factory _ReportCreatingDto.fromJson(Map<String, dynamic> json) =>
      _$ReportCreatingDtoFromJson(json);

  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String entityId;
  @override
  @JsonKey(name: 'reason')
  final String reason;

  /// Create a copy of ReportCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportCreatingDtoCopyWith<_ReportCreatingDto> get copyWith =>
      __$ReportCreatingDtoCopyWithImpl<_ReportCreatingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportCreatingDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportCreatingDto &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entityType, entityId, reason);

  @override
  String toString() {
    return 'ReportCreatingDto(entityType: $entityType, entityId: $entityId, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$ReportCreatingDtoCopyWith<$Res>
    implements $ReportCreatingDtoCopyWith<$Res> {
  factory _$ReportCreatingDtoCopyWith(
          _ReportCreatingDto value, $Res Function(_ReportCreatingDto) _then) =
      __$ReportCreatingDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class __$ReportCreatingDtoCopyWithImpl<$Res>
    implements _$ReportCreatingDtoCopyWith<$Res> {
  __$ReportCreatingDtoCopyWithImpl(this._self, this._then);

  final _ReportCreatingDto _self;
  final $Res Function(_ReportCreatingDto) _then;

  /// Create a copy of ReportCreatingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_ReportCreatingDto(
      entityType: null == entityType
          ? _self.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ReportDto {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'entityType')
  String get entityType;
  @JsonKey(name: 'entityId')
  String get entityId;
  @JsonKey(name: 'reporter')
  UserDto? get reporter;
  @JsonKey(name: 'reason')
  String get reason;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDtoCopyWith<ReportDto> get copyWith =>
      _$ReportDtoCopyWithImpl<ReportDto>(this as ReportDto, _$identity);

  /// Serializes this ReportDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, entityType, entityId, reporter, reason, createdDate);

  @override
  String toString() {
    return 'ReportDto(id: $id, entityType: $entityType, entityId: $entityId, reporter: $reporter, reason: $reason, createdDate: $createdDate)';
  }
}

/// @nodoc
abstract mixin class $ReportDtoCopyWith<$Res> {
  factory $ReportDtoCopyWith(ReportDto value, $Res Function(ReportDto) _then) =
      _$ReportDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reporter') UserDto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  $UserDtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class _$ReportDtoCopyWithImpl<$Res> implements $ReportDtoCopyWith<$Res> {
  _$ReportDtoCopyWithImpl(this._self, this._then);

  final ReportDto _self;
  final $Res Function(ReportDto) _then;

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = null,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: null == entityType
          ? _self.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reporter: freezed == reporter
          ? _self.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get reporter {
    if (_self.reporter == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_self.reporter!, (value) {
      return _then(_self.copyWith(reporter: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReportDto].
extension ReportDtoPatterns on ReportDto {
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
    TResult Function(_ReportDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDto() when $default != null:
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
    TResult Function(_ReportDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDto():
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
    TResult? Function(_ReportDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDto() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reporter') UserDto? reporter,
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'createdDate') DateTime? createdDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDto() when $default != null:
        return $default(_that.id, _that.entityType, _that.entityId,
            _that.reporter, _that.reason, _that.createdDate);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reporter') UserDto? reporter,
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'createdDate') DateTime? createdDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDto():
        return $default(_that.id, _that.entityType, _that.entityId,
            _that.reporter, _that.reason, _that.createdDate);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'entityType') String entityType,
            @JsonKey(name: 'entityId') String entityId,
            @JsonKey(name: 'reporter') UserDto? reporter,
            @JsonKey(name: 'reason') String reason,
            @JsonKey(name: 'createdDate') DateTime? createdDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDto() when $default != null:
        return $default(_that.id, _that.entityType, _that.entityId,
            _that.reporter, _that.reason, _that.createdDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportDto implements ReportDto {
  _ReportDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') this.entityId = '',
      @JsonKey(name: 'reporter') this.reporter,
      @JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'createdDate') this.createdDate});
  factory _ReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReportDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String entityId;
  @override
  @JsonKey(name: 'reporter')
  final UserDto? reporter;
  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportDtoCopyWith<_ReportDto> get copyWith =>
      __$ReportDtoCopyWithImpl<_ReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, entityType, entityId, reporter, reason, createdDate);

  @override
  String toString() {
    return 'ReportDto(id: $id, entityType: $entityType, entityId: $entityId, reporter: $reporter, reason: $reason, createdDate: $createdDate)';
  }
}

/// @nodoc
abstract mixin class _$ReportDtoCopyWith<$Res>
    implements $ReportDtoCopyWith<$Res> {
  factory _$ReportDtoCopyWith(
          _ReportDto value, $Res Function(_ReportDto) _then) =
      __$ReportDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reporter') UserDto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  @override
  $UserDtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class __$ReportDtoCopyWithImpl<$Res> implements _$ReportDtoCopyWith<$Res> {
  __$ReportDtoCopyWithImpl(this._self, this._then);

  final _ReportDto _self;
  final $Res Function(_ReportDto) _then;

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = null,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_ReportDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: null == entityType
          ? _self.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _self.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reporter: freezed == reporter
          ? _self.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get reporter {
    if (_self.reporter == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_self.reporter!, (value) {
      return _then(_self.copyWith(reporter: value));
    });
  }
}

/// @nodoc
mixin _$StepCommentDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime get lastUpdated;
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate;
  @JsonKey(name: 'user')
  UserDto get user;
  @JsonKey(name: 'stepId')
  String get stepId;
  @JsonKey(name: 'heartCount')
  int get heartCount;
  @JsonKey(name: 'heartedByUser')
  bool get heartedByUser;
  @JsonKey(name: 'replyCount')
  int get replyCount;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @JsonKey(name: 'isUnavailable')
  bool get isUnavailable;
  @JsonKey(name: 'unavailableReason')
  String get unavailableReason;

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepCommentDtoCopyWith<StepCommentDto> get copyWith =>
      _$StepCommentDtoCopyWithImpl<StepCommentDto>(
          this as StepCommentDto, _$identity);

  /// Serializes this StepCommentDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepCommentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deletedDate, deletedDate) ||
                other.deletedDate == deletedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      deletedDate,
      user,
      stepId,
      heartCount,
      heartedByUser,
      replyCount,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'StepCommentDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, stepId: $stepId, heartCount: $heartCount, heartedByUser: $heartedByUser, replyCount: $replyCount, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class $StepCommentDtoCopyWith<$Res> {
  factory $StepCommentDtoCopyWith(
          StepCommentDto value, $Res Function(StepCommentDto) _then) =
      _$StepCommentDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'stepId') String stepId,
      @JsonKey(name: 'heartCount') int heartCount,
      @JsonKey(name: 'heartedByUser') bool heartedByUser,
      @JsonKey(name: 'replyCount') int replyCount,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$StepCommentDtoCopyWithImpl<$Res>
    implements $StepCommentDtoCopyWith<$Res> {
  _$StepCommentDtoCopyWithImpl(this._self, this._then);

  final StepCommentDto _self;
  final $Res Function(StepCommentDto) _then;

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? deletedDate = freezed,
    Object? user = null,
    Object? stepId = null,
    Object? heartCount = null,
    Object? heartedByUser = null,
    Object? replyCount = null,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedDate: freezed == deletedDate
          ? _self.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      stepId: null == stepId
          ? _self.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      heartCount: null == heartCount
          ? _self.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      replyCount: null == replyCount
          ? _self.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StepCommentDto].
extension StepCommentDtoPatterns on StepCommentDto {
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
    TResult Function(_StepCommentDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto() when $default != null:
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
    TResult Function(_StepCommentDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto():
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
    TResult? Function(_StepCommentDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'stepId') String stepId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'replyCount') int replyCount,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.stepId,
            _that.heartCount,
            _that.heartedByUser,
            _that.replyCount,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'stepId') String stepId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'replyCount') int replyCount,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto():
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.stepId,
            _that.heartCount,
            _that.heartedByUser,
            _that.replyCount,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'deletedDate') DateTime? deletedDate,
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'stepId') String stepId,
            @JsonKey(name: 'heartCount') int heartCount,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'replyCount') int replyCount,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepCommentDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.deletedDate,
            _that.user,
            _that.stepId,
            _that.heartCount,
            _that.heartedByUser,
            _that.replyCount,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StepCommentDto implements StepCommentDto {
  _StepCommentDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'lastUpdated') required this.lastUpdated,
      @JsonKey(name: 'deletedDate') this.deletedDate,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'stepId') required this.stepId,
      @JsonKey(name: 'heartCount') this.heartCount = 0,
      @JsonKey(name: 'heartedByUser') this.heartedByUser = false,
      @JsonKey(name: 'replyCount') this.replyCount = 0,
      @JsonKey(name: 'isDeleted') this.isDeleted = false,
      @JsonKey(name: 'isUnavailable') this.isUnavailable = false,
      @JsonKey(name: 'unavailableReason') this.unavailableReason = ''});
  factory _StepCommentDto.fromJson(Map<String, dynamic> json) =>
      _$StepCommentDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  final DateTime? deletedDate;
  @override
  @JsonKey(name: 'user')
  final UserDto user;
  @override
  @JsonKey(name: 'stepId')
  final String stepId;
  @override
  @JsonKey(name: 'heartCount')
  final int heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool heartedByUser;
  @override
  @JsonKey(name: 'replyCount')
  final int replyCount;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'isUnavailable')
  final bool isUnavailable;
  @override
  @JsonKey(name: 'unavailableReason')
  final String unavailableReason;

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepCommentDtoCopyWith<_StepCommentDto> get copyWith =>
      __$StepCommentDtoCopyWithImpl<_StepCommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepCommentDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepCommentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deletedDate, deletedDate) ||
                other.deletedDate == deletedDate) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      deletedDate,
      user,
      stepId,
      heartCount,
      heartedByUser,
      replyCount,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'StepCommentDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, stepId: $stepId, heartCount: $heartCount, heartedByUser: $heartedByUser, replyCount: $replyCount, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class _$StepCommentDtoCopyWith<$Res>
    implements $StepCommentDtoCopyWith<$Res> {
  factory _$StepCommentDtoCopyWith(
          _StepCommentDto value, $Res Function(_StepCommentDto) _then) =
      __$StepCommentDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'stepId') String stepId,
      @JsonKey(name: 'heartCount') int heartCount,
      @JsonKey(name: 'heartedByUser') bool heartedByUser,
      @JsonKey(name: 'replyCount') int replyCount,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$StepCommentDtoCopyWithImpl<$Res>
    implements _$StepCommentDtoCopyWith<$Res> {
  __$StepCommentDtoCopyWithImpl(this._self, this._then);

  final _StepCommentDto _self;
  final $Res Function(_StepCommentDto) _then;

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? deletedDate = freezed,
    Object? user = null,
    Object? stepId = null,
    Object? heartCount = null,
    Object? heartedByUser = null,
    Object? replyCount = null,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_StepCommentDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedDate: freezed == deletedDate
          ? _self.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      stepId: null == stepId
          ? _self.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String,
      heartCount: null == heartCount
          ? _self.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      replyCount: null == replyCount
          ? _self.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepCommentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$StepDetailDto {
  @JsonKey(name: 'user')
  UserDto get user;
  @JsonKey(name: 'journey')
  JourneyDto get journey;
  @JsonKey(name: 'hearts')
  int get hearts;
  @JsonKey(name: 'heartedByUser')
  bool get heartedByUser;
  @JsonKey(name: 'shares')
  int get shares;
  @JsonKey(name: 'sharedByUser')
  bool get sharedByUser;
  @JsonKey(name: 'comments')
  int get comments;
  @JsonKey(name: 'commentedByUser')
  bool get commentedByUser;
  @JsonKey(name: 'userSteppedWithInteractions')
  int get userSteppedWithInteractions;
  @JsonKey(name: 'othersStepWith')
  int get othersStepWith;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDto>? get othersStepWithUsers;
  @JsonKey(name: 'stepType')
  StepTypeDto? get stepType;
  @JsonKey(name: 'media')
  List<StepMediaDto>? get media;
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime get lastUpdated;
  @JsonKey(name: 'userId')
  String get userId;
  @JsonKey(name: 'journeyId')
  String get journeyId;
  @JsonKey(name: 'stepWithWindowHours')
  num get stepWithWindowHours;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @JsonKey(name: 'isUnavailable')
  bool get isUnavailable;
  @JsonKey(name: 'unavailableReason')
  String get unavailableReason;

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepDetailDtoCopyWith<StepDetailDto> get copyWith =>
      _$StepDetailDtoCopyWithImpl<StepDetailDto>(
          this as StepDetailDto, _$identity);

  /// Serializes this StepDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepDetailDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.hearts, hearts) || other.hearts == hearts) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.sharedByUser, sharedByUser) ||
                other.sharedByUser == sharedByUser) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.commentedByUser, commentedByUser) ||
                other.commentedByUser == commentedByUser) &&
            (identical(other.userSteppedWithInteractions,
                    userSteppedWithInteractions) ||
                other.userSteppedWithInteractions ==
                    userSteppedWithInteractions) &&
            (identical(other.othersStepWith, othersStepWith) ||
                other.othersStepWith == othersStepWith) &&
            const DeepCollectionEquality()
                .equals(other.othersStepWithUsers, othersStepWithUsers) &&
            (identical(other.stepType, stepType) ||
                other.stepType == stepType) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.stepWithWindowHours, stepWithWindowHours) ||
                other.stepWithWindowHours == stepWithWindowHours) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        user,
        journey,
        hearts,
        heartedByUser,
        shares,
        sharedByUser,
        comments,
        commentedByUser,
        userSteppedWithInteractions,
        othersStepWith,
        const DeepCollectionEquality().hash(othersStepWithUsers),
        stepType,
        const DeepCollectionEquality().hash(media),
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        journeyId,
        stepWithWindowHours,
        isDeleted,
        isUnavailable,
        unavailableReason
      ]);

  @override
  String toString() {
    return 'StepDetailDto(user: $user, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepType: $stepType, media: $media, id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, journeyId: $journeyId, stepWithWindowHours: $stepWithWindowHours, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class $StepDetailDtoCopyWith<$Res> {
  factory $StepDetailDtoCopyWith(
          StepDetailDto value, $Res Function(StepDetailDto) _then) =
      _$StepDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'hearts') int hearts,
      @JsonKey(name: 'heartedByUser') bool heartedByUser,
      @JsonKey(name: 'shares') int shares,
      @JsonKey(name: 'sharedByUser') bool sharedByUser,
      @JsonKey(name: 'comments') int comments,
      @JsonKey(name: 'commentedByUser') bool commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int othersStepWith,
      @JsonKey(name: 'othersStepWithUsers') List<UserDto>? othersStepWithUsers,
      @JsonKey(name: 'stepType') StepTypeDto? stepType,
      @JsonKey(name: 'media') List<StepMediaDto>? media,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  $UserDtoCopyWith<$Res> get user;
  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class _$StepDetailDtoCopyWithImpl<$Res>
    implements $StepDetailDtoCopyWith<$Res> {
  _$StepDetailDtoCopyWithImpl(this._self, this._then);

  final StepDetailDto _self;
  final $Res Function(StepDetailDto) _then;

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? journey = null,
    Object? hearts = null,
    Object? heartedByUser = null,
    Object? shares = null,
    Object? sharedByUser = null,
    Object? comments = null,
    Object? commentedByUser = null,
    Object? userSteppedWithInteractions = null,
    Object? othersStepWith = null,
    Object? othersStepWithUsers = freezed,
    Object? stepType = freezed,
    Object? media = freezed,
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? userId = null,
    Object? journeyId = null,
    Object? stepWithWindowHours = null,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      hearts: null == hearts
          ? _self.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      shares: null == shares
          ? _self.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      sharedByUser: null == sharedByUser
          ? _self.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      commentedByUser: null == commentedByUser
          ? _self.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      userSteppedWithInteractions: null == userSteppedWithInteractions
          ? _self.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int,
      othersStepWith: null == othersStepWith
          ? _self.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _self.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      stepType: freezed == stepType
          ? _self.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as StepTypeDto?,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDto>?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      stepWithWindowHours: null == stepWithWindowHours
          ? _self.stepWithWindowHours
          : stepWithWindowHours // ignore: cast_nullable_to_non_nullable
              as num,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StepDetailDto].
extension StepDetailDtoPatterns on StepDetailDto {
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
    TResult Function(_StepDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto() when $default != null:
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
    TResult Function(_StepDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto():
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
    TResult? Function(_StepDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto() when $default != null:
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'hearts') int hearts,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'shares') int shares,
            @JsonKey(name: 'sharedByUser') bool sharedByUser,
            @JsonKey(name: 'comments') int comments,
            @JsonKey(name: 'commentedByUser') bool commentedByUser,
            @JsonKey(name: 'userSteppedWithInteractions')
            int userSteppedWithInteractions,
            @JsonKey(name: 'othersStepWith') int othersStepWith,
            @JsonKey(name: 'othersStepWithUsers')
            List<UserDto>? othersStepWithUsers,
            @JsonKey(name: 'stepType') StepTypeDto? stepType,
            @JsonKey(name: 'media') List<StepMediaDto>? media,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto() when $default != null:
        return $default(
            _that.user,
            _that.journey,
            _that.hearts,
            _that.heartedByUser,
            _that.shares,
            _that.sharedByUser,
            _that.comments,
            _that.commentedByUser,
            _that.userSteppedWithInteractions,
            _that.othersStepWith,
            _that.othersStepWithUsers,
            _that.stepType,
            _that.media,
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'hearts') int hearts,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'shares') int shares,
            @JsonKey(name: 'sharedByUser') bool sharedByUser,
            @JsonKey(name: 'comments') int comments,
            @JsonKey(name: 'commentedByUser') bool commentedByUser,
            @JsonKey(name: 'userSteppedWithInteractions')
            int userSteppedWithInteractions,
            @JsonKey(name: 'othersStepWith') int othersStepWith,
            @JsonKey(name: 'othersStepWithUsers')
            List<UserDto>? othersStepWithUsers,
            @JsonKey(name: 'stepType') StepTypeDto? stepType,
            @JsonKey(name: 'media') List<StepMediaDto>? media,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto():
        return $default(
            _that.user,
            _that.journey,
            _that.hearts,
            _that.heartedByUser,
            _that.shares,
            _that.sharedByUser,
            _that.comments,
            _that.commentedByUser,
            _that.userSteppedWithInteractions,
            _that.othersStepWith,
            _that.othersStepWithUsers,
            _that.stepType,
            _that.media,
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'journey') JourneyDto journey,
            @JsonKey(name: 'hearts') int hearts,
            @JsonKey(name: 'heartedByUser') bool heartedByUser,
            @JsonKey(name: 'shares') int shares,
            @JsonKey(name: 'sharedByUser') bool sharedByUser,
            @JsonKey(name: 'comments') int comments,
            @JsonKey(name: 'commentedByUser') bool commentedByUser,
            @JsonKey(name: 'userSteppedWithInteractions')
            int userSteppedWithInteractions,
            @JsonKey(name: 'othersStepWith') int othersStepWith,
            @JsonKey(name: 'othersStepWithUsers')
            List<UserDto>? othersStepWithUsers,
            @JsonKey(name: 'stepType') StepTypeDto? stepType,
            @JsonKey(name: 'media') List<StepMediaDto>? media,
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDetailDto() when $default != null:
        return $default(
            _that.user,
            _that.journey,
            _that.hearts,
            _that.heartedByUser,
            _that.shares,
            _that.sharedByUser,
            _that.comments,
            _that.commentedByUser,
            _that.userSteppedWithInteractions,
            _that.othersStepWith,
            _that.othersStepWithUsers,
            _that.stepType,
            _that.media,
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StepDetailDto implements StepDetailDto {
  _StepDetailDto(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journey') required this.journey,
      @JsonKey(name: 'hearts') this.hearts = 0,
      @JsonKey(name: 'heartedByUser') this.heartedByUser = false,
      @JsonKey(name: 'shares') this.shares = 0,
      @JsonKey(name: 'sharedByUser') this.sharedByUser = false,
      @JsonKey(name: 'comments') this.comments = 0,
      @JsonKey(name: 'commentedByUser') this.commentedByUser = false,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions = 0,
      @JsonKey(name: 'othersStepWith') this.othersStepWith = 0,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDto>? othersStepWithUsers,
      @JsonKey(name: 'stepType') this.stepType,
      @JsonKey(name: 'media') final List<StepMediaDto>? media,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'lastUpdated') required this.lastUpdated,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'journeyId') required this.journeyId,
      @JsonKey(name: 'stepWithWindowHours') required this.stepWithWindowHours,
      @JsonKey(name: 'isDeleted') this.isDeleted = false,
      @JsonKey(name: 'isUnavailable') this.isUnavailable = false,
      @JsonKey(name: 'unavailableReason') this.unavailableReason = ''})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;
  factory _StepDetailDto.fromJson(Map<String, dynamic> json) =>
      _$StepDetailDtoFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserDto user;
  @override
  @JsonKey(name: 'journey')
  final JourneyDto journey;
  @override
  @JsonKey(name: 'hearts')
  final int hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int othersStepWith;
  final List<UserDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepType')
  final StepTypeDto? stepType;
  final List<StepMediaDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'journeyId')
  final String journeyId;
  @override
  @JsonKey(name: 'stepWithWindowHours')
  final num stepWithWindowHours;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'isUnavailable')
  final bool isUnavailable;
  @override
  @JsonKey(name: 'unavailableReason')
  final String unavailableReason;

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepDetailDtoCopyWith<_StepDetailDto> get copyWith =>
      __$StepDetailDtoCopyWithImpl<_StepDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepDetailDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journey, journey) || other.journey == journey) &&
            (identical(other.hearts, hearts) || other.hearts == hearts) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.sharedByUser, sharedByUser) ||
                other.sharedByUser == sharedByUser) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.commentedByUser, commentedByUser) ||
                other.commentedByUser == commentedByUser) &&
            (identical(other.userSteppedWithInteractions,
                    userSteppedWithInteractions) ||
                other.userSteppedWithInteractions ==
                    userSteppedWithInteractions) &&
            (identical(other.othersStepWith, othersStepWith) ||
                other.othersStepWith == othersStepWith) &&
            const DeepCollectionEquality()
                .equals(other._othersStepWithUsers, _othersStepWithUsers) &&
            (identical(other.stepType, stepType) ||
                other.stepType == stepType) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.stepWithWindowHours, stepWithWindowHours) ||
                other.stepWithWindowHours == stepWithWindowHours) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        user,
        journey,
        hearts,
        heartedByUser,
        shares,
        sharedByUser,
        comments,
        commentedByUser,
        userSteppedWithInteractions,
        othersStepWith,
        const DeepCollectionEquality().hash(_othersStepWithUsers),
        stepType,
        const DeepCollectionEquality().hash(_media),
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        journeyId,
        stepWithWindowHours,
        isDeleted,
        isUnavailable,
        unavailableReason
      ]);

  @override
  String toString() {
    return 'StepDetailDto(user: $user, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepType: $stepType, media: $media, id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, journeyId: $journeyId, stepWithWindowHours: $stepWithWindowHours, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class _$StepDetailDtoCopyWith<$Res>
    implements $StepDetailDtoCopyWith<$Res> {
  factory _$StepDetailDtoCopyWith(
          _StepDetailDto value, $Res Function(_StepDetailDto) _then) =
      __$StepDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'journey') JourneyDto journey,
      @JsonKey(name: 'hearts') int hearts,
      @JsonKey(name: 'heartedByUser') bool heartedByUser,
      @JsonKey(name: 'shares') int shares,
      @JsonKey(name: 'sharedByUser') bool sharedByUser,
      @JsonKey(name: 'comments') int comments,
      @JsonKey(name: 'commentedByUser') bool commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int othersStepWith,
      @JsonKey(name: 'othersStepWithUsers') List<UserDto>? othersStepWithUsers,
      @JsonKey(name: 'stepType') StepTypeDto? stepType,
      @JsonKey(name: 'media') List<StepMediaDto>? media,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoCopyWith<$Res> get journey;
}

/// @nodoc
class __$StepDetailDtoCopyWithImpl<$Res>
    implements _$StepDetailDtoCopyWith<$Res> {
  __$StepDetailDtoCopyWithImpl(this._self, this._then);

  final _StepDetailDto _self;
  final $Res Function(_StepDetailDto) _then;

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? journey = null,
    Object? hearts = null,
    Object? heartedByUser = null,
    Object? shares = null,
    Object? sharedByUser = null,
    Object? comments = null,
    Object? commentedByUser = null,
    Object? userSteppedWithInteractions = null,
    Object? othersStepWith = null,
    Object? othersStepWithUsers = freezed,
    Object? stepType = freezed,
    Object? media = freezed,
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? userId = null,
    Object? journeyId = null,
    Object? stepWithWindowHours = null,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_StepDetailDto(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      journey: null == journey
          ? _self.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto,
      hearts: null == hearts
          ? _self.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int,
      heartedByUser: null == heartedByUser
          ? _self.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      shares: null == shares
          ? _self.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      sharedByUser: null == sharedByUser
          ? _self.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _self.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      commentedByUser: null == commentedByUser
          ? _self.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      userSteppedWithInteractions: null == userSteppedWithInteractions
          ? _self.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int,
      othersStepWith: null == othersStepWith
          ? _self.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _self._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDto>?,
      stepType: freezed == stepType
          ? _self.stepType
          : stepType // ignore: cast_nullable_to_non_nullable
              as StepTypeDto?,
      media: freezed == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDto>?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      stepWithWindowHours: null == stepWithWindowHours
          ? _self.stepWithWindowHours
          : stepWithWindowHours // ignore: cast_nullable_to_non_nullable
              as num,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of StepDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoCopyWith<$Res> get journey {
    return $JourneyDtoCopyWith<$Res>(_self.journey, (value) {
      return _then(_self.copyWith(journey: value));
    });
  }
}

/// @nodoc
mixin _$StepDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'createdDate')
  DateTime get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime get lastUpdated;
  @JsonKey(name: 'userId')
  String get userId;
  @JsonKey(name: 'journeyId')
  String get journeyId;
  @JsonKey(name: 'stepWithWindowHours')
  num get stepWithWindowHours;
  @JsonKey(name: 'media')
  StepMediaDto? get media;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @JsonKey(name: 'isUnavailable')
  bool get isUnavailable;
  @JsonKey(name: 'unavailableReason')
  String get unavailableReason;

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepDtoCopyWith<StepDto> get copyWith =>
      _$StepDtoCopyWithImpl<StepDto>(this as StepDto, _$identity);

  /// Serializes this StepDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.stepWithWindowHours, stepWithWindowHours) ||
                other.stepWithWindowHours == stepWithWindowHours) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      userId,
      journeyId,
      stepWithWindowHours,
      media,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'StepDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, journeyId: $journeyId, stepWithWindowHours: $stepWithWindowHours, media: $media, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class $StepDtoCopyWith<$Res> {
  factory $StepDtoCopyWith(StepDto value, $Res Function(StepDto) _then) =
      _$StepDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
      @JsonKey(name: 'media') StepMediaDto? media,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  $StepMediaDtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$StepDtoCopyWithImpl<$Res> implements $StepDtoCopyWith<$Res> {
  _$StepDtoCopyWithImpl(this._self, this._then);

  final StepDto _self;
  final $Res Function(StepDto) _then;

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? userId = null,
    Object? journeyId = null,
    Object? stepWithWindowHours = null,
    Object? media = freezed,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      stepWithWindowHours: null == stepWithWindowHours
          ? _self.stepWithWindowHours
          : stepWithWindowHours // ignore: cast_nullable_to_non_nullable
              as num,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto?,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoCopyWith<$Res>? get media {
    if (_self.media == null) {
      return null;
    }

    return $StepMediaDtoCopyWith<$Res>(_self.media!, (value) {
      return _then(_self.copyWith(media: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StepDto].
extension StepDtoPatterns on StepDto {
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
    TResult Function(_StepDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepDto() when $default != null:
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
    TResult Function(_StepDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDto():
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
    TResult? Function(_StepDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDto() when $default != null:
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'media') StepMediaDto? media,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.media,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'media') StepMediaDto? media,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDto():
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.media,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'content') String content,
            @JsonKey(name: 'createdDate') DateTime createdDate,
            @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
            @JsonKey(name: 'userId') String userId,
            @JsonKey(name: 'journeyId') String journeyId,
            @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
            @JsonKey(name: 'media') StepMediaDto? media,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'isUnavailable') bool isUnavailable,
            @JsonKey(name: 'unavailableReason') String unavailableReason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepDto() when $default != null:
        return $default(
            _that.id,
            _that.content,
            _that.createdDate,
            _that.lastUpdated,
            _that.userId,
            _that.journeyId,
            _that.stepWithWindowHours,
            _that.media,
            _that.isDeleted,
            _that.isUnavailable,
            _that.unavailableReason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StepDto implements StepDto {
  _StepDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'createdDate') required this.createdDate,
      @JsonKey(name: 'lastUpdated') required this.lastUpdated,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'journeyId') required this.journeyId,
      @JsonKey(name: 'stepWithWindowHours') required this.stepWithWindowHours,
      @JsonKey(name: 'media') this.media,
      @JsonKey(name: 'isDeleted') this.isDeleted = false,
      @JsonKey(name: 'isUnavailable') this.isUnavailable = false,
      @JsonKey(name: 'unavailableReason') this.unavailableReason = ''});
  factory _StepDto.fromJson(Map<String, dynamic> json) =>
      _$StepDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'journeyId')
  final String journeyId;
  @override
  @JsonKey(name: 'stepWithWindowHours')
  final num stepWithWindowHours;
  @override
  @JsonKey(name: 'media')
  final StepMediaDto? media;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'isUnavailable')
  final bool isUnavailable;
  @override
  @JsonKey(name: 'unavailableReason')
  final String unavailableReason;

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepDtoCopyWith<_StepDto> get copyWith =>
      __$StepDtoCopyWithImpl<_StepDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.stepWithWindowHours, stepWithWindowHours) ||
                other.stepWithWindowHours == stepWithWindowHours) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUnavailable, isUnavailable) ||
                other.isUnavailable == isUnavailable) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdDate,
      lastUpdated,
      userId,
      journeyId,
      stepWithWindowHours,
      media,
      isDeleted,
      isUnavailable,
      unavailableReason);

  @override
  String toString() {
    return 'StepDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, journeyId: $journeyId, stepWithWindowHours: $stepWithWindowHours, media: $media, isDeleted: $isDeleted, isUnavailable: $isUnavailable, unavailableReason: $unavailableReason)';
  }
}

/// @nodoc
abstract mixin class _$StepDtoCopyWith<$Res> implements $StepDtoCopyWith<$Res> {
  factory _$StepDtoCopyWith(_StepDto value, $Res Function(_StepDto) _then) =
      __$StepDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'createdDate') DateTime createdDate,
      @JsonKey(name: 'lastUpdated') DateTime lastUpdated,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'journeyId') String journeyId,
      @JsonKey(name: 'stepWithWindowHours') num stepWithWindowHours,
      @JsonKey(name: 'media') StepMediaDto? media,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'isUnavailable') bool isUnavailable,
      @JsonKey(name: 'unavailableReason') String unavailableReason});

  @override
  $StepMediaDtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$StepDtoCopyWithImpl<$Res> implements _$StepDtoCopyWith<$Res> {
  __$StepDtoCopyWithImpl(this._self, this._then);

  final _StepDto _self;
  final $Res Function(_StepDto) _then;

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdDate = null,
    Object? lastUpdated = null,
    Object? userId = null,
    Object? journeyId = null,
    Object? stepWithWindowHours = null,
    Object? media = freezed,
    Object? isDeleted = null,
    Object? isUnavailable = null,
    Object? unavailableReason = null,
  }) {
    return _then(_StepDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _self.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      stepWithWindowHours: null == stepWithWindowHours
          ? _self.stepWithWindowHours
          : stepWithWindowHours // ignore: cast_nullable_to_non_nullable
              as num,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto?,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnavailable: null == isUnavailable
          ? _self.isUnavailable
          : isUnavailable // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: null == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoCopyWith<$Res>? get media {
    if (_self.media == null) {
      return null;
    }

    return $StepMediaDtoCopyWith<$Res>(_self.media!, (value) {
      return _then(_self.copyWith(media: value));
    });
  }
}

/// @nodoc
mixin _$StepMediaDto {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'stepId')
  String? get stepId;
  @JsonKey(name: 'mediaType')
  String get mediaType;
  @JsonKey(name: 'originalUrl')
  String get originalUrl;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @JsonKey(name: 'width')
  int? get width;
  @JsonKey(name: 'height')
  int? get height;
  @JsonKey(name: 'size')
  int? get size;
  @JsonKey(name: 'duration')
  num? get duration;
  @JsonKey(name: 'status')
  MediaStatusDto? get status;
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of StepMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StepMediaDtoCopyWith<StepMediaDto> get copyWith =>
      _$StepMediaDtoCopyWithImpl<StepMediaDto>(
          this as StepMediaDto, _$identity);

  /// Serializes this StepMediaDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StepMediaDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.largeUrl, largeUrl) ||
                other.largeUrl == largeUrl) &&
            (identical(other.mediumUrl, mediumUrl) ||
                other.mediumUrl == mediumUrl) &&
            (identical(other.smallUrl, smallUrl) ||
                other.smallUrl == smallUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.videoThumbnailUrl, videoThumbnailUrl) ||
                other.videoThumbnailUrl == videoThumbnailUrl) &&
            (identical(other.bunnyVideoId, bunnyVideoId) ||
                other.bunnyVideoId == bunnyVideoId) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.isImage, isImage) || other.isImage == isImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stepId,
      mediaType,
      originalUrl,
      largeUrl,
      mediumUrl,
      smallUrl,
      thumbnailUrl,
      videoThumbnailUrl,
      bunnyVideoId,
      width,
      height,
      size,
      duration,
      status,
      isVideo,
      isImage);

  @override
  String toString() {
    return 'StepMediaDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }
}

/// @nodoc
abstract mixin class $StepMediaDtoCopyWith<$Res> {
  factory $StepMediaDtoCopyWith(
          StepMediaDto value, $Res Function(StepMediaDto) _then) =
      _$StepMediaDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'stepId') String? stepId,
      @JsonKey(name: 'mediaType') String mediaType,
      @JsonKey(name: 'originalUrl') String originalUrl,
      @JsonKey(name: 'largeUrl') String? largeUrl,
      @JsonKey(name: 'mediumUrl') String? mediumUrl,
      @JsonKey(name: 'smallUrl') String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') String? bunnyVideoId,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'duration') num? duration,
      @JsonKey(name: 'status') MediaStatusDto? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$StepMediaDtoCopyWithImpl<$Res> implements $StepMediaDtoCopyWith<$Res> {
  _$StepMediaDtoCopyWithImpl(this._self, this._then);

  final StepMediaDto _self;
  final $Res Function(StepMediaDto) _then;

  /// Create a copy of StepMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = null,
    Object? originalUrl = null,
    Object? largeUrl = freezed,
    Object? mediumUrl = freezed,
    Object? smallUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoThumbnailUrl = freezed,
    Object? bunnyVideoId = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? isVideo = freezed,
    Object? isImage = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stepId: freezed == stepId
          ? _self.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _self.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeUrl: freezed == largeUrl
          ? _self.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _self.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _self.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _self.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _self.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MediaStatusDto?,
      isVideo: freezed == isVideo
          ? _self.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _self.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StepMediaDto].
extension StepMediaDtoPatterns on StepMediaDto {
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
    TResult Function(_StepMediaDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto() when $default != null:
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
    TResult Function(_StepMediaDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto():
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
    TResult? Function(_StepMediaDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'stepId') String? stepId,
            @JsonKey(name: 'mediaType') String mediaType,
            @JsonKey(name: 'originalUrl') String originalUrl,
            @JsonKey(name: 'largeUrl') String? largeUrl,
            @JsonKey(name: 'mediumUrl') String? mediumUrl,
            @JsonKey(name: 'smallUrl') String? smallUrl,
            @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
            @JsonKey(name: 'videoThumbnailUrl') String? videoThumbnailUrl,
            @JsonKey(name: 'bunnyVideoId') String? bunnyVideoId,
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'size') int? size,
            @JsonKey(name: 'duration') num? duration,
            @JsonKey(name: 'status') MediaStatusDto? status,
            @JsonKey(name: 'isVideo') bool? isVideo,
            @JsonKey(name: 'isImage') bool? isImage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto() when $default != null:
        return $default(
            _that.id,
            _that.stepId,
            _that.mediaType,
            _that.originalUrl,
            _that.largeUrl,
            _that.mediumUrl,
            _that.smallUrl,
            _that.thumbnailUrl,
            _that.videoThumbnailUrl,
            _that.bunnyVideoId,
            _that.width,
            _that.height,
            _that.size,
            _that.duration,
            _that.status,
            _that.isVideo,
            _that.isImage);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'stepId') String? stepId,
            @JsonKey(name: 'mediaType') String mediaType,
            @JsonKey(name: 'originalUrl') String originalUrl,
            @JsonKey(name: 'largeUrl') String? largeUrl,
            @JsonKey(name: 'mediumUrl') String? mediumUrl,
            @JsonKey(name: 'smallUrl') String? smallUrl,
            @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
            @JsonKey(name: 'videoThumbnailUrl') String? videoThumbnailUrl,
            @JsonKey(name: 'bunnyVideoId') String? bunnyVideoId,
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'size') int? size,
            @JsonKey(name: 'duration') num? duration,
            @JsonKey(name: 'status') MediaStatusDto? status,
            @JsonKey(name: 'isVideo') bool? isVideo,
            @JsonKey(name: 'isImage') bool? isImage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto():
        return $default(
            _that.id,
            _that.stepId,
            _that.mediaType,
            _that.originalUrl,
            _that.largeUrl,
            _that.mediumUrl,
            _that.smallUrl,
            _that.thumbnailUrl,
            _that.videoThumbnailUrl,
            _that.bunnyVideoId,
            _that.width,
            _that.height,
            _that.size,
            _that.duration,
            _that.status,
            _that.isVideo,
            _that.isImage);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'stepId') String? stepId,
            @JsonKey(name: 'mediaType') String mediaType,
            @JsonKey(name: 'originalUrl') String originalUrl,
            @JsonKey(name: 'largeUrl') String? largeUrl,
            @JsonKey(name: 'mediumUrl') String? mediumUrl,
            @JsonKey(name: 'smallUrl') String? smallUrl,
            @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
            @JsonKey(name: 'videoThumbnailUrl') String? videoThumbnailUrl,
            @JsonKey(name: 'bunnyVideoId') String? bunnyVideoId,
            @JsonKey(name: 'width') int? width,
            @JsonKey(name: 'height') int? height,
            @JsonKey(name: 'size') int? size,
            @JsonKey(name: 'duration') num? duration,
            @JsonKey(name: 'status') MediaStatusDto? status,
            @JsonKey(name: 'isVideo') bool? isVideo,
            @JsonKey(name: 'isImage') bool? isImage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StepMediaDto() when $default != null:
        return $default(
            _that.id,
            _that.stepId,
            _that.mediaType,
            _that.originalUrl,
            _that.largeUrl,
            _that.mediumUrl,
            _that.smallUrl,
            _that.thumbnailUrl,
            _that.videoThumbnailUrl,
            _that.bunnyVideoId,
            _that.width,
            _that.height,
            _that.size,
            _that.duration,
            _that.status,
            _that.isVideo,
            _that.isImage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StepMediaDto implements StepMediaDto {
  _StepMediaDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'stepId') this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType = '',
      @JsonKey(name: 'originalUrl') this.originalUrl = '',
      @JsonKey(name: 'largeUrl') this.largeUrl,
      @JsonKey(name: 'mediumUrl') this.mediumUrl,
      @JsonKey(name: 'smallUrl') this.smallUrl,
      @JsonKey(name: 'thumbnailUrl') this.thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') this.videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') this.bunnyVideoId,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isVideo') this.isVideo,
      @JsonKey(name: 'isImage') this.isImage});
  factory _StepMediaDto.fromJson(Map<String, dynamic> json) =>
      _$StepMediaDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'stepId')
  final String? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  final String? largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  final String? mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  final String? smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  final String? videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  final String? bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'duration')
  final num? duration;
  @override
  @JsonKey(name: 'status')
  final MediaStatusDto? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  /// Create a copy of StepMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StepMediaDtoCopyWith<_StepMediaDto> get copyWith =>
      __$StepMediaDtoCopyWithImpl<_StepMediaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StepMediaDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StepMediaDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.largeUrl, largeUrl) ||
                other.largeUrl == largeUrl) &&
            (identical(other.mediumUrl, mediumUrl) ||
                other.mediumUrl == mediumUrl) &&
            (identical(other.smallUrl, smallUrl) ||
                other.smallUrl == smallUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.videoThumbnailUrl, videoThumbnailUrl) ||
                other.videoThumbnailUrl == videoThumbnailUrl) &&
            (identical(other.bunnyVideoId, bunnyVideoId) ||
                other.bunnyVideoId == bunnyVideoId) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.isImage, isImage) || other.isImage == isImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stepId,
      mediaType,
      originalUrl,
      largeUrl,
      mediumUrl,
      smallUrl,
      thumbnailUrl,
      videoThumbnailUrl,
      bunnyVideoId,
      width,
      height,
      size,
      duration,
      status,
      isVideo,
      isImage);

  @override
  String toString() {
    return 'StepMediaDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }
}

/// @nodoc
abstract mixin class _$StepMediaDtoCopyWith<$Res>
    implements $StepMediaDtoCopyWith<$Res> {
  factory _$StepMediaDtoCopyWith(
          _StepMediaDto value, $Res Function(_StepMediaDto) _then) =
      __$StepMediaDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'stepId') String? stepId,
      @JsonKey(name: 'mediaType') String mediaType,
      @JsonKey(name: 'originalUrl') String originalUrl,
      @JsonKey(name: 'largeUrl') String? largeUrl,
      @JsonKey(name: 'mediumUrl') String? mediumUrl,
      @JsonKey(name: 'smallUrl') String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') String? bunnyVideoId,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'duration') num? duration,
      @JsonKey(name: 'status') MediaStatusDto? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$StepMediaDtoCopyWithImpl<$Res>
    implements _$StepMediaDtoCopyWith<$Res> {
  __$StepMediaDtoCopyWithImpl(this._self, this._then);

  final _StepMediaDto _self;
  final $Res Function(_StepMediaDto) _then;

  /// Create a copy of StepMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = null,
    Object? originalUrl = null,
    Object? largeUrl = freezed,
    Object? mediumUrl = freezed,
    Object? smallUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoThumbnailUrl = freezed,
    Object? bunnyVideoId = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? isVideo = freezed,
    Object? isImage = freezed,
  }) {
    return _then(_StepMediaDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      stepId: freezed == stepId
          ? _self.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _self.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      largeUrl: freezed == largeUrl
          ? _self.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _self.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _self.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _self.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _self.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MediaStatusDto?,
      isVideo: freezed == isVideo
          ? _self.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _self.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$TestNotificationDto {
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'body')
  String? get body;
  @JsonKey(name: 'userId')
  String? get userId;
  @JsonKey(name: 'topic')
  String? get topic;
  @JsonKey(name: 'deviceTokens')
  List<String>? get deviceTokens;
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @JsonKey(name: 'priority')
  int? get priority;

  /// Create a copy of TestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestNotificationDtoCopyWith<TestNotificationDto> get copyWith =>
      _$TestNotificationDtoCopyWithImpl<TestNotificationDto>(
          this as TestNotificationDto, _$identity);

  /// Serializes this TestNotificationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestNotificationDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality()
                .equals(other.deviceTokens, deviceTokens) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      body,
      userId,
      topic,
      const DeepCollectionEquality().hash(deviceTokens),
      const DeepCollectionEquality().hash(data),
      priority);

  @override
  String toString() {
    return 'TestNotificationDto(title: $title, body: $body, userId: $userId, topic: $topic, deviceTokens: $deviceTokens, data: $data, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class $TestNotificationDtoCopyWith<$Res> {
  factory $TestNotificationDtoCopyWith(
          TestNotificationDto value, $Res Function(TestNotificationDto) _then) =
      _$TestNotificationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'topic') String? topic,
      @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class _$TestNotificationDtoCopyWithImpl<$Res>
    implements $TestNotificationDtoCopyWith<$Res> {
  _$TestNotificationDtoCopyWithImpl(this._self, this._then);

  final TestNotificationDto _self;
  final $Res Function(TestNotificationDto) _then;

  /// Create a copy of TestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? userId = freezed,
    Object? topic = freezed,
    Object? deviceTokens = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _self.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceTokens: freezed == deviceTokens
          ? _self.deviceTokens
          : deviceTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestNotificationDto].
extension TestNotificationDtoPatterns on TestNotificationDto {
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
    TResult Function(_TestNotificationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto() when $default != null:
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
    TResult Function(_TestNotificationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto():
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
    TResult? Function(_TestNotificationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto() when $default != null:
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
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'topic') String? topic,
            @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto() when $default != null:
        return $default(_that.title, _that.body, _that.userId, _that.topic,
            _that.deviceTokens, _that.data, _that.priority);
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
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'topic') String? topic,
            @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto():
        return $default(_that.title, _that.body, _that.userId, _that.topic,
            _that.deviceTokens, _that.data, _that.priority);
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
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'userId') String? userId,
            @JsonKey(name: 'topic') String? topic,
            @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
            @JsonKey(name: 'data') Map<String, String>? data,
            @JsonKey(name: 'priority') int? priority)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationDto() when $default != null:
        return $default(_that.title, _that.body, _that.userId, _that.topic,
            _that.deviceTokens, _that.data, _that.priority);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestNotificationDto implements TestNotificationDto {
  _TestNotificationDto(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'topic') this.topic,
      @JsonKey(name: 'deviceTokens') final List<String>? deviceTokens,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority})
      : _deviceTokens = deviceTokens,
        _data = data;
  factory _TestNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$TestNotificationDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'topic')
  final String? topic;
  final List<String>? _deviceTokens;
  @override
  @JsonKey(name: 'deviceTokens')
  List<String>? get deviceTokens {
    final value = _deviceTokens;
    if (value == null) return null;
    if (_deviceTokens is EqualUnmodifiableListView) return _deviceTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'priority')
  final int? priority;

  /// Create a copy of TestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestNotificationDtoCopyWith<_TestNotificationDto> get copyWith =>
      __$TestNotificationDtoCopyWithImpl<_TestNotificationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestNotificationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestNotificationDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality()
                .equals(other._deviceTokens, _deviceTokens) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      body,
      userId,
      topic,
      const DeepCollectionEquality().hash(_deviceTokens),
      const DeepCollectionEquality().hash(_data),
      priority);

  @override
  String toString() {
    return 'TestNotificationDto(title: $title, body: $body, userId: $userId, topic: $topic, deviceTokens: $deviceTokens, data: $data, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class _$TestNotificationDtoCopyWith<$Res>
    implements $TestNotificationDtoCopyWith<$Res> {
  factory _$TestNotificationDtoCopyWith(_TestNotificationDto value,
          $Res Function(_TestNotificationDto) _then) =
      __$TestNotificationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'topic') String? topic,
      @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class __$TestNotificationDtoCopyWithImpl<$Res>
    implements _$TestNotificationDtoCopyWith<$Res> {
  __$TestNotificationDtoCopyWithImpl(this._self, this._then);

  final _TestNotificationDto _self;
  final $Res Function(_TestNotificationDto) _then;

  /// Create a copy of TestNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? userId = freezed,
    Object? topic = freezed,
    Object? deviceTokens = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_TestNotificationDto(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _self.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceTokens: freezed == deviceTokens
          ? _self._deviceTokens
          : deviceTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$TestNotificationResultDto {
  @JsonKey(name: 'success')
  bool? get success;
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of TestNotificationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestNotificationResultDtoCopyWith<TestNotificationResultDto> get copyWith =>
      _$TestNotificationResultDtoCopyWithImpl<TestNotificationResultDto>(
          this as TestNotificationResultDto, _$identity);

  /// Serializes this TestNotificationResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TestNotificationResultDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @override
  String toString() {
    return 'TestNotificationResultDto(success: $success, message: $message)';
  }
}

/// @nodoc
abstract mixin class $TestNotificationResultDtoCopyWith<$Res> {
  factory $TestNotificationResultDtoCopyWith(TestNotificationResultDto value,
          $Res Function(TestNotificationResultDto) _then) =
      _$TestNotificationResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$TestNotificationResultDtoCopyWithImpl<$Res>
    implements $TestNotificationResultDtoCopyWith<$Res> {
  _$TestNotificationResultDtoCopyWithImpl(this._self, this._then);

  final TestNotificationResultDto _self;
  final $Res Function(TestNotificationResultDto) _then;

  /// Create a copy of TestNotificationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TestNotificationResultDto].
extension TestNotificationResultDtoPatterns on TestNotificationResultDto {
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
    TResult Function(_TestNotificationResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto() when $default != null:
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
    TResult Function(_TestNotificationResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto():
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
    TResult? Function(_TestNotificationResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto() when $default != null:
        return $default(_that.success, _that.message);
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
    TResult Function(@JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto():
        return $default(_that.success, _that.message);
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
    TResult? Function(@JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'message') String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TestNotificationResultDto() when $default != null:
        return $default(_that.success, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TestNotificationResultDto implements TestNotificationResultDto {
  _TestNotificationResultDto(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message});
  factory _TestNotificationResultDto.fromJson(Map<String, dynamic> json) =>
      _$TestNotificationResultDtoFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Create a copy of TestNotificationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestNotificationResultDtoCopyWith<_TestNotificationResultDto>
      get copyWith =>
          __$TestNotificationResultDtoCopyWithImpl<_TestNotificationResultDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TestNotificationResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestNotificationResultDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @override
  String toString() {
    return 'TestNotificationResultDto(success: $success, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$TestNotificationResultDtoCopyWith<$Res>
    implements $TestNotificationResultDtoCopyWith<$Res> {
  factory _$TestNotificationResultDtoCopyWith(_TestNotificationResultDto value,
          $Res Function(_TestNotificationResultDto) _then) =
      __$TestNotificationResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$TestNotificationResultDtoCopyWithImpl<$Res>
    implements _$TestNotificationResultDtoCopyWith<$Res> {
  __$TestNotificationResultDtoCopyWithImpl(this._self, this._then);

  final _TestNotificationResultDto _self;
  final $Res Function(_TestNotificationResultDto) _then;

  /// Create a copy of TestNotificationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_TestNotificationResultDto(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TokenValidationResultDto {
  @JsonKey(name: 'validatedCount')
  int? get validatedCount;
  @JsonKey(name: 'invalidatedCount')
  int? get invalidatedCount;
  @JsonKey(name: 'invalidTokens')
  List<String>? get invalidTokens;

  /// Create a copy of TokenValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenValidationResultDtoCopyWith<TokenValidationResultDto> get copyWith =>
      _$TokenValidationResultDtoCopyWithImpl<TokenValidationResultDto>(
          this as TokenValidationResultDto, _$identity);

  /// Serializes this TokenValidationResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenValidationResultDto &&
            (identical(other.validatedCount, validatedCount) ||
                other.validatedCount == validatedCount) &&
            (identical(other.invalidatedCount, invalidatedCount) ||
                other.invalidatedCount == invalidatedCount) &&
            const DeepCollectionEquality()
                .equals(other.invalidTokens, invalidTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, validatedCount, invalidatedCount,
      const DeepCollectionEquality().hash(invalidTokens));

  @override
  String toString() {
    return 'TokenValidationResultDto(validatedCount: $validatedCount, invalidatedCount: $invalidatedCount, invalidTokens: $invalidTokens)';
  }
}

/// @nodoc
abstract mixin class $TokenValidationResultDtoCopyWith<$Res> {
  factory $TokenValidationResultDtoCopyWith(TokenValidationResultDto value,
          $Res Function(TokenValidationResultDto) _then) =
      _$TokenValidationResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'validatedCount') int? validatedCount,
      @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
      @JsonKey(name: 'invalidTokens') List<String>? invalidTokens});
}

/// @nodoc
class _$TokenValidationResultDtoCopyWithImpl<$Res>
    implements $TokenValidationResultDtoCopyWith<$Res> {
  _$TokenValidationResultDtoCopyWithImpl(this._self, this._then);

  final TokenValidationResultDto _self;
  final $Res Function(TokenValidationResultDto) _then;

  /// Create a copy of TokenValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatedCount = freezed,
    Object? invalidatedCount = freezed,
    Object? invalidTokens = freezed,
  }) {
    return _then(_self.copyWith(
      validatedCount: freezed == validatedCount
          ? _self.validatedCount
          : validatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidatedCount: freezed == invalidatedCount
          ? _self.invalidatedCount
          : invalidatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidTokens: freezed == invalidTokens
          ? _self.invalidTokens
          : invalidTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TokenValidationResultDto].
extension TokenValidationResultDtoPatterns on TokenValidationResultDto {
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
    TResult Function(_TokenValidationResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto() when $default != null:
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
    TResult Function(_TokenValidationResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto():
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
    TResult? Function(_TokenValidationResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto() when $default != null:
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
            @JsonKey(name: 'validatedCount') int? validatedCount,
            @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
            @JsonKey(name: 'invalidTokens') List<String>? invalidTokens)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto() when $default != null:
        return $default(
            _that.validatedCount, _that.invalidatedCount, _that.invalidTokens);
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
            @JsonKey(name: 'validatedCount') int? validatedCount,
            @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
            @JsonKey(name: 'invalidTokens') List<String>? invalidTokens)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto():
        return $default(
            _that.validatedCount, _that.invalidatedCount, _that.invalidTokens);
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
            @JsonKey(name: 'validatedCount') int? validatedCount,
            @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
            @JsonKey(name: 'invalidTokens') List<String>? invalidTokens)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TokenValidationResultDto() when $default != null:
        return $default(
            _that.validatedCount, _that.invalidatedCount, _that.invalidTokens);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TokenValidationResultDto implements TokenValidationResultDto {
  _TokenValidationResultDto(
      {@JsonKey(name: 'validatedCount') this.validatedCount,
      @JsonKey(name: 'invalidatedCount') this.invalidatedCount,
      @JsonKey(name: 'invalidTokens') final List<String>? invalidTokens})
      : _invalidTokens = invalidTokens;
  factory _TokenValidationResultDto.fromJson(Map<String, dynamic> json) =>
      _$TokenValidationResultDtoFromJson(json);

  @override
  @JsonKey(name: 'validatedCount')
  final int? validatedCount;
  @override
  @JsonKey(name: 'invalidatedCount')
  final int? invalidatedCount;
  final List<String>? _invalidTokens;
  @override
  @JsonKey(name: 'invalidTokens')
  List<String>? get invalidTokens {
    final value = _invalidTokens;
    if (value == null) return null;
    if (_invalidTokens is EqualUnmodifiableListView) return _invalidTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TokenValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenValidationResultDtoCopyWith<_TokenValidationResultDto> get copyWith =>
      __$TokenValidationResultDtoCopyWithImpl<_TokenValidationResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenValidationResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenValidationResultDto &&
            (identical(other.validatedCount, validatedCount) ||
                other.validatedCount == validatedCount) &&
            (identical(other.invalidatedCount, invalidatedCount) ||
                other.invalidatedCount == invalidatedCount) &&
            const DeepCollectionEquality()
                .equals(other._invalidTokens, _invalidTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, validatedCount, invalidatedCount,
      const DeepCollectionEquality().hash(_invalidTokens));

  @override
  String toString() {
    return 'TokenValidationResultDto(validatedCount: $validatedCount, invalidatedCount: $invalidatedCount, invalidTokens: $invalidTokens)';
  }
}

/// @nodoc
abstract mixin class _$TokenValidationResultDtoCopyWith<$Res>
    implements $TokenValidationResultDtoCopyWith<$Res> {
  factory _$TokenValidationResultDtoCopyWith(_TokenValidationResultDto value,
          $Res Function(_TokenValidationResultDto) _then) =
      __$TokenValidationResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'validatedCount') int? validatedCount,
      @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
      @JsonKey(name: 'invalidTokens') List<String>? invalidTokens});
}

/// @nodoc
class __$TokenValidationResultDtoCopyWithImpl<$Res>
    implements _$TokenValidationResultDtoCopyWith<$Res> {
  __$TokenValidationResultDtoCopyWithImpl(this._self, this._then);

  final _TokenValidationResultDto _self;
  final $Res Function(_TokenValidationResultDto) _then;

  /// Create a copy of TokenValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? validatedCount = freezed,
    Object? invalidatedCount = freezed,
    Object? invalidTokens = freezed,
  }) {
    return _then(_TokenValidationResultDto(
      validatedCount: freezed == validatedCount
          ? _self.validatedCount
          : validatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidatedCount: freezed == invalidatedCount
          ? _self.invalidatedCount
          : invalidatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      invalidTokens: freezed == invalidTokens
          ? _self._invalidTokens
          : invalidTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateFeedbackStatusDto {
  @JsonKey(name: 'status')
  FeedbackStatusDto get status;
  @JsonKey(name: 'adminResponse')
  String? get adminResponse;

  /// Create a copy of UpdateFeedbackStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateFeedbackStatusDtoCopyWith<UpdateFeedbackStatusDto> get copyWith =>
      _$UpdateFeedbackStatusDtoCopyWithImpl<UpdateFeedbackStatusDto>(
          this as UpdateFeedbackStatusDto, _$identity);

  /// Serializes this UpdateFeedbackStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateFeedbackStatusDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, adminResponse);

  @override
  String toString() {
    return 'UpdateFeedbackStatusDto(status: $status, adminResponse: $adminResponse)';
  }
}

/// @nodoc
abstract mixin class $UpdateFeedbackStatusDtoCopyWith<$Res> {
  factory $UpdateFeedbackStatusDtoCopyWith(UpdateFeedbackStatusDto value,
          $Res Function(UpdateFeedbackStatusDto) _then) =
      _$UpdateFeedbackStatusDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') FeedbackStatusDto status,
      @JsonKey(name: 'adminResponse') String? adminResponse});
}

/// @nodoc
class _$UpdateFeedbackStatusDtoCopyWithImpl<$Res>
    implements $UpdateFeedbackStatusDtoCopyWith<$Res> {
  _$UpdateFeedbackStatusDtoCopyWithImpl(this._self, this._then);

  final UpdateFeedbackStatusDto _self;
  final $Res Function(UpdateFeedbackStatusDto) _then;

  /// Create a copy of UpdateFeedbackStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? adminResponse = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusDto,
      adminResponse: freezed == adminResponse
          ? _self.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateFeedbackStatusDto].
extension UpdateFeedbackStatusDtoPatterns on UpdateFeedbackStatusDto {
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
    TResult Function(_UpdateFeedbackStatusDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto() when $default != null:
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
    TResult Function(_UpdateFeedbackStatusDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto():
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
    TResult? Function(_UpdateFeedbackStatusDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'adminResponse') String? adminResponse)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto() when $default != null:
        return $default(_that.status, _that.adminResponse);
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
    TResult Function(@JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'adminResponse') String? adminResponse)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto():
        return $default(_that.status, _that.adminResponse);
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
    TResult? Function(@JsonKey(name: 'status') FeedbackStatusDto status,
            @JsonKey(name: 'adminResponse') String? adminResponse)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateFeedbackStatusDto() when $default != null:
        return $default(_that.status, _that.adminResponse);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateFeedbackStatusDto implements UpdateFeedbackStatusDto {
  _UpdateFeedbackStatusDto(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'adminResponse') this.adminResponse});
  factory _UpdateFeedbackStatusDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFeedbackStatusDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final FeedbackStatusDto status;
  @override
  @JsonKey(name: 'adminResponse')
  final String? adminResponse;

  /// Create a copy of UpdateFeedbackStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateFeedbackStatusDtoCopyWith<_UpdateFeedbackStatusDto> get copyWith =>
      __$UpdateFeedbackStatusDtoCopyWithImpl<_UpdateFeedbackStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateFeedbackStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFeedbackStatusDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, adminResponse);

  @override
  String toString() {
    return 'UpdateFeedbackStatusDto(status: $status, adminResponse: $adminResponse)';
  }
}

/// @nodoc
abstract mixin class _$UpdateFeedbackStatusDtoCopyWith<$Res>
    implements $UpdateFeedbackStatusDtoCopyWith<$Res> {
  factory _$UpdateFeedbackStatusDtoCopyWith(_UpdateFeedbackStatusDto value,
          $Res Function(_UpdateFeedbackStatusDto) _then) =
      __$UpdateFeedbackStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') FeedbackStatusDto status,
      @JsonKey(name: 'adminResponse') String? adminResponse});
}

/// @nodoc
class __$UpdateFeedbackStatusDtoCopyWithImpl<$Res>
    implements _$UpdateFeedbackStatusDtoCopyWith<$Res> {
  __$UpdateFeedbackStatusDtoCopyWithImpl(this._self, this._then);

  final _UpdateFeedbackStatusDto _self;
  final $Res Function(_UpdateFeedbackStatusDto) _then;

  /// Create a copy of UpdateFeedbackStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? adminResponse = freezed,
  }) {
    return _then(_UpdateFeedbackStatusDto(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusDto,
      adminResponse: freezed == adminResponse
          ? _self.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UpdateJourneyDto {
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of UpdateJourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateJourneyDtoCopyWith<UpdateJourneyDto> get copyWith =>
      _$UpdateJourneyDtoCopyWithImpl<UpdateJourneyDto>(
          this as UpdateJourneyDto, _$identity);

  /// Serializes this UpdateJourneyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateJourneyDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'UpdateJourneyDto(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $UpdateJourneyDtoCopyWith<$Res> {
  factory $UpdateJourneyDtoCopyWith(
          UpdateJourneyDto value, $Res Function(UpdateJourneyDto) _then) =
      _$UpdateJourneyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$UpdateJourneyDtoCopyWithImpl<$Res>
    implements $UpdateJourneyDtoCopyWith<$Res> {
  _$UpdateJourneyDtoCopyWithImpl(this._self, this._then);

  final UpdateJourneyDto _self;
  final $Res Function(UpdateJourneyDto) _then;

  /// Create a copy of UpdateJourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateJourneyDto].
extension UpdateJourneyDtoPatterns on UpdateJourneyDto {
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
    TResult Function(_UpdateJourneyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto() when $default != null:
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
    TResult Function(_UpdateJourneyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto():
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
    TResult? Function(_UpdateJourneyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto() when $default != null:
        return $default(_that.title, _that.description);
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
    TResult Function(@JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto():
        return $default(_that.title, _that.description);
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
    TResult? Function(@JsonKey(name: 'title') String title,
            @JsonKey(name: 'description') String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateJourneyDto() when $default != null:
        return $default(_that.title, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateJourneyDto implements UpdateJourneyDto {
  _UpdateJourneyDto(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description});
  factory _UpdateJourneyDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateJourneyDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Create a copy of UpdateJourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateJourneyDtoCopyWith<_UpdateJourneyDto> get copyWith =>
      __$UpdateJourneyDtoCopyWithImpl<_UpdateJourneyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateJourneyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateJourneyDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'UpdateJourneyDto(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$UpdateJourneyDtoCopyWith<$Res>
    implements $UpdateJourneyDtoCopyWith<$Res> {
  factory _$UpdateJourneyDtoCopyWith(
          _UpdateJourneyDto value, $Res Function(_UpdateJourneyDto) _then) =
      __$UpdateJourneyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$UpdateJourneyDtoCopyWithImpl<$Res>
    implements _$UpdateJourneyDtoCopyWith<$Res> {
  __$UpdateJourneyDtoCopyWithImpl(this._self, this._then);

  final _UpdateJourneyDto _self;
  final $Res Function(_UpdateJourneyDto) _then;

  /// Create a copy of UpdateJourneyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_UpdateJourneyDto(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePreferencesDto {
  @JsonKey(name: 'pushNotifications')
  bool? get pushNotifications;
  @JsonKey(name: 'mentions')
  bool? get mentions;
  @JsonKey(name: 'oldStepNotifications')
  bool? get oldStepNotifications;
  @JsonKey(name: 'trendingStepSuggestions')
  bool? get trendingStepSuggestions;
  @JsonKey(name: 'trendingJourneySuggestions')
  bool? get trendingJourneySuggestions;
  @JsonKey(name: 'followSuggestions')
  bool? get followSuggestions;

  /// Create a copy of UpdatePreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePreferencesDtoCopyWith<UpdatePreferencesDto> get copyWith =>
      _$UpdatePreferencesDtoCopyWithImpl<UpdatePreferencesDto>(
          this as UpdatePreferencesDto, _$identity);

  /// Serializes this UpdatePreferencesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePreferencesDto &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.oldStepNotifications, oldStepNotifications) ||
                other.oldStepNotifications == oldStepNotifications) &&
            (identical(
                    other.trendingStepSuggestions, trendingStepSuggestions) ||
                other.trendingStepSuggestions == trendingStepSuggestions) &&
            (identical(other.trendingJourneySuggestions,
                    trendingJourneySuggestions) ||
                other.trendingJourneySuggestions ==
                    trendingJourneySuggestions) &&
            (identical(other.followSuggestions, followSuggestions) ||
                other.followSuggestions == followSuggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pushNotifications,
      mentions,
      oldStepNotifications,
      trendingStepSuggestions,
      trendingJourneySuggestions,
      followSuggestions);

  @override
  String toString() {
    return 'UpdatePreferencesDto(pushNotifications: $pushNotifications, mentions: $mentions, oldStepNotifications: $oldStepNotifications, trendingStepSuggestions: $trendingStepSuggestions, trendingJourneySuggestions: $trendingJourneySuggestions, followSuggestions: $followSuggestions)';
  }
}

/// @nodoc
abstract mixin class $UpdatePreferencesDtoCopyWith<$Res> {
  factory $UpdatePreferencesDtoCopyWith(UpdatePreferencesDto value,
          $Res Function(UpdatePreferencesDto) _then) =
      _$UpdatePreferencesDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'pushNotifications') bool? pushNotifications,
      @JsonKey(name: 'mentions') bool? mentions,
      @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      bool? trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') bool? followSuggestions});
}

/// @nodoc
class _$UpdatePreferencesDtoCopyWithImpl<$Res>
    implements $UpdatePreferencesDtoCopyWith<$Res> {
  _$UpdatePreferencesDtoCopyWithImpl(this._self, this._then);

  final UpdatePreferencesDto _self;
  final $Res Function(UpdatePreferencesDto) _then;

  /// Create a copy of UpdatePreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotifications = freezed,
    Object? mentions = freezed,
    Object? oldStepNotifications = freezed,
    Object? trendingStepSuggestions = freezed,
    Object? trendingJourneySuggestions = freezed,
    Object? followSuggestions = freezed,
  }) {
    return _then(_self.copyWith(
      pushNotifications: freezed == pushNotifications
          ? _self.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _self.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldStepNotifications: freezed == oldStepNotifications
          ? _self.oldStepNotifications
          : oldStepNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingStepSuggestions: freezed == trendingStepSuggestions
          ? _self.trendingStepSuggestions
          : trendingStepSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingJourneySuggestions: freezed == trendingJourneySuggestions
          ? _self.trendingJourneySuggestions
          : trendingJourneySuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      followSuggestions: freezed == followSuggestions
          ? _self.followSuggestions
          : followSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePreferencesDto].
extension UpdatePreferencesDtoPatterns on UpdatePreferencesDto {
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
    TResult Function(_UpdatePreferencesDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto() when $default != null:
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
    TResult Function(_UpdatePreferencesDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto():
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
    TResult? Function(_UpdatePreferencesDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto() when $default != null:
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
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto() when $default != null:
        return $default(
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
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
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto():
        return $default(
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
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
            @JsonKey(name: 'pushNotifications') bool? pushNotifications,
            @JsonKey(name: 'mentions') bool? mentions,
            @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
            @JsonKey(name: 'trendingStepSuggestions')
            bool? trendingStepSuggestions,
            @JsonKey(name: 'trendingJourneySuggestions')
            bool? trendingJourneySuggestions,
            @JsonKey(name: 'followSuggestions') bool? followSuggestions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePreferencesDto() when $default != null:
        return $default(
            _that.pushNotifications,
            _that.mentions,
            _that.oldStepNotifications,
            _that.trendingStepSuggestions,
            _that.trendingJourneySuggestions,
            _that.followSuggestions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePreferencesDto implements UpdatePreferencesDto {
  _UpdatePreferencesDto(
      {@JsonKey(name: 'pushNotifications') this.pushNotifications,
      @JsonKey(name: 'mentions') this.mentions,
      @JsonKey(name: 'oldStepNotifications') this.oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') this.trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      this.trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') this.followSuggestions});
  factory _UpdatePreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePreferencesDtoFromJson(json);

  @override
  @JsonKey(name: 'pushNotifications')
  final bool? pushNotifications;
  @override
  @JsonKey(name: 'mentions')
  final bool? mentions;
  @override
  @JsonKey(name: 'oldStepNotifications')
  final bool? oldStepNotifications;
  @override
  @JsonKey(name: 'trendingStepSuggestions')
  final bool? trendingStepSuggestions;
  @override
  @JsonKey(name: 'trendingJourneySuggestions')
  final bool? trendingJourneySuggestions;
  @override
  @JsonKey(name: 'followSuggestions')
  final bool? followSuggestions;

  /// Create a copy of UpdatePreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePreferencesDtoCopyWith<_UpdatePreferencesDto> get copyWith =>
      __$UpdatePreferencesDtoCopyWithImpl<_UpdatePreferencesDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePreferencesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePreferencesDto &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.oldStepNotifications, oldStepNotifications) ||
                other.oldStepNotifications == oldStepNotifications) &&
            (identical(
                    other.trendingStepSuggestions, trendingStepSuggestions) ||
                other.trendingStepSuggestions == trendingStepSuggestions) &&
            (identical(other.trendingJourneySuggestions,
                    trendingJourneySuggestions) ||
                other.trendingJourneySuggestions ==
                    trendingJourneySuggestions) &&
            (identical(other.followSuggestions, followSuggestions) ||
                other.followSuggestions == followSuggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pushNotifications,
      mentions,
      oldStepNotifications,
      trendingStepSuggestions,
      trendingJourneySuggestions,
      followSuggestions);

  @override
  String toString() {
    return 'UpdatePreferencesDto(pushNotifications: $pushNotifications, mentions: $mentions, oldStepNotifications: $oldStepNotifications, trendingStepSuggestions: $trendingStepSuggestions, trendingJourneySuggestions: $trendingJourneySuggestions, followSuggestions: $followSuggestions)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePreferencesDtoCopyWith<$Res>
    implements $UpdatePreferencesDtoCopyWith<$Res> {
  factory _$UpdatePreferencesDtoCopyWith(_UpdatePreferencesDto value,
          $Res Function(_UpdatePreferencesDto) _then) =
      __$UpdatePreferencesDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pushNotifications') bool? pushNotifications,
      @JsonKey(name: 'mentions') bool? mentions,
      @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
      @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
      @JsonKey(name: 'trendingJourneySuggestions')
      bool? trendingJourneySuggestions,
      @JsonKey(name: 'followSuggestions') bool? followSuggestions});
}

/// @nodoc
class __$UpdatePreferencesDtoCopyWithImpl<$Res>
    implements _$UpdatePreferencesDtoCopyWith<$Res> {
  __$UpdatePreferencesDtoCopyWithImpl(this._self, this._then);

  final _UpdatePreferencesDto _self;
  final $Res Function(_UpdatePreferencesDto) _then;

  /// Create a copy of UpdatePreferencesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pushNotifications = freezed,
    Object? mentions = freezed,
    Object? oldStepNotifications = freezed,
    Object? trendingStepSuggestions = freezed,
    Object? trendingJourneySuggestions = freezed,
    Object? followSuggestions = freezed,
  }) {
    return _then(_UpdatePreferencesDto(
      pushNotifications: freezed == pushNotifications
          ? _self.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _self.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldStepNotifications: freezed == oldStepNotifications
          ? _self.oldStepNotifications
          : oldStepNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingStepSuggestions: freezed == trendingStepSuggestions
          ? _self.trendingStepSuggestions
          : trendingStepSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingJourneySuggestions: freezed == trendingJourneySuggestions
          ? _self.trendingJourneySuggestions
          : trendingJourneySuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      followSuggestions: freezed == followSuggestions
          ? _self.followSuggestions
          : followSuggestions // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$UpdateStepDto {
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of UpdateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateStepDtoCopyWith<UpdateStepDto> get copyWith =>
      _$UpdateStepDtoCopyWithImpl<UpdateStepDto>(
          this as UpdateStepDto, _$identity);

  /// Serializes this UpdateStepDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateStepDto &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'UpdateStepDto(content: $content)';
  }
}

/// @nodoc
abstract mixin class $UpdateStepDtoCopyWith<$Res> {
  factory $UpdateStepDtoCopyWith(
          UpdateStepDto value, $Res Function(UpdateStepDto) _then) =
      _$UpdateStepDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$UpdateStepDtoCopyWithImpl<$Res>
    implements $UpdateStepDtoCopyWith<$Res> {
  _$UpdateStepDtoCopyWithImpl(this._self, this._then);

  final UpdateStepDto _self;
  final $Res Function(UpdateStepDto) _then;

  /// Create a copy of UpdateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateStepDto].
extension UpdateStepDtoPatterns on UpdateStepDto {
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
    TResult Function(_UpdateStepDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto() when $default != null:
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
    TResult Function(_UpdateStepDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto():
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
    TResult? Function(_UpdateStepDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') String content)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto() when $default != null:
        return $default(_that.content);
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
    TResult Function(@JsonKey(name: 'content') String content) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto():
        return $default(_that.content);
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
    TResult? Function(@JsonKey(name: 'content') String content)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStepDto() when $default != null:
        return $default(_that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateStepDto implements UpdateStepDto {
  _UpdateStepDto({@JsonKey(name: 'content') required this.content});
  factory _UpdateStepDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStepDtoFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  /// Create a copy of UpdateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateStepDtoCopyWith<_UpdateStepDto> get copyWith =>
      __$UpdateStepDtoCopyWithImpl<_UpdateStepDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateStepDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateStepDto &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'UpdateStepDto(content: $content)';
  }
}

/// @nodoc
abstract mixin class _$UpdateStepDtoCopyWith<$Res>
    implements $UpdateStepDtoCopyWith<$Res> {
  factory _$UpdateStepDtoCopyWith(
          _UpdateStepDto value, $Res Function(_UpdateStepDto) _then) =
      __$UpdateStepDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$UpdateStepDtoCopyWithImpl<$Res>
    implements _$UpdateStepDtoCopyWith<$Res> {
  __$UpdateStepDtoCopyWithImpl(this._self, this._then);

  final _UpdateStepDto _self;
  final $Res Function(_UpdateStepDto) _then;

  /// Create a copy of UpdateStepDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
  }) {
    return _then(_UpdateStepDto(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UpdateUserStatusDto {
  @JsonKey(name: 'status')
  UserStatusDto get status;
  @JsonKey(name: 'reason')
  String? get reason;
  @JsonKey(name: 'additionalNotes')
  String? get additionalNotes;

  /// Create a copy of UpdateUserStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserStatusDtoCopyWith<UpdateUserStatusDto> get copyWith =>
      _$UpdateUserStatusDtoCopyWithImpl<UpdateUserStatusDto>(
          this as UpdateUserStatusDto, _$identity);

  /// Serializes this UpdateUserStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserStatusDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, reason, additionalNotes);

  @override
  String toString() {
    return 'UpdateUserStatusDto(status: $status, reason: $reason, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserStatusDtoCopyWith<$Res> {
  factory $UpdateUserStatusDtoCopyWith(
          UpdateUserStatusDto value, $Res Function(UpdateUserStatusDto) _then) =
      _$UpdateUserStatusDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') UserStatusDto status,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class _$UpdateUserStatusDtoCopyWithImpl<$Res>
    implements $UpdateUserStatusDtoCopyWith<$Res> {
  _$UpdateUserStatusDtoCopyWithImpl(this._self, this._then);

  final UpdateUserStatusDto _self;
  final $Res Function(UpdateUserStatusDto) _then;

  /// Create a copy of UpdateUserStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? reason = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatusDto,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateUserStatusDto].
extension UpdateUserStatusDtoPatterns on UpdateUserStatusDto {
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
    TResult Function(_UpdateUserStatusDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto() when $default != null:
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
    TResult Function(_UpdateUserStatusDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto():
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
    TResult? Function(_UpdateUserStatusDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto() when $default != null:
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
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'reason') String? reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto() when $default != null:
        return $default(_that.status, _that.reason, _that.additionalNotes);
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
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'reason') String? reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto():
        return $default(_that.status, _that.reason, _that.additionalNotes);
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
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'reason') String? reason,
            @JsonKey(name: 'additionalNotes') String? additionalNotes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserStatusDto() when $default != null:
        return $default(_that.status, _that.reason, _that.additionalNotes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateUserStatusDto implements UpdateUserStatusDto {
  _UpdateUserStatusDto(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'additionalNotes') this.additionalNotes});
  factory _UpdateUserStatusDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserStatusDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final UserStatusDto status;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'additionalNotes')
  final String? additionalNotes;

  /// Create a copy of UpdateUserStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserStatusDtoCopyWith<_UpdateUserStatusDto> get copyWith =>
      __$UpdateUserStatusDtoCopyWithImpl<_UpdateUserStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserStatusDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, reason, additionalNotes);

  @override
  String toString() {
    return 'UpdateUserStatusDto(status: $status, reason: $reason, additionalNotes: $additionalNotes)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserStatusDtoCopyWith<$Res>
    implements $UpdateUserStatusDtoCopyWith<$Res> {
  factory _$UpdateUserStatusDtoCopyWith(_UpdateUserStatusDto value,
          $Res Function(_UpdateUserStatusDto) _then) =
      __$UpdateUserStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') UserStatusDto status,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'additionalNotes') String? additionalNotes});
}

/// @nodoc
class __$UpdateUserStatusDtoCopyWithImpl<$Res>
    implements _$UpdateUserStatusDtoCopyWith<$Res> {
  __$UpdateUserStatusDtoCopyWithImpl(this._self, this._then);

  final _UpdateUserStatusDto _self;
  final $Res Function(_UpdateUserStatusDto) _then;

  /// Create a copy of UpdateUserStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? reason = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(_UpdateUserStatusDto(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatusDto,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNotes: freezed == additionalNotes
          ? _self.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserDetailDto {
  @JsonKey(name: 'user')
  UserDto get user;
  @JsonKey(name: 'followingStatus')
  FollowingStatusEnumDto get followingStatus;

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailDtoCopyWith<UserDetailDto> get copyWith =>
      _$UserDetailDtoCopyWithImpl<UserDetailDto>(
          this as UserDetailDto, _$identity);

  /// Serializes this UserDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followingStatus, followingStatus) ||
                other.followingStatus == followingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, followingStatus);

  @override
  String toString() {
    return 'UserDetailDto(user: $user, followingStatus: $followingStatus)';
  }
}

/// @nodoc
abstract mixin class $UserDetailDtoCopyWith<$Res> {
  factory $UserDetailDtoCopyWith(
          UserDetailDto value, $Res Function(UserDetailDto) _then) =
      _$UserDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'followingStatus')
      FollowingStatusEnumDto followingStatus});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailDtoCopyWithImpl<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  _$UserDetailDtoCopyWithImpl(this._self, this._then);

  final UserDetailDto _self;
  final $Res Function(UserDetailDto) _then;

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followingStatus = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      followingStatus: null == followingStatus
          ? _self.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
    ));
  }

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserDetailDto].
extension UserDetailDtoPatterns on UserDetailDto {
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
    TResult Function(_UserDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto() when $default != null:
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
    TResult Function(_UserDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto():
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
    TResult? Function(_UserDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto() when $default != null:
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'followingStatus')
            FollowingStatusEnumDto followingStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto() when $default != null:
        return $default(_that.user, _that.followingStatus);
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'followingStatus')
            FollowingStatusEnumDto followingStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto():
        return $default(_that.user, _that.followingStatus);
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
            @JsonKey(name: 'user') UserDto user,
            @JsonKey(name: 'followingStatus')
            FollowingStatusEnumDto followingStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDetailDto() when $default != null:
        return $default(_that.user, _that.followingStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserDetailDto implements UserDetailDto {
  _UserDetailDto(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'followingStatus')
      this.followingStatus = FollowingStatusEnumDto.notFollowing});
  factory _UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserDto user;
  @override
  @JsonKey(name: 'followingStatus')
  final FollowingStatusEnumDto followingStatus;

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDetailDtoCopyWith<_UserDetailDto> get copyWith =>
      __$UserDetailDtoCopyWithImpl<_UserDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followingStatus, followingStatus) ||
                other.followingStatus == followingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, followingStatus);

  @override
  String toString() {
    return 'UserDetailDto(user: $user, followingStatus: $followingStatus)';
  }
}

/// @nodoc
abstract mixin class _$UserDetailDtoCopyWith<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  factory _$UserDetailDtoCopyWith(
          _UserDetailDto value, $Res Function(_UserDetailDto) _then) =
      __$UserDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDto user,
      @JsonKey(name: 'followingStatus')
      FollowingStatusEnumDto followingStatus});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$UserDetailDtoCopyWithImpl<$Res>
    implements _$UserDetailDtoCopyWith<$Res> {
  __$UserDetailDtoCopyWithImpl(this._self, this._then);

  final _UserDetailDto _self;
  final $Res Function(_UserDetailDto) _then;

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? followingStatus = null,
  }) {
    return _then(_UserDetailDto(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      followingStatus: null == followingStatus
          ? _self.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatusEnumDto,
    ));
  }

  /// Create a copy of UserDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'displayName')
  String get displayName;
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'profilePictureUrl')
  String get profilePictureUrl;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'age')
  int? get age;
  @JsonKey(name: 'isPrivate')
  bool get isPrivate;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @JsonKey(name: 'status')
  UserStatusDto get status;
  @JsonKey(name: 'isRestricted')
  bool get isRestricted;
  @JsonKey(name: 'role')
  UserRoleDto? get role;

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
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      displayName,
      username,
      description,
      profilePictureUrl,
      phoneNumber,
      email,
      age,
      isPrivate,
      createdDate,
      lastUpdated,
      status,
      isRestricted,
      role);

  @override
  String toString() {
    return 'UserDto(id: $id, displayName: $displayName, username: $username, description: $description, profilePictureUrl: $profilePictureUrl, phoneNumber: $phoneNumber, email: $email, age: $age, isPrivate: $isPrivate, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, isRestricted: $isRestricted, role: $role)';
  }
}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) =
      _$UserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'profilePictureUrl') String profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') UserStatusDto status,
      @JsonKey(name: 'isRestricted') bool isRestricted,
      @JsonKey(name: 'role') UserRoleDto? role});
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
    Object? id = null,
    Object? displayName = null,
    Object? username = null,
    Object? description = null,
    Object? profilePictureUrl = null,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = null,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = null,
    Object? isRestricted = null,
    Object? role = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _self.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatusDto,
      isRestricted: null == isRestricted
          ? _self.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleDto?,
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'profilePictureUrl') String profilePictureUrl,
            @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'age') int? age,
            @JsonKey(name: 'isPrivate') bool isPrivate,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'isRestricted') bool isRestricted,
            @JsonKey(name: 'role') UserRoleDto? role)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.displayName,
            _that.username,
            _that.description,
            _that.profilePictureUrl,
            _that.phoneNumber,
            _that.email,
            _that.age,
            _that.isPrivate,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.isRestricted,
            _that.role);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'profilePictureUrl') String profilePictureUrl,
            @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'age') int? age,
            @JsonKey(name: 'isPrivate') bool isPrivate,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'isRestricted') bool isRestricted,
            @JsonKey(name: 'role') UserRoleDto? role)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
        return $default(
            _that.id,
            _that.displayName,
            _that.username,
            _that.description,
            _that.profilePictureUrl,
            _that.phoneNumber,
            _that.email,
            _that.age,
            _that.isPrivate,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.isRestricted,
            _that.role);
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
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'displayName') String displayName,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'description') String description,
            @JsonKey(name: 'profilePictureUrl') String profilePictureUrl,
            @JsonKey(name: 'phoneNumber') String? phoneNumber,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'age') int? age,
            @JsonKey(name: 'isPrivate') bool isPrivate,
            @JsonKey(name: 'createdDate') DateTime? createdDate,
            @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
            @JsonKey(name: 'status') UserStatusDto status,
            @JsonKey(name: 'isRestricted') bool isRestricted,
            @JsonKey(name: 'role') UserRoleDto? role)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(
            _that.id,
            _that.displayName,
            _that.username,
            _that.description,
            _that.profilePictureUrl,
            _that.phoneNumber,
            _that.email,
            _that.age,
            _that.isPrivate,
            _that.createdDate,
            _that.lastUpdated,
            _that.status,
            _that.isRestricted,
            _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserDto implements UserDto {
  _UserDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'displayName') this.displayName = '',
      @JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'profilePictureUrl') this.profilePictureUrl = '',
      @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'isPrivate') this.isPrivate = false,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status = UserStatusDto.active,
      @JsonKey(name: 'isRestricted') this.isRestricted = false,
      @JsonKey(name: 'role') this.role});
  factory _UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'displayName')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'profilePictureUrl')
  final String profilePictureUrl;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'age')
  final int? age;
  @override
  @JsonKey(name: 'isPrivate')
  final bool isPrivate;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final UserStatusDto status;
  @override
  @JsonKey(name: 'isRestricted')
  final bool isRestricted;
  @override
  @JsonKey(name: 'role')
  final UserRoleDto? role;

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
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      displayName,
      username,
      description,
      profilePictureUrl,
      phoneNumber,
      email,
      age,
      isPrivate,
      createdDate,
      lastUpdated,
      status,
      isRestricted,
      role);

  @override
  String toString() {
    return 'UserDto(id: $id, displayName: $displayName, username: $username, description: $description, profilePictureUrl: $profilePictureUrl, phoneNumber: $phoneNumber, email: $email, age: $age, isPrivate: $isPrivate, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, isRestricted: $isRestricted, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) =
      __$UserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'profilePictureUrl') String profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') UserStatusDto status,
      @JsonKey(name: 'isRestricted') bool isRestricted,
      @JsonKey(name: 'role') UserRoleDto? role});
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
    Object? id = null,
    Object? displayName = null,
    Object? username = null,
    Object? description = null,
    Object? profilePictureUrl = null,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = null,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = null,
    Object? isRestricted = null,
    Object? role = freezed,
  }) {
    return _then(_UserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _self.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: freezed == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatusDto,
      isRestricted: null == isRestricted
          ? _self.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRoleDto?,
    ));
  }
}

/// @nodoc
mixin _$VideoPreSignedUrlDto {
  @JsonKey(name: 'authorizationSignature')
  String get authorizationSignature;
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire;
  @JsonKey(name: 'videoGuid')
  String? get videoGuid;
  @JsonKey(name: 'libraryId')
  int? get libraryId;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'collectionId')
  String get collectionId;
  @JsonKey(name: 'media')
  StepMediaDto? get media;

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoPreSignedUrlDtoCopyWith<VideoPreSignedUrlDto> get copyWith =>
      _$VideoPreSignedUrlDtoCopyWithImpl<VideoPreSignedUrlDto>(
          this as VideoPreSignedUrlDto, _$identity);

  /// Serializes this VideoPreSignedUrlDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoPreSignedUrlDto &&
            (identical(other.authorizationSignature, authorizationSignature) ||
                other.authorizationSignature == authorizationSignature) &&
            (identical(other.authorizationExpire, authorizationExpire) ||
                other.authorizationExpire == authorizationExpire) &&
            (identical(other.videoGuid, videoGuid) ||
                other.videoGuid == videoGuid) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authorizationSignature,
      authorizationExpire, videoGuid, libraryId, title, collectionId, media);

  @override
  String toString() {
    return 'VideoPreSignedUrlDto(authorizationSignature: $authorizationSignature, authorizationExpire: $authorizationExpire, videoGuid: $videoGuid, libraryId: $libraryId, title: $title, collectionId: $collectionId, media: $media)';
  }
}

/// @nodoc
abstract mixin class $VideoPreSignedUrlDtoCopyWith<$Res> {
  factory $VideoPreSignedUrlDtoCopyWith(VideoPreSignedUrlDto value,
          $Res Function(VideoPreSignedUrlDto) _then) =
      _$VideoPreSignedUrlDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') String? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'collectionId') String collectionId,
      @JsonKey(name: 'media') StepMediaDto? media});

  $StepMediaDtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$VideoPreSignedUrlDtoCopyWithImpl<$Res>
    implements $VideoPreSignedUrlDtoCopyWith<$Res> {
  _$VideoPreSignedUrlDtoCopyWithImpl(this._self, this._then);

  final VideoPreSignedUrlDto _self;
  final $Res Function(VideoPreSignedUrlDto) _then;

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = null,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = null,
    Object? collectionId = null,
    Object? media = freezed,
  }) {
    return _then(_self.copyWith(
      authorizationSignature: null == authorizationSignature
          ? _self.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationExpire: freezed == authorizationExpire
          ? _self.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _self.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryId: freezed == libraryId
          ? _self.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto?,
    ));
  }

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoCopyWith<$Res>? get media {
    if (_self.media == null) {
      return null;
    }

    return $StepMediaDtoCopyWith<$Res>(_self.media!, (value) {
      return _then(_self.copyWith(media: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VideoPreSignedUrlDto].
extension VideoPreSignedUrlDtoPatterns on VideoPreSignedUrlDto {
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
    TResult Function(_VideoPreSignedUrlDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto() when $default != null:
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
    TResult Function(_VideoPreSignedUrlDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto():
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
    TResult? Function(_VideoPreSignedUrlDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto() when $default != null:
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
            @JsonKey(name: 'authorizationSignature')
            String authorizationSignature,
            @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'libraryId') int? libraryId,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'collectionId') String collectionId,
            @JsonKey(name: 'media') StepMediaDto? media)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto() when $default != null:
        return $default(
            _that.authorizationSignature,
            _that.authorizationExpire,
            _that.videoGuid,
            _that.libraryId,
            _that.title,
            _that.collectionId,
            _that.media);
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
            @JsonKey(name: 'authorizationSignature')
            String authorizationSignature,
            @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'libraryId') int? libraryId,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'collectionId') String collectionId,
            @JsonKey(name: 'media') StepMediaDto? media)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto():
        return $default(
            _that.authorizationSignature,
            _that.authorizationExpire,
            _that.videoGuid,
            _that.libraryId,
            _that.title,
            _that.collectionId,
            _that.media);
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
            @JsonKey(name: 'authorizationSignature')
            String authorizationSignature,
            @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'libraryId') int? libraryId,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'collectionId') String collectionId,
            @JsonKey(name: 'media') StepMediaDto? media)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoPreSignedUrlDto() when $default != null:
        return $default(
            _that.authorizationSignature,
            _that.authorizationExpire,
            _that.videoGuid,
            _that.libraryId,
            _that.title,
            _that.collectionId,
            _that.media);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoPreSignedUrlDto implements VideoPreSignedUrlDto {
  _VideoPreSignedUrlDto(
      {@JsonKey(name: 'authorizationSignature')
      this.authorizationSignature = '',
      @JsonKey(name: 'authorizationExpire') this.authorizationExpire,
      @JsonKey(name: 'videoGuid') this.videoGuid,
      @JsonKey(name: 'libraryId') this.libraryId,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'collectionId') this.collectionId = '',
      @JsonKey(name: 'media') this.media});
  factory _VideoPreSignedUrlDto.fromJson(Map<String, dynamic> json) =>
      _$VideoPreSignedUrlDtoFromJson(json);

  @override
  @JsonKey(name: 'authorizationSignature')
  final String authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  final int? authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  final String? videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  final int? libraryId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'collectionId')
  final String collectionId;
  @override
  @JsonKey(name: 'media')
  final StepMediaDto? media;

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoPreSignedUrlDtoCopyWith<_VideoPreSignedUrlDto> get copyWith =>
      __$VideoPreSignedUrlDtoCopyWithImpl<_VideoPreSignedUrlDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoPreSignedUrlDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoPreSignedUrlDto &&
            (identical(other.authorizationSignature, authorizationSignature) ||
                other.authorizationSignature == authorizationSignature) &&
            (identical(other.authorizationExpire, authorizationExpire) ||
                other.authorizationExpire == authorizationExpire) &&
            (identical(other.videoGuid, videoGuid) ||
                other.videoGuid == videoGuid) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authorizationSignature,
      authorizationExpire, videoGuid, libraryId, title, collectionId, media);

  @override
  String toString() {
    return 'VideoPreSignedUrlDto(authorizationSignature: $authorizationSignature, authorizationExpire: $authorizationExpire, videoGuid: $videoGuid, libraryId: $libraryId, title: $title, collectionId: $collectionId, media: $media)';
  }
}

/// @nodoc
abstract mixin class _$VideoPreSignedUrlDtoCopyWith<$Res>
    implements $VideoPreSignedUrlDtoCopyWith<$Res> {
  factory _$VideoPreSignedUrlDtoCopyWith(_VideoPreSignedUrlDto value,
          $Res Function(_VideoPreSignedUrlDto) _then) =
      __$VideoPreSignedUrlDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') String? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'collectionId') String collectionId,
      @JsonKey(name: 'media') StepMediaDto? media});

  @override
  $StepMediaDtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$VideoPreSignedUrlDtoCopyWithImpl<$Res>
    implements _$VideoPreSignedUrlDtoCopyWith<$Res> {
  __$VideoPreSignedUrlDtoCopyWithImpl(this._self, this._then);

  final _VideoPreSignedUrlDto _self;
  final $Res Function(_VideoPreSignedUrlDto) _then;

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authorizationSignature = null,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = null,
    Object? collectionId = null,
    Object? media = freezed,
  }) {
    return _then(_VideoPreSignedUrlDto(
      authorizationSignature: null == authorizationSignature
          ? _self.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationExpire: freezed == authorizationExpire
          ? _self.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _self.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryId: freezed == libraryId
          ? _self.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto?,
    ));
  }

  /// Create a copy of VideoPreSignedUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoCopyWith<$Res>? get media {
    if (_self.media == null) {
      return null;
    }

    return $StepMediaDtoCopyWith<$Res>(_self.media!, (value) {
      return _then(_self.copyWith(media: value));
    });
  }
}

/// @nodoc
mixin _$VideoStatusDto {
  @JsonKey(name: 'videoLibraryId')
  int? get videoLibraryId;
  @JsonKey(name: 'videoGuid')
  String? get videoGuid;
  @JsonKey(name: 'status')
  int? get status;

  /// Create a copy of VideoStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoStatusDtoCopyWith<VideoStatusDto> get copyWith =>
      _$VideoStatusDtoCopyWithImpl<VideoStatusDto>(
          this as VideoStatusDto, _$identity);

  /// Serializes this VideoStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoStatusDto &&
            (identical(other.videoLibraryId, videoLibraryId) ||
                other.videoLibraryId == videoLibraryId) &&
            (identical(other.videoGuid, videoGuid) ||
                other.videoGuid == videoGuid) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, videoLibraryId, videoGuid, status);

  @override
  String toString() {
    return 'VideoStatusDto(videoLibraryId: $videoLibraryId, videoGuid: $videoGuid, status: $status)';
  }
}

/// @nodoc
abstract mixin class $VideoStatusDtoCopyWith<$Res> {
  factory $VideoStatusDtoCopyWith(
          VideoStatusDto value, $Res Function(VideoStatusDto) _then) =
      _$VideoStatusDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') String? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$VideoStatusDtoCopyWithImpl<$Res>
    implements $VideoStatusDtoCopyWith<$Res> {
  _$VideoStatusDtoCopyWithImpl(this._self, this._then);

  final VideoStatusDto _self;
  final $Res Function(VideoStatusDto) _then;

  /// Create a copy of VideoStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      videoLibraryId: freezed == videoLibraryId
          ? _self.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _self.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoStatusDto].
extension VideoStatusDtoPatterns on VideoStatusDto {
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
    TResult Function(_VideoStatusDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto() when $default != null:
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
    TResult Function(_VideoStatusDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto():
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
    TResult? Function(_VideoStatusDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto() when $default != null:
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
            @JsonKey(name: 'videoLibraryId') int? videoLibraryId,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'status') int? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto() when $default != null:
        return $default(_that.videoLibraryId, _that.videoGuid, _that.status);
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
            @JsonKey(name: 'videoLibraryId') int? videoLibraryId,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'status') int? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto():
        return $default(_that.videoLibraryId, _that.videoGuid, _that.status);
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
            @JsonKey(name: 'videoLibraryId') int? videoLibraryId,
            @JsonKey(name: 'videoGuid') String? videoGuid,
            @JsonKey(name: 'status') int? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoStatusDto() when $default != null:
        return $default(_that.videoLibraryId, _that.videoGuid, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoStatusDto implements VideoStatusDto {
  _VideoStatusDto(
      {@JsonKey(name: 'videoLibraryId') this.videoLibraryId,
      @JsonKey(name: 'videoGuid') this.videoGuid,
      @JsonKey(name: 'status') this.status});
  factory _VideoStatusDto.fromJson(Map<String, dynamic> json) =>
      _$VideoStatusDtoFromJson(json);

  @override
  @JsonKey(name: 'videoLibraryId')
  final int? videoLibraryId;
  @override
  @JsonKey(name: 'videoGuid')
  final String? videoGuid;
  @override
  @JsonKey(name: 'status')
  final int? status;

  /// Create a copy of VideoStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoStatusDtoCopyWith<_VideoStatusDto> get copyWith =>
      __$VideoStatusDtoCopyWithImpl<_VideoStatusDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoStatusDto &&
            (identical(other.videoLibraryId, videoLibraryId) ||
                other.videoLibraryId == videoLibraryId) &&
            (identical(other.videoGuid, videoGuid) ||
                other.videoGuid == videoGuid) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, videoLibraryId, videoGuid, status);

  @override
  String toString() {
    return 'VideoStatusDto(videoLibraryId: $videoLibraryId, videoGuid: $videoGuid, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$VideoStatusDtoCopyWith<$Res>
    implements $VideoStatusDtoCopyWith<$Res> {
  factory _$VideoStatusDtoCopyWith(
          _VideoStatusDto value, $Res Function(_VideoStatusDto) _then) =
      __$VideoStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') String? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$VideoStatusDtoCopyWithImpl<$Res>
    implements _$VideoStatusDtoCopyWith<$Res> {
  __$VideoStatusDtoCopyWithImpl(this._self, this._then);

  final _VideoStatusDto _self;
  final $Res Function(_VideoStatusDto) _then;

  /// Create a copy of VideoStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_VideoStatusDto(
      videoLibraryId: freezed == videoLibraryId
          ? _self.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _self.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
