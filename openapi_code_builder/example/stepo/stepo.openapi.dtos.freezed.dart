// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stepo.openapi.dtos.dart';

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

AccountDtoDto _$AccountDtoDtoFromJson(Map<String, dynamic> json) {
  return _AccountDtoDto.fromJson(json);
}

/// @nodoc
mixin _$AccountDtoDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile => throw _privateConstructorUsedError;

  /// Serializes this AccountDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDtoDtoCopyWith<AccountDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoDtoCopyWith<$Res> {
  factory $AccountDtoDtoCopyWith(
          AccountDtoDto value, $Res Function(AccountDtoDto) then) =
      _$AccountDtoDtoCopyWithImpl<$Res, AccountDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$AccountDtoDtoCopyWithImpl<$Res, $Val extends AccountDtoDto>
    implements $AccountDtoDtoCopyWith<$Res> {
  _$AccountDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ) as $Val);
  }

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDtoDtoCopyWith<$Res> get profile {
    return $ProfileDtoDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDtoDtoImplCopyWith<$Res>
    implements $AccountDtoDtoCopyWith<$Res> {
  factory _$$AccountDtoDtoImplCopyWith(
          _$AccountDtoDtoImpl value, $Res Function(_$AccountDtoDtoImpl) then) =
      __$$AccountDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  @override
  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AccountDtoDtoImplCopyWithImpl<$Res>
    extends _$AccountDtoDtoCopyWithImpl<$Res, _$AccountDtoDtoImpl>
    implements _$$AccountDtoDtoImplCopyWith<$Res> {
  __$$AccountDtoDtoImplCopyWithImpl(
      _$AccountDtoDtoImpl _value, $Res Function(_$AccountDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_$AccountDtoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDtoDtoImpl implements _AccountDtoDto {
  _$AccountDtoDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'profile') required this.profile});

  factory _$AccountDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'profile')
  final ProfileDtoDto profile;

  @override
  String toString() {
    return 'AccountDtoDto(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDtoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile);

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDtoDtoImplCopyWith<_$AccountDtoDtoImpl> get copyWith =>
      __$$AccountDtoDtoImplCopyWithImpl<_$AccountDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _AccountDtoDto implements AccountDtoDto {
  factory _AccountDtoDto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'profile') required final ProfileDtoDto profile}) =
      _$AccountDtoDtoImpl;

  factory _AccountDtoDto.fromJson(Map<String, dynamic> json) =
      _$AccountDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile;

  /// Create a copy of AccountDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDtoDtoImplCopyWith<_$AccountDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BulkNotificationDtoDto _$BulkNotificationDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _BulkNotificationDtoDto.fromJson(json);
}

/// @nodoc
mixin _$BulkNotificationDtoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIds')
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;

  /// Serializes this BulkNotificationDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BulkNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BulkNotificationDtoDtoCopyWith<BulkNotificationDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkNotificationDtoDtoCopyWith<$Res> {
  factory $BulkNotificationDtoDtoCopyWith(BulkNotificationDtoDto value,
          $Res Function(BulkNotificationDtoDto) then) =
      _$BulkNotificationDtoDtoCopyWithImpl<$Res, BulkNotificationDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'userIds') List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class _$BulkNotificationDtoDtoCopyWithImpl<$Res,
        $Val extends BulkNotificationDtoDto>
    implements $BulkNotificationDtoDtoCopyWith<$Res> {
  _$BulkNotificationDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BulkNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? userIds = null,
    Object? relatedEntityId = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BulkNotificationDtoDtoImplCopyWith<$Res>
    implements $BulkNotificationDtoDtoCopyWith<$Res> {
  factory _$$BulkNotificationDtoDtoImplCopyWith(
          _$BulkNotificationDtoDtoImpl value,
          $Res Function(_$BulkNotificationDtoDtoImpl) then) =
      __$$BulkNotificationDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'userIds') List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class __$$BulkNotificationDtoDtoImplCopyWithImpl<$Res>
    extends _$BulkNotificationDtoDtoCopyWithImpl<$Res,
        _$BulkNotificationDtoDtoImpl>
    implements _$$BulkNotificationDtoDtoImplCopyWith<$Res> {
  __$$BulkNotificationDtoDtoImplCopyWithImpl(
      _$BulkNotificationDtoDtoImpl _value,
      $Res Function(_$BulkNotificationDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BulkNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? userIds = null,
    Object? relatedEntityId = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$BulkNotificationDtoDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkNotificationDtoDtoImpl implements _BulkNotificationDtoDto {
  _$BulkNotificationDtoDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'notificationType') required this.notificationType,
      @JsonKey(name: 'userIds') required final List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority})
      : _userIds = userIds,
        _data = data;

  factory _$BulkNotificationDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkNotificationDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'notificationType')
  final int notificationType;
  final List<String> _userIds;
  @override
  @JsonKey(name: 'userIds')
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
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
  String toString() {
    return 'BulkNotificationDtoDto(title: $title, body: $body, notificationType: $notificationType, userIds: $userIds, relatedEntityId: $relatedEntityId, data: $data, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkNotificationDtoDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
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
      notificationType,
      const DeepCollectionEquality().hash(_userIds),
      relatedEntityId,
      const DeepCollectionEquality().hash(_data),
      priority);

  /// Create a copy of BulkNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkNotificationDtoDtoImplCopyWith<_$BulkNotificationDtoDtoImpl>
      get copyWith => __$$BulkNotificationDtoDtoImplCopyWithImpl<
          _$BulkNotificationDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkNotificationDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _BulkNotificationDtoDto implements BulkNotificationDtoDto {
  factory _BulkNotificationDtoDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'body') required final String body,
      @JsonKey(name: 'notificationType') required final int notificationType,
      @JsonKey(name: 'userIds') required final List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      final ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority')
      final int? priority}) = _$BulkNotificationDtoDtoImpl;

  factory _BulkNotificationDtoDto.fromJson(Map<String, dynamic> json) =
      _$BulkNotificationDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'notificationType')
  int get notificationType;
  @override
  @JsonKey(name: 'userIds')
  List<String> get userIds;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;

  /// Create a copy of BulkNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkNotificationDtoDtoImplCopyWith<_$BulkNotificationDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCommentInteractionDtoDto _$CreateCommentInteractionDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateCommentInteractionDtoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateCommentInteractionDtoDto {
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this CreateCommentInteractionDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCommentInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCommentInteractionDtoDtoCopyWith<CreateCommentInteractionDtoDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentInteractionDtoDtoCopyWith<$Res> {
  factory $CreateCommentInteractionDtoDtoCopyWith(
          CreateCommentInteractionDtoDto value,
          $Res Function(CreateCommentInteractionDtoDto) then) =
      _$CreateCommentInteractionDtoDtoCopyWithImpl<$Res,
          CreateCommentInteractionDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class _$CreateCommentInteractionDtoDtoCopyWithImpl<$Res,
        $Val extends CreateCommentInteractionDtoDto>
    implements $CreateCommentInteractionDtoDtoCopyWith<$Res> {
  _$CreateCommentInteractionDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCommentInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCommentInteractionDtoDtoImplCopyWith<$Res>
    implements $CreateCommentInteractionDtoDtoCopyWith<$Res> {
  factory _$$CreateCommentInteractionDtoDtoImplCopyWith(
          _$CreateCommentInteractionDtoDtoImpl value,
          $Res Function(_$CreateCommentInteractionDtoDtoImpl) then) =
      __$$CreateCommentInteractionDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class __$$CreateCommentInteractionDtoDtoImplCopyWithImpl<$Res>
    extends _$CreateCommentInteractionDtoDtoCopyWithImpl<$Res,
        _$CreateCommentInteractionDtoDtoImpl>
    implements _$$CreateCommentInteractionDtoDtoImplCopyWith<$Res> {
  __$$CreateCommentInteractionDtoDtoImplCopyWithImpl(
      _$CreateCommentInteractionDtoDtoImpl _value,
      $Res Function(_$CreateCommentInteractionDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCommentInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$CreateCommentInteractionDtoDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCommentInteractionDtoDtoImpl
    implements _CreateCommentInteractionDtoDto {
  _$CreateCommentInteractionDtoDtoImpl({@JsonKey(name: 'type') this.type});

  factory _$CreateCommentInteractionDtoDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateCommentInteractionDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int? type;

  @override
  String toString() {
    return 'CreateCommentInteractionDtoDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentInteractionDtoDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of CreateCommentInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentInteractionDtoDtoImplCopyWith<
          _$CreateCommentInteractionDtoDtoImpl>
      get copyWith => __$$CreateCommentInteractionDtoDtoImplCopyWithImpl<
          _$CreateCommentInteractionDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCommentInteractionDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateCommentInteractionDtoDto
    implements CreateCommentInteractionDtoDto {
  factory _CreateCommentInteractionDtoDto(
          {@JsonKey(name: 'type') final int? type}) =
      _$CreateCommentInteractionDtoDtoImpl;

  factory _CreateCommentInteractionDtoDto.fromJson(Map<String, dynamic> json) =
      _$CreateCommentInteractionDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int? get type;

  /// Create a copy of CreateCommentInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCommentInteractionDtoDtoImplCopyWith<
          _$CreateCommentInteractionDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateReplyCommentDtoDto _$CreateReplyCommentDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateReplyCommentDtoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateReplyCommentDtoDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToUserId')
  String? get responseToUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId => throw _privateConstructorUsedError;

  /// Serializes this CreateReplyCommentDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReplyCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReplyCommentDtoDtoCopyWith<CreateReplyCommentDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReplyCommentDtoDtoCopyWith<$Res> {
  factory $CreateReplyCommentDtoDtoCopyWith(CreateReplyCommentDtoDto value,
          $Res Function(CreateReplyCommentDtoDto) then) =
      _$CreateReplyCommentDtoDtoCopyWithImpl<$Res, CreateReplyCommentDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId});
}

/// @nodoc
class _$CreateReplyCommentDtoDtoCopyWithImpl<$Res,
        $Val extends CreateReplyCommentDtoDto>
    implements $CreateReplyCommentDtoDtoCopyWith<$Res> {
  _$CreateReplyCommentDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReplyCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _value.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReplyCommentDtoDtoImplCopyWith<$Res>
    implements $CreateReplyCommentDtoDtoCopyWith<$Res> {
  factory _$$CreateReplyCommentDtoDtoImplCopyWith(
          _$CreateReplyCommentDtoDtoImpl value,
          $Res Function(_$CreateReplyCommentDtoDtoImpl) then) =
      __$$CreateReplyCommentDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId});
}

/// @nodoc
class __$$CreateReplyCommentDtoDtoImplCopyWithImpl<$Res>
    extends _$CreateReplyCommentDtoDtoCopyWithImpl<$Res,
        _$CreateReplyCommentDtoDtoImpl>
    implements _$$CreateReplyCommentDtoDtoImplCopyWith<$Res> {
  __$$CreateReplyCommentDtoDtoImplCopyWithImpl(
      _$CreateReplyCommentDtoDtoImpl _value,
      $Res Function(_$CreateReplyCommentDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateReplyCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_$CreateReplyCommentDtoDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _value.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReplyCommentDtoDtoImpl implements _CreateReplyCommentDtoDto {
  _$CreateReplyCommentDtoDtoImpl(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'responseToUserId') this.responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      this.responseToCommentId});

  factory _$CreateReplyCommentDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReplyCommentDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'responseToUserId')
  final String? responseToUserId;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? responseToCommentId;

  @override
  String toString() {
    return 'CreateReplyCommentDtoDto(content: $content, responseToUserId: $responseToUserId, responseToCommentId: $responseToCommentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReplyCommentDtoDtoImpl &&
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

  /// Create a copy of CreateReplyCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReplyCommentDtoDtoImplCopyWith<_$CreateReplyCommentDtoDtoImpl>
      get copyWith => __$$CreateReplyCommentDtoDtoImplCopyWithImpl<
          _$CreateReplyCommentDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReplyCommentDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateReplyCommentDtoDto implements CreateReplyCommentDtoDto {
  factory _CreateReplyCommentDtoDto(
      {@JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'responseToUserId') final String? responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      final ApiUuid? responseToCommentId}) = _$CreateReplyCommentDtoDtoImpl;

  factory _CreateReplyCommentDtoDto.fromJson(Map<String, dynamic> json) =
      _$CreateReplyCommentDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'responseToUserId')
  String? get responseToUserId;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId;

  /// Create a copy of CreateReplyCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReplyCommentDtoDtoImplCopyWith<_$CreateReplyCommentDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateStepCommentDtoDto _$CreateStepCommentDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateStepCommentDtoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateStepCommentDtoDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CreateStepCommentDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStepCommentDtoDtoCopyWith<CreateStepCommentDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStepCommentDtoDtoCopyWith<$Res> {
  factory $CreateStepCommentDtoDtoCopyWith(CreateStepCommentDtoDto value,
          $Res Function(CreateStepCommentDtoDto) then) =
      _$CreateStepCommentDtoDtoCopyWithImpl<$Res, CreateStepCommentDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$CreateStepCommentDtoDtoCopyWithImpl<$Res,
        $Val extends CreateStepCommentDtoDto>
    implements $CreateStepCommentDtoDtoCopyWith<$Res> {
  _$CreateStepCommentDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStepCommentDtoDtoImplCopyWith<$Res>
    implements $CreateStepCommentDtoDtoCopyWith<$Res> {
  factory _$$CreateStepCommentDtoDtoImplCopyWith(
          _$CreateStepCommentDtoDtoImpl value,
          $Res Function(_$CreateStepCommentDtoDtoImpl) then) =
      __$$CreateStepCommentDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$CreateStepCommentDtoDtoImplCopyWithImpl<$Res>
    extends _$CreateStepCommentDtoDtoCopyWithImpl<$Res,
        _$CreateStepCommentDtoDtoImpl>
    implements _$$CreateStepCommentDtoDtoImplCopyWith<$Res> {
  __$$CreateStepCommentDtoDtoImplCopyWithImpl(
      _$CreateStepCommentDtoDtoImpl _value,
      $Res Function(_$CreateStepCommentDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$CreateStepCommentDtoDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStepCommentDtoDtoImpl implements _CreateStepCommentDtoDto {
  _$CreateStepCommentDtoDtoImpl(
      {@JsonKey(name: 'content') required this.content});

  factory _$CreateStepCommentDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStepCommentDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'CreateStepCommentDtoDto(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStepCommentDtoDtoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of CreateStepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStepCommentDtoDtoImplCopyWith<_$CreateStepCommentDtoDtoImpl>
      get copyWith => __$$CreateStepCommentDtoDtoImplCopyWithImpl<
          _$CreateStepCommentDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStepCommentDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateStepCommentDtoDto implements CreateStepCommentDtoDto {
  factory _CreateStepCommentDtoDto(
          {@JsonKey(name: 'content') required final String content}) =
      _$CreateStepCommentDtoDtoImpl;

  factory _CreateStepCommentDtoDto.fromJson(Map<String, dynamic> json) =
      _$CreateStepCommentDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of CreateStepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStepCommentDtoDtoImplCopyWith<_$CreateStepCommentDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateStepDtoDto _$CreateStepDtoDtoFromJson(Map<String, dynamic> json) {
  return _CreateStepDtoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateStepDtoDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid get journeyId => throw _privateConstructorUsedError;

  /// Serializes this CreateStepDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStepDtoDtoCopyWith<CreateStepDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStepDtoDtoCopyWith<$Res> {
  factory $CreateStepDtoDtoCopyWith(
          CreateStepDtoDto value, $Res Function(CreateStepDtoDto) then) =
      _$CreateStepDtoDtoCopyWithImpl<$Res, CreateStepDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid journeyId});
}

/// @nodoc
class _$CreateStepDtoDtoCopyWithImpl<$Res, $Val extends CreateStepDtoDto>
    implements $CreateStepDtoDtoCopyWith<$Res> {
  _$CreateStepDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStepDtoDtoImplCopyWith<$Res>
    implements $CreateStepDtoDtoCopyWith<$Res> {
  factory _$$CreateStepDtoDtoImplCopyWith(_$CreateStepDtoDtoImpl value,
          $Res Function(_$CreateStepDtoDtoImpl) then) =
      __$$CreateStepDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid journeyId});
}

/// @nodoc
class __$$CreateStepDtoDtoImplCopyWithImpl<$Res>
    extends _$CreateStepDtoDtoCopyWithImpl<$Res, _$CreateStepDtoDtoImpl>
    implements _$$CreateStepDtoDtoImplCopyWith<$Res> {
  __$$CreateStepDtoDtoImplCopyWithImpl(_$CreateStepDtoDtoImpl _value,
      $Res Function(_$CreateStepDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_$CreateStepDtoDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStepDtoDtoImpl implements _CreateStepDtoDto {
  _$CreateStepDtoDtoImpl(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      required this.journeyId});

  factory _$CreateStepDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStepDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid journeyId;

  @override
  String toString() {
    return 'CreateStepDtoDto(content: $content, journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStepDtoDtoImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, journeyId);

  /// Create a copy of CreateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStepDtoDtoImplCopyWith<_$CreateStepDtoDtoImpl> get copyWith =>
      __$$CreateStepDtoDtoImplCopyWithImpl<_$CreateStepDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStepDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateStepDtoDto implements CreateStepDtoDto {
  factory _CreateStepDtoDto(
      {@JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      required final ApiUuid journeyId}) = _$CreateStepDtoDtoImpl;

  factory _CreateStepDtoDto.fromJson(Map<String, dynamic> json) =
      _$CreateStepDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid get journeyId;

  /// Create a copy of CreateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStepDtoDtoImplCopyWith<_$CreateStepDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateStepInteractionDtoDto _$CreateStepInteractionDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateStepInteractionDtoDto.fromJson(json);
}

/// @nodoc
mixin _$CreateStepInteractionDtoDto {
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this CreateStepInteractionDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStepInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStepInteractionDtoDtoCopyWith<CreateStepInteractionDtoDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStepInteractionDtoDtoCopyWith<$Res> {
  factory $CreateStepInteractionDtoDtoCopyWith(
          CreateStepInteractionDtoDto value,
          $Res Function(CreateStepInteractionDtoDto) then) =
      _$CreateStepInteractionDtoDtoCopyWithImpl<$Res,
          CreateStepInteractionDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class _$CreateStepInteractionDtoDtoCopyWithImpl<$Res,
        $Val extends CreateStepInteractionDtoDto>
    implements $CreateStepInteractionDtoDtoCopyWith<$Res> {
  _$CreateStepInteractionDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStepInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStepInteractionDtoDtoImplCopyWith<$Res>
    implements $CreateStepInteractionDtoDtoCopyWith<$Res> {
  factory _$$CreateStepInteractionDtoDtoImplCopyWith(
          _$CreateStepInteractionDtoDtoImpl value,
          $Res Function(_$CreateStepInteractionDtoDtoImpl) then) =
      __$$CreateStepInteractionDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class __$$CreateStepInteractionDtoDtoImplCopyWithImpl<$Res>
    extends _$CreateStepInteractionDtoDtoCopyWithImpl<$Res,
        _$CreateStepInteractionDtoDtoImpl>
    implements _$$CreateStepInteractionDtoDtoImplCopyWith<$Res> {
  __$$CreateStepInteractionDtoDtoImplCopyWithImpl(
      _$CreateStepInteractionDtoDtoImpl _value,
      $Res Function(_$CreateStepInteractionDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStepInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$CreateStepInteractionDtoDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStepInteractionDtoDtoImpl
    implements _CreateStepInteractionDtoDto {
  _$CreateStepInteractionDtoDtoImpl({@JsonKey(name: 'type') this.type});

  factory _$CreateStepInteractionDtoDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateStepInteractionDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int? type;

  @override
  String toString() {
    return 'CreateStepInteractionDtoDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStepInteractionDtoDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of CreateStepInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStepInteractionDtoDtoImplCopyWith<_$CreateStepInteractionDtoDtoImpl>
      get copyWith => __$$CreateStepInteractionDtoDtoImplCopyWithImpl<
          _$CreateStepInteractionDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStepInteractionDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateStepInteractionDtoDto
    implements CreateStepInteractionDtoDto {
  factory _CreateStepInteractionDtoDto(
          {@JsonKey(name: 'type') final int? type}) =
      _$CreateStepInteractionDtoDtoImpl;

  factory _CreateStepInteractionDtoDto.fromJson(Map<String, dynamic> json) =
      _$CreateStepInteractionDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int? get type;

  /// Create a copy of CreateStepInteractionDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStepInteractionDtoDtoImplCopyWith<_$CreateStepInteractionDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EditUserDtoDto _$EditUserDtoDtoFromJson(Map<String, dynamic> json) {
  return _EditUserDtoDto.fromJson(json);
}

/// @nodoc
mixin _$EditUserDtoDto {
  @JsonKey(name: 'displayName')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate => throw _privateConstructorUsedError;

  /// Serializes this EditUserDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditUserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditUserDtoDtoCopyWith<EditUserDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserDtoDtoCopyWith<$Res> {
  factory $EditUserDtoDtoCopyWith(
          EditUserDtoDto value, $Res Function(EditUserDtoDto) then) =
      _$EditUserDtoDtoCopyWithImpl<$Res, EditUserDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isPrivate') bool? isPrivate});
}

/// @nodoc
class _$EditUserDtoDtoCopyWithImpl<$Res, $Val extends EditUserDtoDto>
    implements $EditUserDtoDtoCopyWith<$Res> {
  _$EditUserDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditUserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserDtoDtoImplCopyWith<$Res>
    implements $EditUserDtoDtoCopyWith<$Res> {
  factory _$$EditUserDtoDtoImplCopyWith(_$EditUserDtoDtoImpl value,
          $Res Function(_$EditUserDtoDtoImpl) then) =
      __$$EditUserDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isPrivate') bool? isPrivate});
}

/// @nodoc
class __$$EditUserDtoDtoImplCopyWithImpl<$Res>
    extends _$EditUserDtoDtoCopyWithImpl<$Res, _$EditUserDtoDtoImpl>
    implements _$$EditUserDtoDtoImplCopyWith<$Res> {
  __$$EditUserDtoDtoImplCopyWithImpl(
      _$EditUserDtoDtoImpl _value, $Res Function(_$EditUserDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditUserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_$EditUserDtoDtoImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUserDtoDtoImpl implements _EditUserDtoDto {
  _$EditUserDtoDtoImpl(
      {@JsonKey(name: 'displayName') required this.displayName,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'isPrivate') this.isPrivate});

  factory _$EditUserDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditUserDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'displayName')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'isPrivate')
  final bool? isPrivate;

  @override
  String toString() {
    return 'EditUserDtoDto(displayName: $displayName, username: $username, description: $description, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserDtoDtoImpl &&
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

  /// Create a copy of EditUserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserDtoDtoImplCopyWith<_$EditUserDtoDtoImpl> get copyWith =>
      __$$EditUserDtoDtoImplCopyWithImpl<_$EditUserDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUserDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _EditUserDtoDto implements EditUserDtoDto {
  factory _EditUserDtoDto(
          {@JsonKey(name: 'displayName') required final String displayName,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'isPrivate') final bool? isPrivate}) =
      _$EditUserDtoDtoImpl;

  factory _EditUserDtoDto.fromJson(Map<String, dynamic> json) =
      _$EditUserDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'displayName')
  String get displayName;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate;

  /// Create a copy of EditUserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUserDtoDtoImplCopyWith<_$EditUserDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowingResultDtoDto _$FollowingResultDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _FollowingResultDtoDto.fromJson(json);
}

/// @nodoc
mixin _$FollowingResultDtoDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this FollowingResultDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowingResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowingResultDtoDtoCopyWith<FollowingResultDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingResultDtoDtoCopyWith<$Res> {
  factory $FollowingResultDtoDtoCopyWith(FollowingResultDtoDto value,
          $Res Function(FollowingResultDtoDto) then) =
      _$FollowingResultDtoDtoCopyWithImpl<$Res, FollowingResultDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$FollowingResultDtoDtoCopyWithImpl<$Res,
        $Val extends FollowingResultDtoDto>
    implements $FollowingResultDtoDtoCopyWith<$Res> {
  _$FollowingResultDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowingResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowingResultDtoDtoImplCopyWith<$Res>
    implements $FollowingResultDtoDtoCopyWith<$Res> {
  factory _$$FollowingResultDtoDtoImplCopyWith(
          _$FollowingResultDtoDtoImpl value,
          $Res Function(_$FollowingResultDtoDtoImpl) then) =
      __$$FollowingResultDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$FollowingResultDtoDtoImplCopyWithImpl<$Res>
    extends _$FollowingResultDtoDtoCopyWithImpl<$Res,
        _$FollowingResultDtoDtoImpl>
    implements _$$FollowingResultDtoDtoImplCopyWith<$Res> {
  __$$FollowingResultDtoDtoImplCopyWithImpl(_$FollowingResultDtoDtoImpl _value,
      $Res Function(_$FollowingResultDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowingResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$FollowingResultDtoDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowingResultDtoDtoImpl implements _FollowingResultDtoDto {
  _$FollowingResultDtoDtoImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') this.message});

  factory _$FollowingResultDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowingResultDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'FollowingResultDtoDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingResultDtoDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of FollowingResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingResultDtoDtoImplCopyWith<_$FollowingResultDtoDtoImpl>
      get copyWith => __$$FollowingResultDtoDtoImplCopyWithImpl<
          _$FollowingResultDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowingResultDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _FollowingResultDtoDto implements FollowingResultDtoDto {
  factory _FollowingResultDtoDto(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') final String? message}) =
      _$FollowingResultDtoDtoImpl;

  factory _FollowingResultDtoDto.fromJson(Map<String, dynamic> json) =
      _$FollowingResultDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of FollowingResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowingResultDtoDtoImplCopyWith<_$FollowingResultDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FollowingStatusDtoDto _$FollowingStatusDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _FollowingStatusDtoDto.fromJson(json);
}

/// @nodoc
mixin _$FollowingStatusDtoDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  /// Serializes this FollowingStatusDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowingStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowingStatusDtoDtoCopyWith<FollowingStatusDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingStatusDtoDtoCopyWith<$Res> {
  factory $FollowingStatusDtoDtoCopyWith(FollowingStatusDtoDto value,
          $Res Function(FollowingStatusDtoDto) then) =
      _$FollowingStatusDtoDtoCopyWithImpl<$Res, FollowingStatusDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'status') int status});
}

/// @nodoc
class _$FollowingStatusDtoDtoCopyWithImpl<$Res,
        $Val extends FollowingStatusDtoDto>
    implements $FollowingStatusDtoDtoCopyWith<$Res> {
  _$FollowingStatusDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowingStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowingStatusDtoDtoImplCopyWith<$Res>
    implements $FollowingStatusDtoDtoCopyWith<$Res> {
  factory _$$FollowingStatusDtoDtoImplCopyWith(
          _$FollowingStatusDtoDtoImpl value,
          $Res Function(_$FollowingStatusDtoDtoImpl) then) =
      __$$FollowingStatusDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$FollowingStatusDtoDtoImplCopyWithImpl<$Res>
    extends _$FollowingStatusDtoDtoCopyWithImpl<$Res,
        _$FollowingStatusDtoDtoImpl>
    implements _$$FollowingStatusDtoDtoImplCopyWith<$Res> {
  __$$FollowingStatusDtoDtoImplCopyWithImpl(_$FollowingStatusDtoDtoImpl _value,
      $Res Function(_$FollowingStatusDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowingStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FollowingStatusDtoDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowingStatusDtoDtoImpl implements _FollowingStatusDtoDto {
  _$FollowingStatusDtoDtoImpl({@JsonKey(name: 'status') required this.status});

  factory _$FollowingStatusDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowingStatusDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'FollowingStatusDtoDto(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingStatusDtoDtoImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of FollowingStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingStatusDtoDtoImplCopyWith<_$FollowingStatusDtoDtoImpl>
      get copyWith => __$$FollowingStatusDtoDtoImplCopyWithImpl<
          _$FollowingStatusDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowingStatusDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _FollowingStatusDtoDto implements FollowingStatusDtoDto {
  factory _FollowingStatusDtoDto(
          {@JsonKey(name: 'status') required final int status}) =
      _$FollowingStatusDtoDtoImpl;

  factory _FollowingStatusDtoDto.fromJson(Map<String, dynamic> json) =
      _$FollowingStatusDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;

  /// Create a copy of FollowingStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowingStatusDtoDtoImplCopyWith<_$FollowingStatusDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FollowRequestDtoDto _$FollowRequestDtoDtoFromJson(Map<String, dynamic> json) {
  return _FollowRequestDtoDto.fromJson(json);
}

/// @nodoc
mixin _$FollowRequestDtoDto {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this FollowRequestDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowRequestDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowRequestDtoDtoCopyWith<FollowRequestDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowRequestDtoDtoCopyWith<$Res> {
  factory $FollowRequestDtoDtoCopyWith(
          FollowRequestDtoDto value, $Res Function(FollowRequestDtoDto) then) =
      _$FollowRequestDtoDtoCopyWithImpl<$Res, FollowRequestDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class _$FollowRequestDtoDtoCopyWithImpl<$Res, $Val extends FollowRequestDtoDto>
    implements $FollowRequestDtoDtoCopyWith<$Res> {
  _$FollowRequestDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowRequestDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowRequestDtoDtoImplCopyWith<$Res>
    implements $FollowRequestDtoDtoCopyWith<$Res> {
  factory _$$FollowRequestDtoDtoImplCopyWith(_$FollowRequestDtoDtoImpl value,
          $Res Function(_$FollowRequestDtoDtoImpl) then) =
      __$$FollowRequestDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class __$$FollowRequestDtoDtoImplCopyWithImpl<$Res>
    extends _$FollowRequestDtoDtoCopyWithImpl<$Res, _$FollowRequestDtoDtoImpl>
    implements _$$FollowRequestDtoDtoImplCopyWith<$Res> {
  __$$FollowRequestDtoDtoImplCopyWithImpl(_$FollowRequestDtoDtoImpl _value,
      $Res Function(_$FollowRequestDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowRequestDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FollowRequestDtoDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowRequestDtoDtoImpl implements _FollowRequestDtoDto {
  _$FollowRequestDtoDtoImpl({@JsonKey(name: 'userId') required this.userId});

  factory _$FollowRequestDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowRequestDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;

  @override
  String toString() {
    return 'FollowRequestDtoDto(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowRequestDtoDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of FollowRequestDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowRequestDtoDtoImplCopyWith<_$FollowRequestDtoDtoImpl> get copyWith =>
      __$$FollowRequestDtoDtoImplCopyWithImpl<_$FollowRequestDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowRequestDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _FollowRequestDtoDto implements FollowRequestDtoDto {
  factory _FollowRequestDtoDto(
          {@JsonKey(name: 'userId') required final String userId}) =
      _$FollowRequestDtoDtoImpl;

  factory _FollowRequestDtoDto.fromJson(Map<String, dynamic> json) =
      _$FollowRequestDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;

  /// Create a copy of FollowRequestDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowRequestDtoDtoImplCopyWith<_$FollowRequestDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageMetadataDtoDto _$ImageMetadataDtoDtoFromJson(Map<String, dynamic> json) {
  return _ImageMetadataDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ImageMetadataDtoDto {
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentType')
  String? get contentType => throw _privateConstructorUsedError;

  /// Serializes this ImageMetadataDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageMetadataDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageMetadataDtoDtoCopyWith<ImageMetadataDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageMetadataDtoDtoCopyWith<$Res> {
  factory $ImageMetadataDtoDtoCopyWith(
          ImageMetadataDtoDto value, $Res Function(ImageMetadataDtoDto) then) =
      _$ImageMetadataDtoDtoCopyWithImpl<$Res, ImageMetadataDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class _$ImageMetadataDtoDtoCopyWithImpl<$Res, $Val extends ImageMetadataDtoDto>
    implements $ImageMetadataDtoDtoCopyWith<$Res> {
  _$ImageMetadataDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageMetadataDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageMetadataDtoDtoImplCopyWith<$Res>
    implements $ImageMetadataDtoDtoCopyWith<$Res> {
  factory _$$ImageMetadataDtoDtoImplCopyWith(_$ImageMetadataDtoDtoImpl value,
          $Res Function(_$ImageMetadataDtoDtoImpl) then) =
      __$$ImageMetadataDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class __$$ImageMetadataDtoDtoImplCopyWithImpl<$Res>
    extends _$ImageMetadataDtoDtoCopyWithImpl<$Res, _$ImageMetadataDtoDtoImpl>
    implements _$$ImageMetadataDtoDtoImplCopyWith<$Res> {
  __$$ImageMetadataDtoDtoImplCopyWithImpl(_$ImageMetadataDtoDtoImpl _value,
      $Res Function(_$ImageMetadataDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageMetadataDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$ImageMetadataDtoDtoImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageMetadataDtoDtoImpl implements _ImageMetadataDtoDto {
  _$ImageMetadataDtoDtoImpl(
      {@JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'contentType') this.contentType});

  factory _$ImageMetadataDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageMetadataDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
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
  @JsonKey(name: 'contentType')
  final String? contentType;

  @override
  String toString() {
    return 'ImageMetadataDtoDto(fileName: $fileName, fileUrl: $fileUrl, width: $width, height: $height, size: $size, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageMetadataDtoDtoImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, fileUrl, width, height, size, contentType);

  /// Create a copy of ImageMetadataDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageMetadataDtoDtoImplCopyWith<_$ImageMetadataDtoDtoImpl> get copyWith =>
      __$$ImageMetadataDtoDtoImplCopyWithImpl<_$ImageMetadataDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageMetadataDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageMetadataDtoDto implements ImageMetadataDtoDto {
  factory _ImageMetadataDtoDto(
          {@JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'width') final int? width,
          @JsonKey(name: 'height') final int? height,
          @JsonKey(name: 'size') final int? size,
          @JsonKey(name: 'contentType') final String? contentType}) =
      _$ImageMetadataDtoDtoImpl;

  factory _ImageMetadataDtoDto.fromJson(Map<String, dynamic> json) =
      _$ImageMetadataDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'contentType')
  String? get contentType;

  /// Create a copy of ImageMetadataDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageMetadataDtoDtoImplCopyWith<_$ImageMetadataDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagePresignedUrlDtoDto _$ImagePresignedUrlDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _ImagePresignedUrlDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ImagePresignedUrlDtoDto {
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'headers')
  Map<String, String>? get headers => throw _privateConstructorUsedError;

  /// Serializes this ImagePresignedUrlDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagePresignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagePresignedUrlDtoDtoCopyWith<ImagePresignedUrlDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePresignedUrlDtoDtoCopyWith<$Res> {
  factory $ImagePresignedUrlDtoDtoCopyWith(ImagePresignedUrlDtoDto value,
          $Res Function(ImagePresignedUrlDtoDto) then) =
      _$ImagePresignedUrlDtoDtoCopyWithImpl<$Res, ImagePresignedUrlDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class _$ImagePresignedUrlDtoDtoCopyWithImpl<$Res,
        $Val extends ImagePresignedUrlDtoDto>
    implements $ImagePresignedUrlDtoDtoCopyWith<$Res> {
  _$ImagePresignedUrlDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePresignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePresignedUrlDtoDtoImplCopyWith<$Res>
    implements $ImagePresignedUrlDtoDtoCopyWith<$Res> {
  factory _$$ImagePresignedUrlDtoDtoImplCopyWith(
          _$ImagePresignedUrlDtoDtoImpl value,
          $Res Function(_$ImagePresignedUrlDtoDtoImpl) then) =
      __$$ImagePresignedUrlDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class __$$ImagePresignedUrlDtoDtoImplCopyWithImpl<$Res>
    extends _$ImagePresignedUrlDtoDtoCopyWithImpl<$Res,
        _$ImagePresignedUrlDtoDtoImpl>
    implements _$$ImagePresignedUrlDtoDtoImplCopyWith<$Res> {
  __$$ImagePresignedUrlDtoDtoImplCopyWithImpl(
      _$ImagePresignedUrlDtoDtoImpl _value,
      $Res Function(_$ImagePresignedUrlDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePresignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$ImagePresignedUrlDtoDtoImpl(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagePresignedUrlDtoDtoImpl implements _ImagePresignedUrlDtoDto {
  _$ImagePresignedUrlDtoDtoImpl(
      {@JsonKey(name: 'uploadUrl') this.uploadUrl,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'expiresAt') this.expiresAt,
      @JsonKey(name: 'headers') final Map<String, String>? headers})
      : _headers = headers;

  factory _$ImagePresignedUrlDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePresignedUrlDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uploadUrl')
  final String? uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'expiresAt')
  final DateTime? expiresAt;
  final Map<String, String>? _headers;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ImagePresignedUrlDtoDto(uploadUrl: $uploadUrl, fileUrl: $fileUrl, fileName: $fileName, expiresAt: $expiresAt, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePresignedUrlDtoDtoImpl &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uploadUrl, fileUrl, fileName,
      expiresAt, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of ImagePresignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePresignedUrlDtoDtoImplCopyWith<_$ImagePresignedUrlDtoDtoImpl>
      get copyWith => __$$ImagePresignedUrlDtoDtoImplCopyWithImpl<
          _$ImagePresignedUrlDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePresignedUrlDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ImagePresignedUrlDtoDto implements ImagePresignedUrlDtoDto {
  factory _ImagePresignedUrlDtoDto(
          {@JsonKey(name: 'uploadUrl') final String? uploadUrl,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'expiresAt') final DateTime? expiresAt,
          @JsonKey(name: 'headers') final Map<String, String>? headers}) =
      _$ImagePresignedUrlDtoDtoImpl;

  factory _ImagePresignedUrlDtoDto.fromJson(Map<String, dynamic> json) =
      _$ImagePresignedUrlDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers;

  /// Create a copy of ImagePresignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePresignedUrlDtoDtoImplCopyWith<_$ImagePresignedUrlDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InteractionResultDtoDto _$InteractionResultDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _InteractionResultDtoDto.fromJson(json);
}

/// @nodoc
mixin _$InteractionResultDtoDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes => throw _privateConstructorUsedError;

  /// Serializes this InteractionResultDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionResultDtoDtoCopyWith<InteractionResultDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionResultDtoDtoCopyWith<$Res> {
  factory $InteractionResultDtoDtoCopyWith(InteractionResultDtoDto value,
          $Res Function(InteractionResultDtoDto) then) =
      _$InteractionResultDtoDtoCopyWithImpl<$Res, InteractionResultDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$InteractionResultDtoDtoCopyWithImpl<$Res,
        $Val extends InteractionResultDtoDto>
    implements $InteractionResultDtoDtoCopyWith<$Res> {
  _$InteractionResultDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionResultDtoDtoImplCopyWith<$Res>
    implements $InteractionResultDtoDtoCopyWith<$Res> {
  factory _$$InteractionResultDtoDtoImplCopyWith(
          _$InteractionResultDtoDtoImpl value,
          $Res Function(_$InteractionResultDtoDtoImpl) then) =
      __$$InteractionResultDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$$InteractionResultDtoDtoImplCopyWithImpl<$Res>
    extends _$InteractionResultDtoDtoCopyWithImpl<$Res,
        _$InteractionResultDtoDtoImpl>
    implements _$$InteractionResultDtoDtoImplCopyWith<$Res> {
  __$$InteractionResultDtoDtoImplCopyWithImpl(
      _$InteractionResultDtoDtoImpl _value,
      $Res Function(_$InteractionResultDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$InteractionResultDtoDtoImpl(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionResultDtoDtoImpl implements _InteractionResultDtoDto {
  _$InteractionResultDtoDtoImpl(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});

  factory _$InteractionResultDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionResultDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  @override
  String toString() {
    return 'InteractionResultDtoDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionResultDtoDtoImpl &&
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

  /// Create a copy of InteractionResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionResultDtoDtoImplCopyWith<_$InteractionResultDtoDtoImpl>
      get copyWith => __$$InteractionResultDtoDtoImplCopyWithImpl<
          _$InteractionResultDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionResultDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _InteractionResultDtoDto implements InteractionResultDtoDto {
  factory _InteractionResultDtoDto(
          {@JsonKey(name: 'isSteppedWith') final bool? isSteppedWith,
          @JsonKey(name: 'isLiked') final bool? isLiked,
          @JsonKey(name: 'totalLikes') final int? totalLikes}) =
      _$InteractionResultDtoDtoImpl;

  factory _InteractionResultDtoDto.fromJson(Map<String, dynamic> json) =
      _$InteractionResultDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of InteractionResultDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionResultDtoDtoImplCopyWith<_$InteractionResultDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JourneyCreatingDtoDto _$JourneyCreatingDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _JourneyCreatingDtoDto.fromJson(json);
}

/// @nodoc
mixin _$JourneyCreatingDtoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepContent')
  String get firstStepContent => throw _privateConstructorUsedError;

  /// Serializes this JourneyCreatingDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyCreatingDtoDtoCopyWith<JourneyCreatingDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyCreatingDtoDtoCopyWith<$Res> {
  factory $JourneyCreatingDtoDtoCopyWith(JourneyCreatingDtoDto value,
          $Res Function(JourneyCreatingDtoDto) then) =
      _$JourneyCreatingDtoDtoCopyWithImpl<$Res, JourneyCreatingDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class _$JourneyCreatingDtoDtoCopyWithImpl<$Res,
        $Val extends JourneyCreatingDtoDto>
    implements $JourneyCreatingDtoDtoCopyWith<$Res> {
  _$JourneyCreatingDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _value.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JourneyCreatingDtoDtoImplCopyWith<$Res>
    implements $JourneyCreatingDtoDtoCopyWith<$Res> {
  factory _$$JourneyCreatingDtoDtoImplCopyWith(
          _$JourneyCreatingDtoDtoImpl value,
          $Res Function(_$JourneyCreatingDtoDtoImpl) then) =
      __$$JourneyCreatingDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class __$$JourneyCreatingDtoDtoImplCopyWithImpl<$Res>
    extends _$JourneyCreatingDtoDtoCopyWithImpl<$Res,
        _$JourneyCreatingDtoDtoImpl>
    implements _$$JourneyCreatingDtoDtoImplCopyWith<$Res> {
  __$$JourneyCreatingDtoDtoImplCopyWithImpl(_$JourneyCreatingDtoDtoImpl _value,
      $Res Function(_$JourneyCreatingDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_$JourneyCreatingDtoDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _value.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyCreatingDtoDtoImpl implements _JourneyCreatingDtoDto {
  _$JourneyCreatingDtoDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'firstStepContent') required this.firstStepContent});

  factory _$JourneyCreatingDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyCreatingDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'firstStepContent')
  final String firstStepContent;

  @override
  String toString() {
    return 'JourneyCreatingDtoDto(title: $title, description: $description, firstStepContent: $firstStepContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyCreatingDtoDtoImpl &&
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

  /// Create a copy of JourneyCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyCreatingDtoDtoImplCopyWith<_$JourneyCreatingDtoDtoImpl>
      get copyWith => __$$JourneyCreatingDtoDtoImplCopyWithImpl<
          _$JourneyCreatingDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyCreatingDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _JourneyCreatingDtoDto implements JourneyCreatingDtoDto {
  factory _JourneyCreatingDtoDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'firstStepContent')
      required final String firstStepContent}) = _$JourneyCreatingDtoDtoImpl;

  factory _JourneyCreatingDtoDto.fromJson(Map<String, dynamic> json) =
      _$JourneyCreatingDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'firstStepContent')
  String get firstStepContent;

  /// Create a copy of JourneyCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyCreatingDtoDtoImplCopyWith<_$JourneyCreatingDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JourneyDayCalendarDtoDto _$JourneyDayCalendarDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _JourneyDayCalendarDtoDto.fromJson(json);
}

/// @nodoc
mixin _$JourneyDayCalendarDtoDto {
  @JsonKey(name: 'lastStep')
  StepDtoDto get lastStep => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalSteps')
  int get totalSteps => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this JourneyDayCalendarDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyDayCalendarDtoDtoCopyWith<JourneyDayCalendarDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyDayCalendarDtoDtoCopyWith<$Res> {
  factory $JourneyDayCalendarDtoDtoCopyWith(JourneyDayCalendarDtoDto value,
          $Res Function(JourneyDayCalendarDtoDto) then) =
      _$JourneyDayCalendarDtoDtoCopyWithImpl<$Res, JourneyDayCalendarDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lastStep') StepDtoDto lastStep,
      @JsonKey(name: 'totalSteps') int totalSteps,
      @JsonKey(name: 'date') DateTime date});

  $StepDtoDtoCopyWith<$Res> get lastStep;
}

/// @nodoc
class _$JourneyDayCalendarDtoDtoCopyWithImpl<$Res,
        $Val extends JourneyDayCalendarDtoDto>
    implements $JourneyDayCalendarDtoDtoCopyWith<$Res> {
  _$JourneyDayCalendarDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastStep = null,
    Object? totalSteps = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      lastStep: null == lastStep
          ? _value.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as StepDtoDto,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepDtoDtoCopyWith<$Res> get lastStep {
    return $StepDtoDtoCopyWith<$Res>(_value.lastStep, (value) {
      return _then(_value.copyWith(lastStep: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JourneyDayCalendarDtoDtoImplCopyWith<$Res>
    implements $JourneyDayCalendarDtoDtoCopyWith<$Res> {
  factory _$$JourneyDayCalendarDtoDtoImplCopyWith(
          _$JourneyDayCalendarDtoDtoImpl value,
          $Res Function(_$JourneyDayCalendarDtoDtoImpl) then) =
      __$$JourneyDayCalendarDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lastStep') StepDtoDto lastStep,
      @JsonKey(name: 'totalSteps') int totalSteps,
      @JsonKey(name: 'date') DateTime date});

  @override
  $StepDtoDtoCopyWith<$Res> get lastStep;
}

/// @nodoc
class __$$JourneyDayCalendarDtoDtoImplCopyWithImpl<$Res>
    extends _$JourneyDayCalendarDtoDtoCopyWithImpl<$Res,
        _$JourneyDayCalendarDtoDtoImpl>
    implements _$$JourneyDayCalendarDtoDtoImplCopyWith<$Res> {
  __$$JourneyDayCalendarDtoDtoImplCopyWithImpl(
      _$JourneyDayCalendarDtoDtoImpl _value,
      $Res Function(_$JourneyDayCalendarDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastStep = null,
    Object? totalSteps = null,
    Object? date = null,
  }) {
    return _then(_$JourneyDayCalendarDtoDtoImpl(
      lastStep: null == lastStep
          ? _value.lastStep
          : lastStep // ignore: cast_nullable_to_non_nullable
              as StepDtoDto,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyDayCalendarDtoDtoImpl implements _JourneyDayCalendarDtoDto {
  _$JourneyDayCalendarDtoDtoImpl(
      {@JsonKey(name: 'lastStep') required this.lastStep,
      @JsonKey(name: 'totalSteps') this.totalSteps = 0,
      @JsonKey(name: 'date') required this.date});

  factory _$JourneyDayCalendarDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyDayCalendarDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'lastStep')
  final StepDtoDto lastStep;
  @override
  @JsonKey(name: 'totalSteps')
  final int totalSteps;
  @override
  @JsonKey(name: 'date')
  final DateTime date;

  @override
  String toString() {
    return 'JourneyDayCalendarDtoDto(lastStep: $lastStep, totalSteps: $totalSteps, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyDayCalendarDtoDtoImpl &&
            (identical(other.lastStep, lastStep) ||
                other.lastStep == lastStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastStep, totalSteps, date);

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyDayCalendarDtoDtoImplCopyWith<_$JourneyDayCalendarDtoDtoImpl>
      get copyWith => __$$JourneyDayCalendarDtoDtoImplCopyWithImpl<
          _$JourneyDayCalendarDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyDayCalendarDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _JourneyDayCalendarDtoDto implements JourneyDayCalendarDtoDto {
  factory _JourneyDayCalendarDtoDto(
          {@JsonKey(name: 'lastStep') required final StepDtoDto lastStep,
          @JsonKey(name: 'totalSteps') final int totalSteps,
          @JsonKey(name: 'date') required final DateTime date}) =
      _$JourneyDayCalendarDtoDtoImpl;

  factory _JourneyDayCalendarDtoDto.fromJson(Map<String, dynamic> json) =
      _$JourneyDayCalendarDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'lastStep')
  StepDtoDto get lastStep;
  @override
  @JsonKey(name: 'totalSteps')
  int get totalSteps;
  @override
  @JsonKey(name: 'date')
  DateTime get date;

  /// Create a copy of JourneyDayCalendarDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyDayCalendarDtoDtoImplCopyWith<_$JourneyDayCalendarDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JourneyDtoDto _$JourneyDtoDtoFromJson(Map<String, dynamic> json) {
  return _JourneyDtoDto.fromJson(json);
}

/// @nodoc
mixin _$JourneyDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId => throw _privateConstructorUsedError;

  /// Serializes this JourneyDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyDtoDtoCopyWith<JourneyDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyDtoDtoCopyWith<$Res> {
  factory $JourneyDtoDtoCopyWith(
          JourneyDtoDto value, $Res Function(JourneyDtoDto) then) =
      _$JourneyDtoDtoCopyWithImpl<$Res, JourneyDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class _$JourneyDtoDtoCopyWithImpl<$Res, $Val extends JourneyDtoDto>
    implements $JourneyDtoDtoCopyWith<$Res> {
  _$JourneyDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JourneyDtoDtoImplCopyWith<$Res>
    implements $JourneyDtoDtoCopyWith<$Res> {
  factory _$$JourneyDtoDtoImplCopyWith(
          _$JourneyDtoDtoImpl value, $Res Function(_$JourneyDtoDtoImpl) then) =
      __$$JourneyDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class __$$JourneyDtoDtoImplCopyWithImpl<$Res>
    extends _$JourneyDtoDtoCopyWithImpl<$Res, _$JourneyDtoDtoImpl>
    implements _$$JourneyDtoDtoImplCopyWith<$Res> {
  __$$JourneyDtoDtoImplCopyWithImpl(
      _$JourneyDtoDtoImpl _value, $Res Function(_$JourneyDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_$JourneyDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyDtoDtoImpl implements _JourneyDtoDto {
  _$JourneyDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'firstStepId') @ApiUuidJsonConverter() this.firstStepId,
      @JsonKey(name: 'finalStepId') @ApiUuidJsonConverter() this.finalStepId});

  factory _$JourneyDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? finalStepId;

  @override
  String toString() {
    return 'JourneyDtoDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyDtoDtoImpl &&
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
                other.finalStepId == finalStepId));
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
      finalStepId);

  /// Create a copy of JourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyDtoDtoImplCopyWith<_$JourneyDtoDtoImpl> get copyWith =>
      __$$JourneyDtoDtoImplCopyWithImpl<_$JourneyDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _JourneyDtoDto implements JourneyDtoDto {
  factory _JourneyDtoDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'completedDate') final DateTime? completedDate,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? finalStepId}) = _$JourneyDtoDtoImpl;

  factory _JourneyDtoDto.fromJson(Map<String, dynamic> json) =
      _$JourneyDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId;

  /// Create a copy of JourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyDtoDtoImplCopyWith<_$JourneyDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JourneyDto2Dto _$JourneyDto2DtoFromJson(Map<String, dynamic> json) {
  return _JourneyDto2Dto.fromJson(json);
}

/// @nodoc
mixin _$JourneyDto2Dto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId => throw _privateConstructorUsedError;

  /// Serializes this JourneyDto2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyDto2DtoCopyWith<JourneyDto2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyDto2DtoCopyWith<$Res> {
  factory $JourneyDto2DtoCopyWith(
          JourneyDto2Dto value, $Res Function(JourneyDto2Dto) then) =
      _$JourneyDto2DtoCopyWithImpl<$Res, JourneyDto2Dto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class _$JourneyDto2DtoCopyWithImpl<$Res, $Val extends JourneyDto2Dto>
    implements $JourneyDto2DtoCopyWith<$Res> {
  _$JourneyDto2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JourneyDto2DtoImplCopyWith<$Res>
    implements $JourneyDto2DtoCopyWith<$Res> {
  factory _$$JourneyDto2DtoImplCopyWith(_$JourneyDto2DtoImpl value,
          $Res Function(_$JourneyDto2DtoImpl) then) =
      __$$JourneyDto2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class __$$JourneyDto2DtoImplCopyWithImpl<$Res>
    extends _$JourneyDto2DtoCopyWithImpl<$Res, _$JourneyDto2DtoImpl>
    implements _$$JourneyDto2DtoImplCopyWith<$Res> {
  __$$JourneyDto2DtoImplCopyWithImpl(
      _$JourneyDto2DtoImpl _value, $Res Function(_$JourneyDto2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_$JourneyDto2DtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyDto2DtoImpl implements _JourneyDto2Dto {
  _$JourneyDto2DtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'firstStepId') @ApiUuidJsonConverter() this.firstStepId,
      @JsonKey(name: 'finalStepId') @ApiUuidJsonConverter() this.finalStepId});

  factory _$JourneyDto2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyDto2DtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? finalStepId;

  @override
  String toString() {
    return 'JourneyDto2Dto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyDto2DtoImpl &&
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
                other.finalStepId == finalStepId));
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
      finalStepId);

  /// Create a copy of JourneyDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyDto2DtoImplCopyWith<_$JourneyDto2DtoImpl> get copyWith =>
      __$$JourneyDto2DtoImplCopyWithImpl<_$JourneyDto2DtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyDto2DtoImplToJson(
      this,
    );
  }
}

abstract class _JourneyDto2Dto implements JourneyDto2Dto {
  factory _JourneyDto2Dto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'completedDate') final DateTime? completedDate,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? finalStepId}) = _$JourneyDto2DtoImpl;

  factory _JourneyDto2Dto.fromJson(Map<String, dynamic> json) =
      _$JourneyDto2DtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId;

  /// Create a copy of JourneyDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyDto2DtoImplCopyWith<_$JourneyDto2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JourneyInDetailDtoDto _$JourneyInDetailDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _JourneyInDetailDtoDto.fromJson(json);
}

/// @nodoc
mixin _$JourneyInDetailDtoDto {
  @JsonKey(name: 'journey')
  JourneyDto2Dto get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepsCount')
  int get stepsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastStepDate')
  DateTime get lastStepDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepperCount')
  int? get stepperCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers => throw _privateConstructorUsedError;
  @JsonKey(name: 'starterCount')
  int? get starterCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'companionCount')
  int? get companionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'celebratorCount')
  int? get celebratorCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators =>
      throw _privateConstructorUsedError;

  /// Serializes this JourneyInDetailDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JourneyInDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JourneyInDetailDtoDtoCopyWith<JourneyInDetailDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyInDetailDtoDtoCopyWith<$Res> {
  factory $JourneyInDetailDtoDtoCopyWith(JourneyInDetailDtoDto value,
          $Res Function(JourneyInDetailDtoDto) then) =
      _$JourneyInDetailDtoDtoCopyWithImpl<$Res, JourneyInDetailDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters')
      List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions')
      List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators});

  $JourneyDto2DtoCopyWith<$Res> get journey;
}

/// @nodoc
class _$JourneyInDetailDtoDtoCopyWithImpl<$Res,
        $Val extends JourneyInDetailDtoDto>
    implements $JourneyInDetailDtoDtoCopyWith<$Res> {
  _$JourneyInDetailDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JourneyInDetailDtoDto
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
  }) {
    return _then(_value.copyWith(
      journey: null == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto2Dto,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _value.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _value.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _value.latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      starterCount: freezed == starterCount
          ? _value.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _value.latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestStartersDto>?,
      companionCount: freezed == companionCount
          ? _value.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _value.latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCompanionsDto>?,
      celebratorCount: freezed == celebratorCount
          ? _value.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _value.latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCelebratorsDto>?,
    ) as $Val);
  }

  /// Create a copy of JourneyInDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDto2DtoCopyWith<$Res> get journey {
    return $JourneyDto2DtoCopyWith<$Res>(_value.journey, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JourneyInDetailDtoDtoImplCopyWith<$Res>
    implements $JourneyInDetailDtoDtoCopyWith<$Res> {
  factory _$$JourneyInDetailDtoDtoImplCopyWith(
          _$JourneyInDetailDtoDtoImpl value,
          $Res Function(_$JourneyInDetailDtoDtoImpl) then) =
      __$$JourneyInDetailDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters')
      List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions')
      List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators});

  @override
  $JourneyDto2DtoCopyWith<$Res> get journey;
}

/// @nodoc
class __$$JourneyInDetailDtoDtoImplCopyWithImpl<$Res>
    extends _$JourneyInDetailDtoDtoCopyWithImpl<$Res,
        _$JourneyInDetailDtoDtoImpl>
    implements _$$JourneyInDetailDtoDtoImplCopyWith<$Res> {
  __$$JourneyInDetailDtoDtoImplCopyWithImpl(_$JourneyInDetailDtoDtoImpl _value,
      $Res Function(_$JourneyInDetailDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JourneyInDetailDtoDto
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
  }) {
    return _then(_$JourneyInDetailDtoDtoImpl(
      journey: null == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto2Dto,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _value.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _value.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _value._latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      starterCount: freezed == starterCount
          ? _value.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _value._latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestStartersDto>?,
      companionCount: freezed == companionCount
          ? _value.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _value._latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCompanionsDto>?,
      celebratorCount: freezed == celebratorCount
          ? _value.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _value._latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCelebratorsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JourneyInDetailDtoDtoImpl implements _JourneyInDetailDtoDto {
  _$JourneyInDetailDtoDtoImpl(
      {@JsonKey(name: 'journey') required this.journey,
      @JsonKey(name: 'stepsCount') required this.stepsCount,
      @JsonKey(name: 'lastStepDate') required this.lastStepDate,
      @JsonKey(name: 'stepperCount') this.stepperCount,
      @JsonKey(name: 'latestSteppers') final List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') this.starterCount,
      @JsonKey(name: 'latestStarters')
      final List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') this.companionCount,
      @JsonKey(name: 'latestCompanions')
      final List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') this.celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      final List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators})
      : _latestSteppers = latestSteppers,
        _latestStarters = latestStarters,
        _latestCompanions = latestCompanions,
        _latestCelebrators = latestCelebrators;

  factory _$JourneyInDetailDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JourneyInDetailDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'journey')
  final JourneyDto2Dto journey;
  @override
  @JsonKey(name: 'stepsCount')
  final int stepsCount;
  @override
  @JsonKey(name: 'lastStepDate')
  final DateTime lastStepDate;
  @override
  @JsonKey(name: 'stepperCount')
  final int? stepperCount;
  final List<UserDtoDto>? _latestSteppers;
  @override
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers {
    final value = _latestSteppers;
    if (value == null) return null;
    if (_latestSteppers is EqualUnmodifiableListView) return _latestSteppers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'starterCount')
  final int? starterCount;
  final List<JourneyInDetailDtoDtoLatestStartersDto>? _latestStarters;
  @override
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters {
    final value = _latestStarters;
    if (value == null) return null;
    if (_latestStarters is EqualUnmodifiableListView) return _latestStarters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'companionCount')
  final int? companionCount;
  final List<JourneyInDetailDtoDtoLatestCompanionsDto>? _latestCompanions;
  @override
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions {
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
  final List<JourneyInDetailDtoDtoLatestCelebratorsDto>? _latestCelebrators;
  @override
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators {
    final value = _latestCelebrators;
    if (value == null) return null;
    if (_latestCelebrators is EqualUnmodifiableListView)
      return _latestCelebrators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JourneyInDetailDtoDto(journey: $journey, stepsCount: $stepsCount, lastStepDate: $lastStepDate, stepperCount: $stepperCount, latestSteppers: $latestSteppers, starterCount: $starterCount, latestStarters: $latestStarters, companionCount: $companionCount, latestCompanions: $latestCompanions, celebratorCount: $celebratorCount, latestCelebrators: $latestCelebrators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneyInDetailDtoDtoImpl &&
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
                .equals(other._latestCelebrators, _latestCelebrators));
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
      const DeepCollectionEquality().hash(_latestCelebrators));

  /// Create a copy of JourneyInDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneyInDetailDtoDtoImplCopyWith<_$JourneyInDetailDtoDtoImpl>
      get copyWith => __$$JourneyInDetailDtoDtoImplCopyWithImpl<
          _$JourneyInDetailDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JourneyInDetailDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _JourneyInDetailDtoDto implements JourneyInDetailDtoDto {
  factory _JourneyInDetailDtoDto(
      {@JsonKey(name: 'journey') required final JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') required final int stepsCount,
      @JsonKey(name: 'lastStepDate') required final DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') final int? stepperCount,
      @JsonKey(name: 'latestSteppers') final List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') final int? starterCount,
      @JsonKey(name: 'latestStarters')
      final List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') final int? companionCount,
      @JsonKey(name: 'latestCompanions')
      final List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') final int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      final List<JourneyInDetailDtoDtoLatestCelebratorsDto>?
          latestCelebrators}) = _$JourneyInDetailDtoDtoImpl;

  factory _JourneyInDetailDtoDto.fromJson(Map<String, dynamic> json) =
      _$JourneyInDetailDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'journey')
  JourneyDto2Dto get journey;
  @override
  @JsonKey(name: 'stepsCount')
  int get stepsCount;
  @override
  @JsonKey(name: 'lastStepDate')
  DateTime get lastStepDate;
  @override
  @JsonKey(name: 'stepperCount')
  int? get stepperCount;
  @override
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers;
  @override
  @JsonKey(name: 'starterCount')
  int? get starterCount;
  @override
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters;
  @override
  @JsonKey(name: 'companionCount')
  int? get companionCount;
  @override
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions;
  @override
  @JsonKey(name: 'celebratorCount')
  int? get celebratorCount;
  @override
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators;

  /// Create a copy of JourneyInDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JourneyInDetailDtoDtoImplCopyWith<_$JourneyInDetailDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationDtoDto _$NotificationDtoDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDtoDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int? get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead')
  bool? get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceUser')
  UserDetailDto2Dto? get sourceUser => throw _privateConstructorUsedError;

  /// Serializes this NotificationDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDtoDtoCopyWith<NotificationDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoDtoCopyWith<$Res> {
  factory $NotificationDtoDtoCopyWith(
          NotificationDtoDto value, $Res Function(NotificationDtoDto) then) =
      _$NotificationDtoDtoCopyWithImpl<$Res, NotificationDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'notificationType') int? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser});

  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class _$NotificationDtoDtoCopyWithImpl<$Res, $Val extends NotificationDtoDto>
    implements $NotificationDtoDtoCopyWith<$Res> {
  _$NotificationDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      sourceUser: freezed == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto2Dto?,
    ) as $Val);
  }

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser {
    if (_value.sourceUser == null) {
      return null;
    }

    return $UserDetailDto2DtoCopyWith<$Res>(_value.sourceUser!, (value) {
      return _then(_value.copyWith(sourceUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationDtoDtoImplCopyWith<$Res>
    implements $NotificationDtoDtoCopyWith<$Res> {
  factory _$$NotificationDtoDtoImplCopyWith(_$NotificationDtoDtoImpl value,
          $Res Function(_$NotificationDtoDtoImpl) then) =
      __$$NotificationDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'notificationType') int? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser});

  @override
  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class __$$NotificationDtoDtoImplCopyWithImpl<$Res>
    extends _$NotificationDtoDtoCopyWithImpl<$Res, _$NotificationDtoDtoImpl>
    implements _$$NotificationDtoDtoImplCopyWith<$Res> {
  __$$NotificationDtoDtoImplCopyWithImpl(_$NotificationDtoDtoImpl _value,
      $Res Function(_$NotificationDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_$NotificationDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      sourceUser: freezed == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto2Dto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDtoDtoImpl implements _NotificationDtoDto {
  _$NotificationDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'notificationType') this.notificationType,
      @JsonKey(name: 'isRead') this.isRead,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'sourceUser') this.sourceUser})
      : _data = data;

  factory _$NotificationDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'notificationType')
  final int? notificationType;
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
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
  @override
  @JsonKey(name: 'sourceUser')
  final UserDetailDto2Dto? sourceUser;

  @override
  String toString() {
    return 'NotificationDtoDto(id: $id, title: $title, body: $body, notificationType: $notificationType, isRead: $isRead, createdDate: $createdDate, data: $data, priority: $priority, relatedEntityId: $relatedEntityId, sourceUser: $sourceUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDtoDtoImpl &&
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

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDtoDtoImplCopyWith<_$NotificationDtoDtoImpl> get copyWith =>
      __$$NotificationDtoDtoImplCopyWithImpl<_$NotificationDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationDtoDto implements NotificationDtoDto {
  factory _NotificationDtoDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'body') final String? body,
          @JsonKey(name: 'notificationType') final int? notificationType,
          @JsonKey(name: 'isRead') final bool? isRead,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'data') final Map<String, String>? data,
          @JsonKey(name: 'priority') final int? priority,
          @JsonKey(name: 'relatedEntityId')
          @ApiUuidJsonConverter()
          final ApiUuid? relatedEntityId,
          @JsonKey(name: 'sourceUser') final UserDetailDto2Dto? sourceUser}) =
      _$NotificationDtoDtoImpl;

  factory _NotificationDtoDto.fromJson(Map<String, dynamic> json) =
      _$NotificationDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'notificationType')
  int? get notificationType;
  @override
  @JsonKey(name: 'isRead')
  bool? get isRead;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'sourceUser')
  UserDetailDto2Dto? get sourceUser;

  /// Create a copy of NotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDtoDtoImplCopyWith<_$NotificationDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPagedDtoDto _$NotificationPagedDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _NotificationPagedDtoDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationPagedDtoDto {
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageSize')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMore')
  bool? get hasMore => throw _privateConstructorUsedError;

  /// Serializes this NotificationPagedDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPagedDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPagedDtoDtoCopyWith<NotificationPagedDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPagedDtoDtoCopyWith<$Res> {
  factory $NotificationPagedDtoDtoCopyWith(NotificationPagedDtoDto value,
          $Res Function(NotificationPagedDtoDto) then) =
      _$NotificationPagedDtoDtoCopyWithImpl<$Res, NotificationPagedDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class _$NotificationPagedDtoDtoCopyWithImpl<$Res,
        $Val extends NotificationPagedDtoDto>
    implements $NotificationPagedDtoDtoCopyWith<$Res> {
  _$NotificationPagedDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPagedDtoDto
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
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDtoDto>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPagedDtoDtoImplCopyWith<$Res>
    implements $NotificationPagedDtoDtoCopyWith<$Res> {
  factory _$$NotificationPagedDtoDtoImplCopyWith(
          _$NotificationPagedDtoDtoImpl value,
          $Res Function(_$NotificationPagedDtoDtoImpl) then) =
      __$$NotificationPagedDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class __$$NotificationPagedDtoDtoImplCopyWithImpl<$Res>
    extends _$NotificationPagedDtoDtoCopyWithImpl<$Res,
        _$NotificationPagedDtoDtoImpl>
    implements _$$NotificationPagedDtoDtoImplCopyWith<$Res> {
  __$$NotificationPagedDtoDtoImplCopyWithImpl(
      _$NotificationPagedDtoDtoImpl _value,
      $Res Function(_$NotificationPagedDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPagedDtoDto
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
    return _then(_$NotificationPagedDtoDtoImpl(
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDtoDto>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPagedDtoDtoImpl implements _NotificationPagedDtoDto {
  _$NotificationPagedDtoDtoImpl(
      {@JsonKey(name: 'notifications')
      final List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'pageSize') this.pageSize,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'unreadCount') this.unreadCount,
      @JsonKey(name: 'hasMore') this.hasMore})
      : _notifications = notifications;

  factory _$NotificationPagedDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPagedDtoDtoImplFromJson(json);

  final List<NotificationDtoDto>? _notifications;
  @override
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications {
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

  @override
  String toString() {
    return 'NotificationPagedDtoDto(notifications: $notifications, page: $page, pageSize: $pageSize, totalCount: $totalCount, unreadCount: $unreadCount, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPagedDtoDtoImpl &&
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

  /// Create a copy of NotificationPagedDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPagedDtoDtoImplCopyWith<_$NotificationPagedDtoDtoImpl>
      get copyWith => __$$NotificationPagedDtoDtoImplCopyWithImpl<
          _$NotificationPagedDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPagedDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationPagedDtoDto implements NotificationPagedDtoDto {
  factory _NotificationPagedDtoDto(
          {@JsonKey(name: 'notifications')
          final List<NotificationDtoDto>? notifications,
          @JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'pageSize') final int? pageSize,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'unreadCount') final int? unreadCount,
          @JsonKey(name: 'hasMore') final bool? hasMore}) =
      _$NotificationPagedDtoDtoImpl;

  factory _NotificationPagedDtoDto.fromJson(Map<String, dynamic> json) =
      _$NotificationPagedDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'pageSize')
  int? get pageSize;
  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;
  @override
  @JsonKey(name: 'hasMore')
  bool? get hasMore;

  /// Create a copy of NotificationPagedDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPagedDtoDtoImplCopyWith<_$NotificationPagedDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileDtoDto _$ProfileDtoDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDtoDto {
  @JsonKey(name: 'userDetail')
  UserDetailDtoDto get userDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'badgesCount')
  int? get badgesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportersCount')
  int? get supportersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'followersCount')
  int? get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'followingsCount')
  int? get followingsCount => throw _privateConstructorUsedError;

  /// Serializes this ProfileDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDtoDtoCopyWith<ProfileDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoDtoCopyWith<$Res> {
  factory $ProfileDtoDtoCopyWith(
          ProfileDtoDto value, $Res Function(ProfileDtoDto) then) =
      _$ProfileDtoDtoCopyWithImpl<$Res, ProfileDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') int? badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int? followersCount,
      @JsonKey(name: 'followingsCount') int? followingsCount});

  $UserDetailDtoDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class _$ProfileDtoDtoCopyWithImpl<$Res, $Val extends ProfileDtoDto>
    implements $ProfileDtoDtoCopyWith<$Res> {
  _$ProfileDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = freezed,
    Object? badgesUsers = freezed,
    Object? supportersCount = freezed,
    Object? supportersUsers = freezed,
    Object? followersCount = freezed,
    Object? followingsCount = freezed,
  }) {
    return _then(_value.copyWith(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDtoDto,
      badgesCount: freezed == badgesCount
          ? _value.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesUsers: freezed == badgesUsers
          ? _value.badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      supportersCount: freezed == supportersCount
          ? _value.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      supportersUsers: freezed == supportersUsers
          ? _value.supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<ProfileDtoDtoSupportersUsersDto>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingsCount: freezed == followingsCount
          ? _value.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoDtoCopyWith<$Res> get userDetail {
    return $UserDetailDtoDtoCopyWith<$Res>(_value.userDetail, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDtoDtoImplCopyWith<$Res>
    implements $ProfileDtoDtoCopyWith<$Res> {
  factory _$$ProfileDtoDtoImplCopyWith(
          _$ProfileDtoDtoImpl value, $Res Function(_$ProfileDtoDtoImpl) then) =
      __$$ProfileDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') int? badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int? followersCount,
      @JsonKey(name: 'followingsCount') int? followingsCount});

  @override
  $UserDetailDtoDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class __$$ProfileDtoDtoImplCopyWithImpl<$Res>
    extends _$ProfileDtoDtoCopyWithImpl<$Res, _$ProfileDtoDtoImpl>
    implements _$$ProfileDtoDtoImplCopyWith<$Res> {
  __$$ProfileDtoDtoImplCopyWithImpl(
      _$ProfileDtoDtoImpl _value, $Res Function(_$ProfileDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = freezed,
    Object? badgesUsers = freezed,
    Object? supportersCount = freezed,
    Object? supportersUsers = freezed,
    Object? followersCount = freezed,
    Object? followingsCount = freezed,
  }) {
    return _then(_$ProfileDtoDtoImpl(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDtoDto,
      badgesCount: freezed == badgesCount
          ? _value.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesUsers: freezed == badgesUsers
          ? _value._badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      supportersCount: freezed == supportersCount
          ? _value.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      supportersUsers: freezed == supportersUsers
          ? _value._supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<ProfileDtoDtoSupportersUsersDto>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingsCount: freezed == followingsCount
          ? _value.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDtoDtoImpl implements _ProfileDtoDto {
  _$ProfileDtoDtoImpl(
      {@JsonKey(name: 'userDetail') required this.userDetail,
      @JsonKey(name: 'badgesCount') this.badgesCount,
      @JsonKey(name: 'badgesUsers') final List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') this.supportersCount,
      @JsonKey(name: 'supportersUsers')
      final List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') this.followersCount,
      @JsonKey(name: 'followingsCount') this.followingsCount})
      : _badgesUsers = badgesUsers,
        _supportersUsers = supportersUsers;

  factory _$ProfileDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userDetail')
  final UserDetailDtoDto userDetail;
  @override
  @JsonKey(name: 'badgesCount')
  final int? badgesCount;
  final List<UserDtoDto>? _badgesUsers;
  @override
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers {
    final value = _badgesUsers;
    if (value == null) return null;
    if (_badgesUsers is EqualUnmodifiableListView) return _badgesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'supportersCount')
  final int? supportersCount;
  final List<ProfileDtoDtoSupportersUsersDto>? _supportersUsers;
  @override
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers {
    final value = _supportersUsers;
    if (value == null) return null;
    if (_supportersUsers is EqualUnmodifiableListView) return _supportersUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'followersCount')
  final int? followersCount;
  @override
  @JsonKey(name: 'followingsCount')
  final int? followingsCount;

  @override
  String toString() {
    return 'ProfileDtoDto(userDetail: $userDetail, badgesCount: $badgesCount, badgesUsers: $badgesUsers, supportersCount: $supportersCount, supportersUsers: $supportersUsers, followersCount: $followersCount, followingsCount: $followingsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDtoDtoImpl &&
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

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDtoDtoImplCopyWith<_$ProfileDtoDtoImpl> get copyWith =>
      __$$ProfileDtoDtoImplCopyWithImpl<_$ProfileDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ProfileDtoDto implements ProfileDtoDto {
  factory _ProfileDtoDto(
      {@JsonKey(name: 'userDetail') required final UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') final int? badgesCount,
      @JsonKey(name: 'badgesUsers') final List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') final int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      final List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') final int? followersCount,
      @JsonKey(name: 'followingsCount')
      final int? followingsCount}) = _$ProfileDtoDtoImpl;

  factory _ProfileDtoDto.fromJson(Map<String, dynamic> json) =
      _$ProfileDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userDetail')
  UserDetailDtoDto get userDetail;
  @override
  @JsonKey(name: 'badgesCount')
  int? get badgesCount;
  @override
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers;
  @override
  @JsonKey(name: 'supportersCount')
  int? get supportersCount;
  @override
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers;
  @override
  @JsonKey(name: 'followersCount')
  int? get followersCount;
  @override
  @JsonKey(name: 'followingsCount')
  int? get followingsCount;

  /// Create a copy of ProfileDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDtoDtoImplCopyWith<_$ProfileDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyDtoDto _$ReplyDtoDtoFromJson(Map<String, dynamic> json) {
  return _ReplyDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ReplyDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get parentCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToUser')
  UserDto2Dto? get responseToUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartCount')
  int? get heartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;

  /// Serializes this ReplyDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyDtoDtoCopyWith<ReplyDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyDtoDtoCopyWith<$Res> {
  factory $ReplyDtoDtoCopyWith(
          ReplyDtoDto value, $Res Function(ReplyDtoDto) then) =
      _$ReplyDtoDtoCopyWithImpl<$Res, ReplyDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser});

  $UserDtoDtoCopyWith<$Res>? get user;
  $UserDto2DtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class _$ReplyDtoDtoCopyWithImpl<$Res, $Val extends ReplyDtoDto>
    implements $ReplyDtoDtoCopyWith<$Res> {
  _$ReplyDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? deletedDate = freezed,
    Object? user = freezed,
    Object? parentCommentId = freezed,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedDate: freezed == deletedDate
          ? _value.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      responseToUser: freezed == responseToUser
          ? _value.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDto2DtoCopyWith<$Res>? get responseToUser {
    if (_value.responseToUser == null) {
      return null;
    }

    return $UserDto2DtoCopyWith<$Res>(_value.responseToUser!, (value) {
      return _then(_value.copyWith(responseToUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplyDtoDtoImplCopyWith<$Res>
    implements $ReplyDtoDtoCopyWith<$Res> {
  factory _$$ReplyDtoDtoImplCopyWith(
          _$ReplyDtoDtoImpl value, $Res Function(_$ReplyDtoDtoImpl) then) =
      __$$ReplyDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser});

  @override
  $UserDtoDtoCopyWith<$Res>? get user;
  @override
  $UserDto2DtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class __$$ReplyDtoDtoImplCopyWithImpl<$Res>
    extends _$ReplyDtoDtoCopyWithImpl<$Res, _$ReplyDtoDtoImpl>
    implements _$$ReplyDtoDtoImplCopyWith<$Res> {
  __$$ReplyDtoDtoImplCopyWithImpl(
      _$ReplyDtoDtoImpl _value, $Res Function(_$ReplyDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? deletedDate = freezed,
    Object? user = freezed,
    Object? parentCommentId = freezed,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
  }) {
    return _then(_$ReplyDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedDate: freezed == deletedDate
          ? _value.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      responseToUser: freezed == responseToUser
          ? _value.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyDtoDtoImpl implements _ReplyDtoDto {
  _$ReplyDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'deletedDate') this.deletedDate,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      this.parentCommentId,
      @JsonKey(name: 'responseToUser') this.responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      this.responseToCommentId,
      @JsonKey(name: 'heartCount') this.heartCount,
      @JsonKey(name: 'heartedByUser') this.heartedByUser});

  factory _$ReplyDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  final DateTime? deletedDate;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto? user;
  @override
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? parentCommentId;
  @override
  @JsonKey(name: 'responseToUser')
  final UserDto2Dto? responseToUser;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? responseToCommentId;
  @override
  @JsonKey(name: 'heartCount')
  final int? heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;

  @override
  String toString() {
    return 'ReplyDtoDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, parentCommentId: $parentCommentId, responseToUser: $responseToUser, responseToCommentId: $responseToCommentId, heartCount: $heartCount, heartedByUser: $heartedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyDtoDtoImpl &&
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

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyDtoDtoImplCopyWith<_$ReplyDtoDtoImpl> get copyWith =>
      __$$ReplyDtoDtoImplCopyWithImpl<_$ReplyDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ReplyDtoDto implements ReplyDtoDto {
  factory _ReplyDtoDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'content') final String? content,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
          @JsonKey(name: 'deletedDate') final DateTime? deletedDate,
          @JsonKey(name: 'user') final UserDtoDto? user,
          @JsonKey(name: 'parentCommentId')
          @ApiUuidJsonConverter()
          final ApiUuid? parentCommentId,
          @JsonKey(name: 'responseToUser') final UserDto2Dto? responseToUser,
          @JsonKey(name: 'responseToCommentId')
          @ApiUuidJsonConverter()
          final ApiUuid? responseToCommentId,
          @JsonKey(name: 'heartCount') final int? heartCount,
          @JsonKey(name: 'heartedByUser') final bool? heartedByUser}) =
      _$ReplyDtoDtoImpl;

  factory _ReplyDtoDto.fromJson(Map<String, dynamic> json) =
      _$ReplyDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate;
  @override
  @JsonKey(name: 'user')
  UserDtoDto? get user;
  @override
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get parentCommentId;
  @override
  @JsonKey(name: 'responseToUser')
  UserDto2Dto? get responseToUser;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId;
  @override
  @JsonKey(name: 'heartCount')
  int? get heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;

  /// Create a copy of ReplyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyDtoDtoImplCopyWith<_$ReplyDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportCreatingDtoDto _$ReportCreatingDtoDtoFromJson(Map<String, dynamic> json) {
  return _ReportCreatingDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ReportCreatingDtoDto {
  @JsonKey(name: 'entityType')
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityId')
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this ReportCreatingDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCreatingDtoDtoCopyWith<ReportCreatingDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCreatingDtoDtoCopyWith<$Res> {
  factory $ReportCreatingDtoDtoCopyWith(ReportCreatingDtoDto value,
          $Res Function(ReportCreatingDtoDto) then) =
      _$ReportCreatingDtoDtoCopyWithImpl<$Res, ReportCreatingDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class _$ReportCreatingDtoDtoCopyWithImpl<$Res,
        $Val extends ReportCreatingDtoDto>
    implements $ReportCreatingDtoDtoCopyWith<$Res> {
  _$ReportCreatingDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportCreatingDtoDtoImplCopyWith<$Res>
    implements $ReportCreatingDtoDtoCopyWith<$Res> {
  factory _$$ReportCreatingDtoDtoImplCopyWith(_$ReportCreatingDtoDtoImpl value,
          $Res Function(_$ReportCreatingDtoDtoImpl) then) =
      __$$ReportCreatingDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class __$$ReportCreatingDtoDtoImplCopyWithImpl<$Res>
    extends _$ReportCreatingDtoDtoCopyWithImpl<$Res, _$ReportCreatingDtoDtoImpl>
    implements _$$ReportCreatingDtoDtoImplCopyWith<$Res> {
  __$$ReportCreatingDtoDtoImplCopyWithImpl(_$ReportCreatingDtoDtoImpl _value,
      $Res Function(_$ReportCreatingDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_$ReportCreatingDtoDtoImpl(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportCreatingDtoDtoImpl implements _ReportCreatingDtoDto {
  _$ReportCreatingDtoDtoImpl(
      {@JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') required this.entityId,
      @JsonKey(name: 'reason') required this.reason});

  factory _$ReportCreatingDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportCreatingDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String entityId;
  @override
  @JsonKey(name: 'reason')
  final String reason;

  @override
  String toString() {
    return 'ReportCreatingDtoDto(entityType: $entityType, entityId: $entityId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportCreatingDtoDtoImpl &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entityType, entityId, reason);

  /// Create a copy of ReportCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportCreatingDtoDtoImplCopyWith<_$ReportCreatingDtoDtoImpl>
      get copyWith =>
          __$$ReportCreatingDtoDtoImplCopyWithImpl<_$ReportCreatingDtoDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportCreatingDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ReportCreatingDtoDto implements ReportCreatingDtoDto {
  factory _ReportCreatingDtoDto(
          {@JsonKey(name: 'entityType') required final String entityType,
          @JsonKey(name: 'entityId') required final String entityId,
          @JsonKey(name: 'reason') required final String reason}) =
      _$ReportCreatingDtoDtoImpl;

  factory _ReportCreatingDtoDto.fromJson(Map<String, dynamic> json) =
      _$ReportCreatingDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'entityType')
  String get entityType;
  @override
  @JsonKey(name: 'entityId')
  String get entityId;
  @override
  @JsonKey(name: 'reason')
  String get reason;

  /// Create a copy of ReportCreatingDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportCreatingDtoDtoImplCopyWith<_$ReportCreatingDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReportDtoDto _$ReportDtoDtoFromJson(Map<String, dynamic> json) {
  return _ReportDtoDto.fromJson(json);
}

/// @nodoc
mixin _$ReportDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityType')
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityId')
  String? get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reporter')
  UserDto2Dto? get reporter => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// Serializes this ReportDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportDtoDtoCopyWith<ReportDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDtoDtoCopyWith<$Res> {
  factory $ReportDtoDtoCopyWith(
          ReportDtoDto value, $Res Function(ReportDtoDto) then) =
      _$ReportDtoDtoCopyWithImpl<$Res, ReportDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String? entityId,
      @JsonKey(name: 'reporter') UserDto2Dto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  $UserDto2DtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class _$ReportDtoDtoCopyWithImpl<$Res, $Val extends ReportDtoDto>
    implements $ReportDtoDtoCopyWith<$Res> {
  _$ReportDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDto2DtoCopyWith<$Res>? get reporter {
    if (_value.reporter == null) {
      return null;
    }

    return $UserDto2DtoCopyWith<$Res>(_value.reporter!, (value) {
      return _then(_value.copyWith(reporter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportDtoDtoImplCopyWith<$Res>
    implements $ReportDtoDtoCopyWith<$Res> {
  factory _$$ReportDtoDtoImplCopyWith(
          _$ReportDtoDtoImpl value, $Res Function(_$ReportDtoDtoImpl) then) =
      __$$ReportDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String? entityId,
      @JsonKey(name: 'reporter') UserDto2Dto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  @override
  $UserDto2DtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class __$$ReportDtoDtoImplCopyWithImpl<$Res>
    extends _$ReportDtoDtoCopyWithImpl<$Res, _$ReportDtoDtoImpl>
    implements _$$ReportDtoDtoImplCopyWith<$Res> {
  __$$ReportDtoDtoImplCopyWithImpl(
      _$ReportDtoDtoImpl _value, $Res Function(_$ReportDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_$ReportDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportDtoDtoImpl implements _ReportDtoDto {
  _$ReportDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') this.entityId,
      @JsonKey(name: 'reporter') this.reporter,
      @JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'createdDate') this.createdDate});

  factory _$ReportDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String? entityId;
  @override
  @JsonKey(name: 'reporter')
  final UserDto2Dto? reporter;
  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;

  @override
  String toString() {
    return 'ReportDtoDto(id: $id, entityType: $entityType, entityId: $entityId, reporter: $reporter, reason: $reason, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportDtoDtoImpl &&
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

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportDtoDtoImplCopyWith<_$ReportDtoDtoImpl> get copyWith =>
      __$$ReportDtoDtoImplCopyWithImpl<_$ReportDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _ReportDtoDto implements ReportDtoDto {
  factory _ReportDtoDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'entityType') required final String entityType,
          @JsonKey(name: 'entityId') final String? entityId,
          @JsonKey(name: 'reporter') final UserDto2Dto? reporter,
          @JsonKey(name: 'reason') required final String reason,
          @JsonKey(name: 'createdDate') final DateTime? createdDate}) =
      _$ReportDtoDtoImpl;

  factory _ReportDtoDto.fromJson(Map<String, dynamic> json) =
      _$ReportDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'entityType')
  String get entityType;
  @override
  @JsonKey(name: 'entityId')
  String? get entityId;
  @override
  @JsonKey(name: 'reporter')
  UserDto2Dto? get reporter;
  @override
  @JsonKey(name: 'reason')
  String get reason;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;

  /// Create a copy of ReportDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportDtoDtoImplCopyWith<_$ReportDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendNotificationDtoDto _$SendNotificationDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _SendNotificationDtoDto.fromJson(json);
}

/// @nodoc
mixin _$SendNotificationDtoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetUserId')
  String? get targetUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduledFor')
  DateTime? get scheduledFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;

  /// Serializes this SendNotificationDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendNotificationDtoDtoCopyWith<SendNotificationDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNotificationDtoDtoCopyWith<$Res> {
  factory $SendNotificationDtoDtoCopyWith(SendNotificationDtoDto value,
          $Res Function(SendNotificationDtoDto) then) =
      _$SendNotificationDtoDtoCopyWithImpl<$Res, SendNotificationDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'targetUserId') String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class _$SendNotificationDtoDtoCopyWithImpl<$Res,
        $Val extends SendNotificationDtoDto>
    implements $SendNotificationDtoDtoCopyWith<$Res> {
  _$SendNotificationDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? targetUserId = freezed,
    Object? relatedEntityId = freezed,
    Object? scheduledFor = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendNotificationDtoDtoImplCopyWith<$Res>
    implements $SendNotificationDtoDtoCopyWith<$Res> {
  factory _$$SendNotificationDtoDtoImplCopyWith(
          _$SendNotificationDtoDtoImpl value,
          $Res Function(_$SendNotificationDtoDtoImpl) then) =
      __$$SendNotificationDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'targetUserId') String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class __$$SendNotificationDtoDtoImplCopyWithImpl<$Res>
    extends _$SendNotificationDtoDtoCopyWithImpl<$Res,
        _$SendNotificationDtoDtoImpl>
    implements _$$SendNotificationDtoDtoImplCopyWith<$Res> {
  __$$SendNotificationDtoDtoImplCopyWithImpl(
      _$SendNotificationDtoDtoImpl _value,
      $Res Function(_$SendNotificationDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? targetUserId = freezed,
    Object? relatedEntityId = freezed,
    Object? scheduledFor = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$SendNotificationDtoDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendNotificationDtoDtoImpl implements _SendNotificationDtoDto {
  _$SendNotificationDtoDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'notificationType') required this.notificationType,
      @JsonKey(name: 'targetUserId') this.targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'scheduledFor') this.scheduledFor,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority})
      : _data = data;

  factory _$SendNotificationDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendNotificationDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'notificationType')
  final int notificationType;
  @override
  @JsonKey(name: 'targetUserId')
  final String? targetUserId;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
  @override
  @JsonKey(name: 'scheduledFor')
  final DateTime? scheduledFor;
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
  String toString() {
    return 'SendNotificationDtoDto(title: $title, body: $body, notificationType: $notificationType, targetUserId: $targetUserId, relatedEntityId: $relatedEntityId, scheduledFor: $scheduledFor, data: $data, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNotificationDtoDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
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
      notificationType,
      targetUserId,
      relatedEntityId,
      scheduledFor,
      const DeepCollectionEquality().hash(_data),
      priority);

  /// Create a copy of SendNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNotificationDtoDtoImplCopyWith<_$SendNotificationDtoDtoImpl>
      get copyWith => __$$SendNotificationDtoDtoImplCopyWithImpl<
          _$SendNotificationDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendNotificationDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _SendNotificationDtoDto implements SendNotificationDtoDto {
  factory _SendNotificationDtoDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'body') required final String body,
      @JsonKey(name: 'notificationType') required final int notificationType,
      @JsonKey(name: 'targetUserId') final String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      final ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') final DateTime? scheduledFor,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority')
      final int? priority}) = _$SendNotificationDtoDtoImpl;

  factory _SendNotificationDtoDto.fromJson(Map<String, dynamic> json) =
      _$SendNotificationDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'notificationType')
  int get notificationType;
  @override
  @JsonKey(name: 'targetUserId')
  String? get targetUserId;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'scheduledFor')
  DateTime? get scheduledFor;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;

  /// Create a copy of SendNotificationDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendNotificationDtoDtoImplCopyWith<_$SendNotificationDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StepCommentDtoDto _$StepCommentDtoDtoFromJson(Map<String, dynamic> json) {
  return _StepCommentDtoDto.fromJson(json);
}

/// @nodoc
mixin _$StepCommentDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartCount')
  int? get heartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'replyCount')
  int? get replyCount => throw _privateConstructorUsedError;

  /// Serializes this StepCommentDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepCommentDtoDtoCopyWith<StepCommentDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCommentDtoDtoCopyWith<$Res> {
  factory $StepCommentDtoDtoCopyWith(
          StepCommentDtoDto value, $Res Function(StepCommentDtoDto) then) =
      _$StepCommentDtoDtoCopyWithImpl<$Res, StepCommentDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'replyCount') int? replyCount});

  $UserDtoDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$StepCommentDtoDtoCopyWithImpl<$Res, $Val extends StepCommentDtoDto>
    implements $StepCommentDtoDtoCopyWith<$Res> {
  _$StepCommentDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
    Object? stepId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
    Object? replyCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StepCommentDtoDtoImplCopyWith<$Res>
    implements $StepCommentDtoDtoCopyWith<$Res> {
  factory _$$StepCommentDtoDtoImplCopyWith(_$StepCommentDtoDtoImpl value,
          $Res Function(_$StepCommentDtoDtoImpl) then) =
      __$$StepCommentDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'replyCount') int? replyCount});

  @override
  $UserDtoDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StepCommentDtoDtoImplCopyWithImpl<$Res>
    extends _$StepCommentDtoDtoCopyWithImpl<$Res, _$StepCommentDtoDtoImpl>
    implements _$$StepCommentDtoDtoImplCopyWith<$Res> {
  __$$StepCommentDtoDtoImplCopyWithImpl(_$StepCommentDtoDtoImpl _value,
      $Res Function(_$StepCommentDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
    Object? stepId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
    Object? replyCount = freezed,
  }) {
    return _then(_$StepCommentDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepCommentDtoDtoImpl implements _StepCommentDtoDto {
  _$StepCommentDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'deletedAt') this.deletedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'heartCount') this.heartCount,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'replyCount') this.replyCount});

  factory _$StepCommentDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepCommentDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto? user;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'heartCount')
  final int? heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'replyCount')
  final int? replyCount;

  @override
  String toString() {
    return 'StepCommentDtoDto(id: $id, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, user: $user, stepId: $stepId, heartCount: $heartCount, heartedByUser: $heartedByUser, replyCount: $replyCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepCommentDtoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdAt,
      updatedAt,
      deletedAt,
      user,
      stepId,
      heartCount,
      heartedByUser,
      replyCount);

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepCommentDtoDtoImplCopyWith<_$StepCommentDtoDtoImpl> get copyWith =>
      __$$StepCommentDtoDtoImplCopyWithImpl<_$StepCommentDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepCommentDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _StepCommentDtoDto implements StepCommentDtoDto {
  factory _StepCommentDtoDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') final DateTime? deletedAt,
      @JsonKey(name: 'user') final UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'heartCount') final int? heartCount,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'replyCount')
      final int? replyCount}) = _$StepCommentDtoDtoImpl;

  factory _StepCommentDtoDto.fromJson(Map<String, dynamic> json) =
      _$StepCommentDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'user')
  UserDtoDto? get user;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'heartCount')
  int? get heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'replyCount')
  int? get replyCount;

  /// Create a copy of StepCommentDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepCommentDtoDtoImplCopyWith<_$StepCommentDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepDetailDtoDto _$StepDetailDtoDtoFromJson(Map<String, dynamic> json) {
  return _StepDetailDtoDto.fromJson(json);
}

/// @nodoc
mixin _$StepDetailDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts')
  int? get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  int? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media => throw _privateConstructorUsedError;

  /// Serializes this StepDetailDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepDetailDtoDtoCopyWith<StepDetailDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepDetailDtoDtoCopyWith<$Res> {
  factory $StepDetailDtoDtoCopyWith(
          StepDetailDtoDto value, $Res Function(StepDetailDtoDto) then) =
      _$StepDetailDtoDtoCopyWithImpl<$Res, StepDetailDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  $UserDtoDtoCopyWith<$Res> get user;
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class _$StepDetailDtoDtoCopyWithImpl<$Res, $Val extends StepDetailDtoDto>
    implements $StepDetailDtoDtoCopyWith<$Res> {
  _$StepDetailDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ) as $Val);
  }

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoDtoCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDtoDtoCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StepDetailDtoDtoImplCopyWith<$Res>
    implements $StepDetailDtoDtoCopyWith<$Res> {
  factory _$$StepDetailDtoDtoImplCopyWith(_$StepDetailDtoDtoImpl value,
          $Res Function(_$StepDetailDtoDtoImpl) then) =
      __$$StepDetailDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class __$$StepDetailDtoDtoImplCopyWithImpl<$Res>
    extends _$StepDetailDtoDtoCopyWithImpl<$Res, _$StepDetailDtoDtoImpl>
    implements _$$StepDetailDtoDtoImplCopyWith<$Res> {
  __$$StepDetailDtoDtoImplCopyWithImpl(_$StepDetailDtoDtoImpl _value,
      $Res Function(_$StepDetailDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_$StepDetailDtoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepDetailDtoDtoImpl implements _StepDetailDtoDto {
  _$StepDetailDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'journey') this.journey,
      @JsonKey(name: 'hearts') this.hearts,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'sharedByUser') this.sharedByUser,
      @JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'commentedByUser') this.commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') this.othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') this.stepTypeString,
      @JsonKey(name: 'media') final List<StepMediaDtoDto>? media})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;

  factory _$StepDetailDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepDetailDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'journey')
  final JourneyDtoDto? journey;
  @override
  @JsonKey(name: 'hearts')
  final int? hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int? shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool? sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int? comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool? commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int? userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int? othersStepWith;
  final List<UserDtoDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepTypeString')
  final String? stepTypeString;
  final List<StepMediaDtoDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StepDetailDtoDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, user: $user, journeyId: $journeyId, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepTypeString: $stepTypeString, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepDetailDtoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
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
            (identical(other.stepTypeString, stepTypeString) ||
                other.stepTypeString == stepTypeString) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        user,
        journeyId,
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
        stepTypeString,
        const DeepCollectionEquality().hash(_media)
      ]);

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepDetailDtoDtoImplCopyWith<_$StepDetailDtoDtoImpl> get copyWith =>
      __$$StepDetailDtoDtoImplCopyWithImpl<_$StepDetailDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepDetailDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _StepDetailDtoDto implements StepDetailDtoDto {
  factory _StepDetailDtoDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'user') required final UserDtoDto user,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'journey') final JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') final int? hearts,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'shares') final int? shares,
      @JsonKey(name: 'sharedByUser') final bool? sharedByUser,
      @JsonKey(name: 'comments') final int? comments,
      @JsonKey(name: 'commentedByUser') final bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      final int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') final int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') final String? stepTypeString,
      @JsonKey(name: 'media')
      final List<StepMediaDtoDto>? media}) = _$StepDetailDtoDtoImpl;

  factory _StepDetailDtoDto.fromJson(Map<String, dynamic> json) =
      _$StepDetailDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey;
  @override
  @JsonKey(name: 'hearts')
  int? get hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'shares')
  int? get shares;
  @override
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser;
  @override
  @JsonKey(name: 'comments')
  int? get comments;
  @override
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers;
  @override
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media;

  /// Create a copy of StepDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepDetailDtoDtoImplCopyWith<_$StepDetailDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepDtoDto _$StepDtoDtoFromJson(Map<String, dynamic> json) {
  return _StepDtoDto.fromJson(json);
}

/// @nodoc
mixin _$StepDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  StepMediaDto2Dto? get media => throw _privateConstructorUsedError;

  /// Serializes this StepDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepDtoDtoCopyWith<StepDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepDtoDtoCopyWith<$Res> {
  factory $StepDtoDtoCopyWith(
          StepDtoDto value, $Res Function(StepDtoDto) then) =
      _$StepDtoDtoCopyWithImpl<$Res, StepDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'media') StepMediaDto2Dto? media});

  $StepMediaDto2DtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$StepDtoDtoCopyWithImpl<$Res, $Val extends StepDtoDto>
    implements $StepDtoDtoCopyWith<$Res> {
  _$StepDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? journeyId = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto2Dto?,
    ) as $Val);
  }

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDto2DtoCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $StepMediaDto2DtoCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StepDtoDtoImplCopyWith<$Res>
    implements $StepDtoDtoCopyWith<$Res> {
  factory _$$StepDtoDtoImplCopyWith(
          _$StepDtoDtoImpl value, $Res Function(_$StepDtoDtoImpl) then) =
      __$$StepDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'media') StepMediaDto2Dto? media});

  @override
  $StepMediaDto2DtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$$StepDtoDtoImplCopyWithImpl<$Res>
    extends _$StepDtoDtoCopyWithImpl<$Res, _$StepDtoDtoImpl>
    implements _$$StepDtoDtoImplCopyWith<$Res> {
  __$$StepDtoDtoImplCopyWithImpl(
      _$StepDtoDtoImpl _value, $Res Function(_$StepDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? journeyId = freezed,
    Object? media = freezed,
  }) {
    return _then(_$StepDtoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDto2Dto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepDtoDtoImpl implements _StepDtoDto {
  _$StepDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'media') this.media});

  factory _$StepDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'media')
  final StepMediaDto2Dto? media;

  @override
  String toString() {
    return 'StepDtoDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, journeyId: $journeyId, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepDtoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, createdDate,
      lastUpdated, userId, journeyId, media);

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepDtoDtoImplCopyWith<_$StepDtoDtoImpl> get copyWith =>
      __$$StepDtoDtoImplCopyWithImpl<_$StepDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _StepDtoDto implements StepDtoDto {
  factory _StepDtoDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'media')
      final StepMediaDto2Dto? media}) = _$StepDtoDtoImpl;

  factory _StepDtoDto.fromJson(Map<String, dynamic> json) =
      _$StepDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'media')
  StepMediaDto2Dto? get media;

  /// Create a copy of StepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepDtoDtoImplCopyWith<_$StepDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepMediaDtoDto _$StepMediaDtoDtoFromJson(Map<String, dynamic> json) {
  return _StepMediaDtoDto.fromJson(json);
}

/// @nodoc
mixin _$StepMediaDtoDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalUrl')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isImage')
  bool? get isImage => throw _privateConstructorUsedError;

  /// Serializes this StepMediaDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepMediaDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepMediaDtoDtoCopyWith<StepMediaDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepMediaDtoDtoCopyWith<$Res> {
  factory $StepMediaDtoDtoCopyWith(
          StepMediaDtoDto value, $Res Function(StepMediaDtoDto) then) =
      _$StepMediaDtoDtoCopyWithImpl<$Res, StepMediaDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$StepMediaDtoDtoCopyWithImpl<$Res, $Val extends StepMediaDtoDto>
    implements $StepMediaDtoDtoCopyWith<$Res> {
  _$StepMediaDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepMediaDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepMediaDtoDtoImplCopyWith<$Res>
    implements $StepMediaDtoDtoCopyWith<$Res> {
  factory _$$StepMediaDtoDtoImplCopyWith(_$StepMediaDtoDtoImpl value,
          $Res Function(_$StepMediaDtoDtoImpl) then) =
      __$$StepMediaDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$$StepMediaDtoDtoImplCopyWithImpl<$Res>
    extends _$StepMediaDtoDtoCopyWithImpl<$Res, _$StepMediaDtoDtoImpl>
    implements _$$StepMediaDtoDtoImplCopyWith<$Res> {
  __$$StepMediaDtoDtoImplCopyWithImpl(
      _$StepMediaDtoDtoImpl _value, $Res Function(_$StepMediaDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepMediaDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_$StepMediaDtoDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepMediaDtoDtoImpl implements _StepMediaDtoDto {
  _$StepMediaDtoDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'originalUrl') this.originalUrl,
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

  factory _$StepMediaDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepMediaDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String? originalUrl;
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
  final int? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  @override
  String toString() {
    return 'StepMediaDtoDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepMediaDtoDtoImpl &&
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

  /// Create a copy of StepMediaDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepMediaDtoDtoImplCopyWith<_$StepMediaDtoDtoImpl> get copyWith =>
      __$$StepMediaDtoDtoImplCopyWithImpl<_$StepMediaDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepMediaDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _StepMediaDtoDto implements StepMediaDtoDto {
  factory _StepMediaDtoDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'originalUrl') final String? originalUrl,
      @JsonKey(name: 'largeUrl') final String? largeUrl,
      @JsonKey(name: 'mediumUrl') final String? mediumUrl,
      @JsonKey(name: 'smallUrl') final String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') final String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') final String? bunnyVideoId,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'duration') final num? duration,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'isVideo') final bool? isVideo,
      @JsonKey(name: 'isImage') final bool? isImage}) = _$StepMediaDtoDtoImpl;

  factory _StepMediaDtoDto.fromJson(Map<String, dynamic> json) =
      _$StepMediaDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  String? get originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'duration')
  num? get duration;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of StepMediaDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepMediaDtoDtoImplCopyWith<_$StepMediaDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StepMediaDto2Dto _$StepMediaDto2DtoFromJson(Map<String, dynamic> json) {
  return _StepMediaDto2Dto.fromJson(json);
}

/// @nodoc
mixin _$StepMediaDto2Dto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalUrl')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isImage')
  bool? get isImage => throw _privateConstructorUsedError;

  /// Serializes this StepMediaDto2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StepMediaDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepMediaDto2DtoCopyWith<StepMediaDto2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepMediaDto2DtoCopyWith<$Res> {
  factory $StepMediaDto2DtoCopyWith(
          StepMediaDto2Dto value, $Res Function(StepMediaDto2Dto) then) =
      _$StepMediaDto2DtoCopyWithImpl<$Res, StepMediaDto2Dto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$StepMediaDto2DtoCopyWithImpl<$Res, $Val extends StepMediaDto2Dto>
    implements $StepMediaDto2DtoCopyWith<$Res> {
  _$StepMediaDto2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepMediaDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepMediaDto2DtoImplCopyWith<$Res>
    implements $StepMediaDto2DtoCopyWith<$Res> {
  factory _$$StepMediaDto2DtoImplCopyWith(_$StepMediaDto2DtoImpl value,
          $Res Function(_$StepMediaDto2DtoImpl) then) =
      __$$StepMediaDto2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$$StepMediaDto2DtoImplCopyWithImpl<$Res>
    extends _$StepMediaDto2DtoCopyWithImpl<$Res, _$StepMediaDto2DtoImpl>
    implements _$$StepMediaDto2DtoImplCopyWith<$Res> {
  __$$StepMediaDto2DtoImplCopyWithImpl(_$StepMediaDto2DtoImpl _value,
      $Res Function(_$StepMediaDto2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepMediaDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_$StepMediaDto2DtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StepMediaDto2DtoImpl implements _StepMediaDto2Dto {
  _$StepMediaDto2DtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'originalUrl') this.originalUrl,
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

  factory _$StepMediaDto2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepMediaDto2DtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String? originalUrl;
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
  final int? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  @override
  String toString() {
    return 'StepMediaDto2Dto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepMediaDto2DtoImpl &&
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

  /// Create a copy of StepMediaDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepMediaDto2DtoImplCopyWith<_$StepMediaDto2DtoImpl> get copyWith =>
      __$$StepMediaDto2DtoImplCopyWithImpl<_$StepMediaDto2DtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepMediaDto2DtoImplToJson(
      this,
    );
  }
}

abstract class _StepMediaDto2Dto implements StepMediaDto2Dto {
  factory _StepMediaDto2Dto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'originalUrl') final String? originalUrl,
      @JsonKey(name: 'largeUrl') final String? largeUrl,
      @JsonKey(name: 'mediumUrl') final String? mediumUrl,
      @JsonKey(name: 'smallUrl') final String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') final String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') final String? bunnyVideoId,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'duration') final num? duration,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'isVideo') final bool? isVideo,
      @JsonKey(name: 'isImage') final bool? isImage}) = _$StepMediaDto2DtoImpl;

  factory _StepMediaDto2Dto.fromJson(Map<String, dynamic> json) =
      _$StepMediaDto2DtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  String? get originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'duration')
  num? get duration;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of StepMediaDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepMediaDto2DtoImplCopyWith<_$StepMediaDto2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateJourneyDtoDto _$UpdateJourneyDtoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateJourneyDtoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateJourneyDtoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this UpdateJourneyDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateJourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateJourneyDtoDtoCopyWith<UpdateJourneyDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateJourneyDtoDtoCopyWith<$Res> {
  factory $UpdateJourneyDtoDtoCopyWith(
          UpdateJourneyDtoDto value, $Res Function(UpdateJourneyDtoDto) then) =
      _$UpdateJourneyDtoDtoCopyWithImpl<$Res, UpdateJourneyDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$UpdateJourneyDtoDtoCopyWithImpl<$Res, $Val extends UpdateJourneyDtoDto>
    implements $UpdateJourneyDtoDtoCopyWith<$Res> {
  _$UpdateJourneyDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateJourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateJourneyDtoDtoImplCopyWith<$Res>
    implements $UpdateJourneyDtoDtoCopyWith<$Res> {
  factory _$$UpdateJourneyDtoDtoImplCopyWith(_$UpdateJourneyDtoDtoImpl value,
          $Res Function(_$UpdateJourneyDtoDtoImpl) then) =
      __$$UpdateJourneyDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$UpdateJourneyDtoDtoImplCopyWithImpl<$Res>
    extends _$UpdateJourneyDtoDtoCopyWithImpl<$Res, _$UpdateJourneyDtoDtoImpl>
    implements _$$UpdateJourneyDtoDtoImplCopyWith<$Res> {
  __$$UpdateJourneyDtoDtoImplCopyWithImpl(_$UpdateJourneyDtoDtoImpl _value,
      $Res Function(_$UpdateJourneyDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateJourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$UpdateJourneyDtoDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateJourneyDtoDtoImpl implements _UpdateJourneyDtoDto {
  _$UpdateJourneyDtoDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description});

  factory _$UpdateJourneyDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateJourneyDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'UpdateJourneyDtoDto(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJourneyDtoDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of UpdateJourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJourneyDtoDtoImplCopyWith<_$UpdateJourneyDtoDtoImpl> get copyWith =>
      __$$UpdateJourneyDtoDtoImplCopyWithImpl<_$UpdateJourneyDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateJourneyDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateJourneyDtoDto implements UpdateJourneyDtoDto {
  factory _UpdateJourneyDtoDto(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') final String? description}) =
      _$UpdateJourneyDtoDtoImpl;

  factory _UpdateJourneyDtoDto.fromJson(Map<String, dynamic> json) =
      _$UpdateJourneyDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of UpdateJourneyDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateJourneyDtoDtoImplCopyWith<_$UpdateJourneyDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateStepDtoDto _$UpdateStepDtoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateStepDtoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateStepDtoDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this UpdateStepDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStepDtoDtoCopyWith<UpdateStepDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStepDtoDtoCopyWith<$Res> {
  factory $UpdateStepDtoDtoCopyWith(
          UpdateStepDtoDto value, $Res Function(UpdateStepDtoDto) then) =
      _$UpdateStepDtoDtoCopyWithImpl<$Res, UpdateStepDtoDto>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$UpdateStepDtoDtoCopyWithImpl<$Res, $Val extends UpdateStepDtoDto>
    implements $UpdateStepDtoDtoCopyWith<$Res> {
  _$UpdateStepDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStepDtoDtoImplCopyWith<$Res>
    implements $UpdateStepDtoDtoCopyWith<$Res> {
  factory _$$UpdateStepDtoDtoImplCopyWith(_$UpdateStepDtoDtoImpl value,
          $Res Function(_$UpdateStepDtoDtoImpl) then) =
      __$$UpdateStepDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$UpdateStepDtoDtoImplCopyWithImpl<$Res>
    extends _$UpdateStepDtoDtoCopyWithImpl<$Res, _$UpdateStepDtoDtoImpl>
    implements _$$UpdateStepDtoDtoImplCopyWith<$Res> {
  __$$UpdateStepDtoDtoImplCopyWithImpl(_$UpdateStepDtoDtoImpl _value,
      $Res Function(_$UpdateStepDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$UpdateStepDtoDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStepDtoDtoImpl implements _UpdateStepDtoDto {
  _$UpdateStepDtoDtoImpl({@JsonKey(name: 'content') required this.content});

  factory _$UpdateStepDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStepDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'UpdateStepDtoDto(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStepDtoDtoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of UpdateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStepDtoDtoImplCopyWith<_$UpdateStepDtoDtoImpl> get copyWith =>
      __$$UpdateStepDtoDtoImplCopyWithImpl<_$UpdateStepDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStepDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateStepDtoDto implements UpdateStepDtoDto {
  factory _UpdateStepDtoDto(
          {@JsonKey(name: 'content') required final String content}) =
      _$UpdateStepDtoDtoImpl;

  factory _UpdateStepDtoDto.fromJson(Map<String, dynamic> json) =
      _$UpdateStepDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of UpdateStepDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStepDtoDtoImplCopyWith<_$UpdateStepDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailDtoDto _$UserDetailDtoDtoFromJson(Map<String, dynamic> json) {
  return _UserDetailDtoDto.fromJson(json);
}

/// @nodoc
mixin _$UserDetailDtoDto {
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'followingStatus')
  int? get followingStatus => throw _privateConstructorUsedError;

  /// Serializes this UserDetailDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailDtoDtoCopyWith<UserDetailDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailDtoDtoCopyWith<$Res> {
  factory $UserDetailDtoDtoCopyWith(
          UserDetailDtoDto value, $Res Function(UserDetailDtoDto) then) =
      _$UserDetailDtoDtoCopyWithImpl<$Res, UserDetailDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'followingStatus') int? followingStatus});

  $UserDtoDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailDtoDtoCopyWithImpl<$Res, $Val extends UserDetailDtoDto>
    implements $UserDetailDtoDtoCopyWith<$Res> {
  _$UserDetailDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      followingStatus: freezed == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDetailDtoDtoImplCopyWith<$Res>
    implements $UserDetailDtoDtoCopyWith<$Res> {
  factory _$$UserDetailDtoDtoImplCopyWith(_$UserDetailDtoDtoImpl value,
          $Res Function(_$UserDetailDtoDtoImpl) then) =
      __$$UserDetailDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'followingStatus') int? followingStatus});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserDetailDtoDtoImplCopyWithImpl<$Res>
    extends _$UserDetailDtoDtoCopyWithImpl<$Res, _$UserDetailDtoDtoImpl>
    implements _$$UserDetailDtoDtoImplCopyWith<$Res> {
  __$$UserDetailDtoDtoImplCopyWithImpl(_$UserDetailDtoDtoImpl _value,
      $Res Function(_$UserDetailDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followingStatus = freezed,
  }) {
    return _then(_$UserDetailDtoDtoImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      followingStatus: freezed == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailDtoDtoImpl implements _UserDetailDtoDto {
  _$UserDetailDtoDtoImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'followingStatus') this.followingStatus});

  factory _$UserDetailDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'followingStatus')
  final int? followingStatus;

  @override
  String toString() {
    return 'UserDetailDtoDto(user: $user, followingStatus: $followingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailDtoDtoImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followingStatus, followingStatus) ||
                other.followingStatus == followingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, followingStatus);

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailDtoDtoImplCopyWith<_$UserDetailDtoDtoImpl> get copyWith =>
      __$$UserDetailDtoDtoImplCopyWithImpl<_$UserDetailDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDetailDtoDto implements UserDetailDtoDto {
  factory _UserDetailDtoDto(
          {@JsonKey(name: 'user') required final UserDtoDto user,
          @JsonKey(name: 'followingStatus') final int? followingStatus}) =
      _$UserDetailDtoDtoImpl;

  factory _UserDetailDtoDto.fromJson(Map<String, dynamic> json) =
      _$UserDetailDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'followingStatus')
  int? get followingStatus;

  /// Create a copy of UserDetailDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailDtoDtoImplCopyWith<_$UserDetailDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailDto2Dto _$UserDetailDto2DtoFromJson(Map<String, dynamic> json) {
  return _UserDetailDto2Dto.fromJson(json);
}

/// @nodoc
mixin _$UserDetailDto2Dto {
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'followingStatus')
  int? get followingStatus => throw _privateConstructorUsedError;

  /// Serializes this UserDetailDto2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailDto2DtoCopyWith<UserDetailDto2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailDto2DtoCopyWith<$Res> {
  factory $UserDetailDto2DtoCopyWith(
          UserDetailDto2Dto value, $Res Function(UserDetailDto2Dto) then) =
      _$UserDetailDto2DtoCopyWithImpl<$Res, UserDetailDto2Dto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'followingStatus') int? followingStatus});

  $UserDtoDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailDto2DtoCopyWithImpl<$Res, $Val extends UserDetailDto2Dto>
    implements $UserDetailDto2DtoCopyWith<$Res> {
  _$UserDetailDto2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      followingStatus: freezed == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDetailDto2DtoImplCopyWith<$Res>
    implements $UserDetailDto2DtoCopyWith<$Res> {
  factory _$$UserDetailDto2DtoImplCopyWith(_$UserDetailDto2DtoImpl value,
          $Res Function(_$UserDetailDto2DtoImpl) then) =
      __$$UserDetailDto2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'followingStatus') int? followingStatus});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserDetailDto2DtoImplCopyWithImpl<$Res>
    extends _$UserDetailDto2DtoCopyWithImpl<$Res, _$UserDetailDto2DtoImpl>
    implements _$$UserDetailDto2DtoImplCopyWith<$Res> {
  __$$UserDetailDto2DtoImplCopyWithImpl(_$UserDetailDto2DtoImpl _value,
      $Res Function(_$UserDetailDto2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? followingStatus = freezed,
  }) {
    return _then(_$UserDetailDto2DtoImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      followingStatus: freezed == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailDto2DtoImpl implements _UserDetailDto2Dto {
  _$UserDetailDto2DtoImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'followingStatus') this.followingStatus});

  factory _$UserDetailDto2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailDto2DtoImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'followingStatus')
  final int? followingStatus;

  @override
  String toString() {
    return 'UserDetailDto2Dto(user: $user, followingStatus: $followingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailDto2DtoImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followingStatus, followingStatus) ||
                other.followingStatus == followingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, followingStatus);

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailDto2DtoImplCopyWith<_$UserDetailDto2DtoImpl> get copyWith =>
      __$$UserDetailDto2DtoImplCopyWithImpl<_$UserDetailDto2DtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailDto2DtoImplToJson(
      this,
    );
  }
}

abstract class _UserDetailDto2Dto implements UserDetailDto2Dto {
  factory _UserDetailDto2Dto(
          {@JsonKey(name: 'user') required final UserDtoDto user,
          @JsonKey(name: 'followingStatus') final int? followingStatus}) =
      _$UserDetailDto2DtoImpl;

  factory _UserDetailDto2Dto.fromJson(Map<String, dynamic> json) =
      _$UserDetailDto2DtoImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'followingStatus')
  int? get followingStatus;

  /// Create a copy of UserDetailDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailDto2DtoImplCopyWith<_$UserDetailDto2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDtoDto _$UserDtoDtoFromJson(Map<String, dynamic> json) {
  return _UserDtoDto.fromJson(json);
}

/// @nodoc
mixin _$UserDtoDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this UserDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoDtoCopyWith<UserDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoDtoCopyWith<$Res> {
  factory $UserDtoDtoCopyWith(
          UserDtoDto value, $Res Function(UserDtoDto) then) =
      _$UserDtoDtoCopyWithImpl<$Res, UserDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool? isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated});
}

/// @nodoc
class _$UserDtoDtoCopyWithImpl<$Res, $Val extends UserDtoDto>
    implements $UserDtoDtoCopyWith<$Res> {
  _$UserDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? profilePictureUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoDtoImplCopyWith<$Res>
    implements $UserDtoDtoCopyWith<$Res> {
  factory _$$UserDtoDtoImplCopyWith(
          _$UserDtoDtoImpl value, $Res Function(_$UserDtoDtoImpl) then) =
      __$$UserDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool? isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated});
}

/// @nodoc
class __$$UserDtoDtoImplCopyWithImpl<$Res>
    extends _$UserDtoDtoCopyWithImpl<$Res, _$UserDtoDtoImpl>
    implements _$$UserDtoDtoImplCopyWith<$Res> {
  __$$UserDtoDtoImplCopyWithImpl(
      _$UserDtoDtoImpl _value, $Res Function(_$UserDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? profilePictureUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$UserDtoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoDtoImpl implements _UserDtoDto {
  _$UserDtoDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'profilePictureUrl') this.profilePictureUrl,
      @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'isPrivate') this.isPrivate,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated});

  factory _$UserDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'profilePictureUrl')
  final String? profilePictureUrl;
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
  final bool? isPrivate;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'UserDtoDto(id: $id, displayName: $displayName, username: $username, description: $description, profilePictureUrl: $profilePictureUrl, phoneNumber: $phoneNumber, email: $email, age: $age, isPrivate: $isPrivate, createdDate: $createdDate, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoDtoImpl &&
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
                other.lastUpdated == lastUpdated));
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
      lastUpdated);

  /// Create a copy of UserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoDtoImplCopyWith<_$UserDtoDtoImpl> get copyWith =>
      __$$UserDtoDtoImplCopyWithImpl<_$UserDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDtoDto implements UserDtoDto {
  factory _UserDtoDto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'displayName') final String? displayName,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'profilePictureUrl') final String? profilePictureUrl,
          @JsonKey(name: 'phoneNumber') final String? phoneNumber,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'age') final int? age,
          @JsonKey(name: 'isPrivate') final bool? isPrivate,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated}) =
      _$UserDtoDtoImpl;

  factory _UserDtoDto.fromJson(Map<String, dynamic> json) =
      _$UserDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;

  /// Create a copy of UserDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoDtoImplCopyWith<_$UserDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto2Dto _$UserDto2DtoFromJson(Map<String, dynamic> json) {
  return _UserDto2Dto.fromJson(json);
}

/// @nodoc
mixin _$UserDto2Dto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this UserDto2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDto2DtoCopyWith<UserDto2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDto2DtoCopyWith<$Res> {
  factory $UserDto2DtoCopyWith(
          UserDto2Dto value, $Res Function(UserDto2Dto) then) =
      _$UserDto2DtoCopyWithImpl<$Res, UserDto2Dto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool? isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated});
}

/// @nodoc
class _$UserDto2DtoCopyWithImpl<$Res, $Val extends UserDto2Dto>
    implements $UserDto2DtoCopyWith<$Res> {
  _$UserDto2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? profilePictureUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDto2DtoImplCopyWith<$Res>
    implements $UserDto2DtoCopyWith<$Res> {
  factory _$$UserDto2DtoImplCopyWith(
          _$UserDto2DtoImpl value, $Res Function(_$UserDto2DtoImpl) then) =
      __$$UserDto2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'isPrivate') bool? isPrivate,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated});
}

/// @nodoc
class __$$UserDto2DtoImplCopyWithImpl<$Res>
    extends _$UserDto2DtoCopyWithImpl<$Res, _$UserDto2DtoImpl>
    implements _$$UserDto2DtoImplCopyWith<$Res> {
  __$$UserDto2DtoImplCopyWithImpl(
      _$UserDto2DtoImpl _value, $Res Function(_$UserDto2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? profilePictureUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isPrivate = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$UserDto2DtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDto2DtoImpl implements _UserDto2Dto {
  _$UserDto2DtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'profilePictureUrl') this.profilePictureUrl,
      @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'isPrivate') this.isPrivate,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated});

  factory _$UserDto2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDto2DtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'profilePictureUrl')
  final String? profilePictureUrl;
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
  final bool? isPrivate;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'UserDto2Dto(id: $id, displayName: $displayName, username: $username, description: $description, profilePictureUrl: $profilePictureUrl, phoneNumber: $phoneNumber, email: $email, age: $age, isPrivate: $isPrivate, createdDate: $createdDate, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDto2DtoImpl &&
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
                other.lastUpdated == lastUpdated));
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
      lastUpdated);

  /// Create a copy of UserDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDto2DtoImplCopyWith<_$UserDto2DtoImpl> get copyWith =>
      __$$UserDto2DtoImplCopyWithImpl<_$UserDto2DtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDto2DtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto2Dto implements UserDto2Dto {
  factory _UserDto2Dto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'displayName') final String? displayName,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'profilePictureUrl') final String? profilePictureUrl,
          @JsonKey(name: 'phoneNumber') final String? phoneNumber,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'age') final int? age,
          @JsonKey(name: 'isPrivate') final bool? isPrivate,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated}) =
      _$UserDto2DtoImpl;

  factory _UserDto2Dto.fromJson(Map<String, dynamic> json) =
      _$UserDto2DtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;

  /// Create a copy of UserDto2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDto2DtoImplCopyWith<_$UserDto2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoPreSignedUrlDtoDto _$VideoPreSignedUrlDtoDtoFromJson(
    Map<String, dynamic> json) {
  return _VideoPreSignedUrlDtoDto.fromJson(json);
}

/// @nodoc
mixin _$VideoPreSignedUrlDtoDto {
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'libraryId')
  int? get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionId')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media => throw _privateConstructorUsedError;

  /// Serializes this VideoPreSignedUrlDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoPreSignedUrlDtoDtoCopyWith<VideoPreSignedUrlDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPreSignedUrlDtoDtoCopyWith<$Res> {
  factory $VideoPreSignedUrlDtoDtoCopyWith(VideoPreSignedUrlDtoDto value,
          $Res Function(VideoPreSignedUrlDtoDto) then) =
      _$VideoPreSignedUrlDtoDtoCopyWithImpl<$Res, VideoPreSignedUrlDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$VideoPreSignedUrlDtoDtoCopyWithImpl<$Res,
        $Val extends VideoPreSignedUrlDtoDto>
    implements $VideoPreSignedUrlDtoDtoCopyWith<$Res> {
  _$VideoPreSignedUrlDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ) as $Val);
  }

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoDtoCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $StepMediaDtoDtoCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoPreSignedUrlDtoDtoImplCopyWith<$Res>
    implements $VideoPreSignedUrlDtoDtoCopyWith<$Res> {
  factory _$$VideoPreSignedUrlDtoDtoImplCopyWith(
          _$VideoPreSignedUrlDtoDtoImpl value,
          $Res Function(_$VideoPreSignedUrlDtoDtoImpl) then) =
      __$$VideoPreSignedUrlDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  @override
  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$$VideoPreSignedUrlDtoDtoImplCopyWithImpl<$Res>
    extends _$VideoPreSignedUrlDtoDtoCopyWithImpl<$Res,
        _$VideoPreSignedUrlDtoDtoImpl>
    implements _$$VideoPreSignedUrlDtoDtoImplCopyWith<$Res> {
  __$$VideoPreSignedUrlDtoDtoImplCopyWithImpl(
      _$VideoPreSignedUrlDtoDtoImpl _value,
      $Res Function(_$VideoPreSignedUrlDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_$VideoPreSignedUrlDtoDtoImpl(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoPreSignedUrlDtoDtoImpl implements _VideoPreSignedUrlDtoDto {
  _$VideoPreSignedUrlDtoDtoImpl(
      {@JsonKey(name: 'authorizationSignature') this.authorizationSignature,
      @JsonKey(name: 'authorizationExpire') this.authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() this.videoGuid,
      @JsonKey(name: 'libraryId') this.libraryId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'collectionId') this.collectionId,
      @JsonKey(name: 'media') this.media});

  factory _$VideoPreSignedUrlDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoPreSignedUrlDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'authorizationSignature')
  final String? authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  final int? authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  final ApiUuid? videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  final int? libraryId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'collectionId')
  final String? collectionId;
  @override
  @JsonKey(name: 'media')
  final StepMediaDtoDto? media;

  @override
  String toString() {
    return 'VideoPreSignedUrlDtoDto(authorizationSignature: $authorizationSignature, authorizationExpire: $authorizationExpire, videoGuid: $videoGuid, libraryId: $libraryId, title: $title, collectionId: $collectionId, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPreSignedUrlDtoDtoImpl &&
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

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPreSignedUrlDtoDtoImplCopyWith<_$VideoPreSignedUrlDtoDtoImpl>
      get copyWith => __$$VideoPreSignedUrlDtoDtoImplCopyWithImpl<
          _$VideoPreSignedUrlDtoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoPreSignedUrlDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _VideoPreSignedUrlDtoDto implements VideoPreSignedUrlDtoDto {
  factory _VideoPreSignedUrlDtoDto(
          {@JsonKey(name: 'authorizationSignature')
          final String? authorizationSignature,
          @JsonKey(name: 'authorizationExpire') final int? authorizationExpire,
          @JsonKey(name: 'videoGuid')
          @ApiUuidJsonConverter()
          final ApiUuid? videoGuid,
          @JsonKey(name: 'libraryId') final int? libraryId,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'collectionId') final String? collectionId,
          @JsonKey(name: 'media') final StepMediaDtoDto? media}) =
      _$VideoPreSignedUrlDtoDtoImpl;

  factory _VideoPreSignedUrlDtoDto.fromJson(Map<String, dynamic> json) =
      _$VideoPreSignedUrlDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  int? get libraryId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'collectionId')
  String? get collectionId;
  @override
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media;

  /// Create a copy of VideoPreSignedUrlDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPreSignedUrlDtoDtoImplCopyWith<_$VideoPreSignedUrlDtoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VideoStatusDtoDto _$VideoStatusDtoDtoFromJson(Map<String, dynamic> json) {
  return _VideoStatusDtoDto.fromJson(json);
}

/// @nodoc
mixin _$VideoStatusDtoDto {
  @JsonKey(name: 'videoLibraryId')
  int? get videoLibraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  /// Serializes this VideoStatusDtoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoStatusDtoDtoCopyWith<VideoStatusDtoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStatusDtoDtoCopyWith<$Res> {
  factory $VideoStatusDtoDtoCopyWith(
          VideoStatusDtoDto value, $Res Function(VideoStatusDtoDto) then) =
      _$VideoStatusDtoDtoCopyWithImpl<$Res, VideoStatusDtoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$VideoStatusDtoDtoCopyWithImpl<$Res, $Val extends VideoStatusDtoDto>
    implements $VideoStatusDtoDtoCopyWith<$Res> {
  _$VideoStatusDtoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      videoLibraryId: freezed == videoLibraryId
          ? _value.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoStatusDtoDtoImplCopyWith<$Res>
    implements $VideoStatusDtoDtoCopyWith<$Res> {
  factory _$$VideoStatusDtoDtoImplCopyWith(_$VideoStatusDtoDtoImpl value,
          $Res Function(_$VideoStatusDtoDtoImpl) then) =
      __$$VideoStatusDtoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$VideoStatusDtoDtoImplCopyWithImpl<$Res>
    extends _$VideoStatusDtoDtoCopyWithImpl<$Res, _$VideoStatusDtoDtoImpl>
    implements _$$VideoStatusDtoDtoImplCopyWith<$Res> {
  __$$VideoStatusDtoDtoImplCopyWithImpl(_$VideoStatusDtoDtoImpl _value,
      $Res Function(_$VideoStatusDtoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_$VideoStatusDtoDtoImpl(
      videoLibraryId: freezed == videoLibraryId
          ? _value.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoStatusDtoDtoImpl implements _VideoStatusDtoDto {
  _$VideoStatusDtoDtoImpl(
      {@JsonKey(name: 'videoLibraryId') this.videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() this.videoGuid,
      @JsonKey(name: 'status') this.status});

  factory _$VideoStatusDtoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoStatusDtoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'videoLibraryId')
  final int? videoLibraryId;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  final ApiUuid? videoGuid;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'VideoStatusDtoDto(videoLibraryId: $videoLibraryId, videoGuid: $videoGuid, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoStatusDtoDtoImpl &&
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

  /// Create a copy of VideoStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoStatusDtoDtoImplCopyWith<_$VideoStatusDtoDtoImpl> get copyWith =>
      __$$VideoStatusDtoDtoImplCopyWithImpl<_$VideoStatusDtoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoStatusDtoDtoImplToJson(
      this,
    );
  }
}

abstract class _VideoStatusDtoDto implements VideoStatusDtoDto {
  factory _VideoStatusDtoDto(
      {@JsonKey(name: 'videoLibraryId') final int? videoLibraryId,
      @JsonKey(name: 'videoGuid')
      @ApiUuidJsonConverter()
      final ApiUuid? videoGuid,
      @JsonKey(name: 'status') final int? status}) = _$VideoStatusDtoDtoImpl;

  factory _VideoStatusDtoDto.fromJson(Map<String, dynamic> json) =
      _$VideoStatusDtoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'videoLibraryId')
  int? get videoLibraryId;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid;
  @override
  @JsonKey(name: 'status')
  int? get status;

  /// Create a copy of VideoStatusDtoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoStatusDtoDtoImplCopyWith<_$VideoStatusDtoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiV1AccountGetResponseDto _$ApiV1AccountGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1AccountGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1AccountGetResponseDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile => throw _privateConstructorUsedError;

  /// Serializes this ApiV1AccountGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1AccountGetResponseDtoCopyWith<ApiV1AccountGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1AccountGetResponseDtoCopyWith<$Res> {
  factory $ApiV1AccountGetResponseDtoCopyWith(ApiV1AccountGetResponseDto value,
          $Res Function(ApiV1AccountGetResponseDto) then) =
      _$ApiV1AccountGetResponseDtoCopyWithImpl<$Res,
          ApiV1AccountGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$ApiV1AccountGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1AccountGetResponseDto>
    implements $ApiV1AccountGetResponseDtoCopyWith<$Res> {
  _$ApiV1AccountGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ) as $Val);
  }

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDtoDtoCopyWith<$Res> get profile {
    return $ProfileDtoDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1AccountGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1AccountGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1AccountGetResponseDtoImplCopyWith(
          _$ApiV1AccountGetResponseDtoImpl value,
          $Res Function(_$ApiV1AccountGetResponseDtoImpl) then) =
      __$$ApiV1AccountGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  @override
  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ApiV1AccountGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1AccountGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1AccountGetResponseDtoImpl>
    implements _$$ApiV1AccountGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1AccountGetResponseDtoImplCopyWithImpl(
      _$ApiV1AccountGetResponseDtoImpl _value,
      $Res Function(_$ApiV1AccountGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_$ApiV1AccountGetResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1AccountGetResponseDtoImpl implements _ApiV1AccountGetResponseDto {
  _$ApiV1AccountGetResponseDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'profile') required this.profile});

  factory _$ApiV1AccountGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1AccountGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'profile')
  final ProfileDtoDto profile;

  @override
  String toString() {
    return 'ApiV1AccountGetResponseDto(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1AccountGetResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile);

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1AccountGetResponseDtoImplCopyWith<_$ApiV1AccountGetResponseDtoImpl>
      get copyWith => __$$ApiV1AccountGetResponseDtoImplCopyWithImpl<
          _$ApiV1AccountGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1AccountGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1AccountGetResponseDto
    implements ApiV1AccountGetResponseDto {
  factory _ApiV1AccountGetResponseDto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'profile') required final ProfileDtoDto profile}) =
      _$ApiV1AccountGetResponseDtoImpl;

  factory _ApiV1AccountGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1AccountGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile;

  /// Create a copy of ApiV1AccountGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1AccountGetResponseDtoImplCopyWith<_$ApiV1AccountGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1AccountPutResponseDto _$ApiV1AccountPutResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1AccountPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1AccountPutResponseDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile => throw _privateConstructorUsedError;

  /// Serializes this ApiV1AccountPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1AccountPutResponseDtoCopyWith<ApiV1AccountPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1AccountPutResponseDtoCopyWith<$Res> {
  factory $ApiV1AccountPutResponseDtoCopyWith(ApiV1AccountPutResponseDto value,
          $Res Function(ApiV1AccountPutResponseDto) then) =
      _$ApiV1AccountPutResponseDtoCopyWithImpl<$Res,
          ApiV1AccountPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$ApiV1AccountPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1AccountPutResponseDto>
    implements $ApiV1AccountPutResponseDtoCopyWith<$Res> {
  _$ApiV1AccountPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ) as $Val);
  }

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDtoDtoCopyWith<$Res> get profile {
    return $ProfileDtoDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1AccountPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1AccountPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1AccountPutResponseDtoImplCopyWith(
          _$ApiV1AccountPutResponseDtoImpl value,
          $Res Function(_$ApiV1AccountPutResponseDtoImpl) then) =
      __$$ApiV1AccountPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  @override
  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ApiV1AccountPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1AccountPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1AccountPutResponseDtoImpl>
    implements _$$ApiV1AccountPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1AccountPutResponseDtoImplCopyWithImpl(
      _$ApiV1AccountPutResponseDtoImpl _value,
      $Res Function(_$ApiV1AccountPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_$ApiV1AccountPutResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1AccountPutResponseDtoImpl implements _ApiV1AccountPutResponseDto {
  _$ApiV1AccountPutResponseDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'profile') required this.profile});

  factory _$ApiV1AccountPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1AccountPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'profile')
  final ProfileDtoDto profile;

  @override
  String toString() {
    return 'ApiV1AccountPutResponseDto(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1AccountPutResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile);

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1AccountPutResponseDtoImplCopyWith<_$ApiV1AccountPutResponseDtoImpl>
      get copyWith => __$$ApiV1AccountPutResponseDtoImplCopyWithImpl<
          _$ApiV1AccountPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1AccountPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1AccountPutResponseDto
    implements ApiV1AccountPutResponseDto {
  factory _ApiV1AccountPutResponseDto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'profile') required final ProfileDtoDto profile}) =
      _$ApiV1AccountPutResponseDtoImpl;

  factory _ApiV1AccountPutResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1AccountPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile;

  /// Create a copy of ApiV1AccountPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1AccountPutResponseDtoImplCopyWith<_$ApiV1AccountPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1AccountPutRequestDto _$ApiV1AccountPutRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1AccountPutRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1AccountPutRequestDto {
  @JsonKey(name: 'displayName')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate => throw _privateConstructorUsedError;

  /// Serializes this ApiV1AccountPutRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1AccountPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1AccountPutRequestDtoCopyWith<ApiV1AccountPutRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1AccountPutRequestDtoCopyWith<$Res> {
  factory $ApiV1AccountPutRequestDtoCopyWith(ApiV1AccountPutRequestDto value,
          $Res Function(ApiV1AccountPutRequestDto) then) =
      _$ApiV1AccountPutRequestDtoCopyWithImpl<$Res, ApiV1AccountPutRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isPrivate') bool? isPrivate});
}

/// @nodoc
class _$ApiV1AccountPutRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1AccountPutRequestDto>
    implements $ApiV1AccountPutRequestDtoCopyWith<$Res> {
  _$ApiV1AccountPutRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1AccountPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1AccountPutRequestDtoImplCopyWith<$Res>
    implements $ApiV1AccountPutRequestDtoCopyWith<$Res> {
  factory _$$ApiV1AccountPutRequestDtoImplCopyWith(
          _$ApiV1AccountPutRequestDtoImpl value,
          $Res Function(_$ApiV1AccountPutRequestDtoImpl) then) =
      __$$ApiV1AccountPutRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'displayName') String displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'isPrivate') bool? isPrivate});
}

/// @nodoc
class __$$ApiV1AccountPutRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1AccountPutRequestDtoCopyWithImpl<$Res,
        _$ApiV1AccountPutRequestDtoImpl>
    implements _$$ApiV1AccountPutRequestDtoImplCopyWith<$Res> {
  __$$ApiV1AccountPutRequestDtoImplCopyWithImpl(
      _$ApiV1AccountPutRequestDtoImpl _value,
      $Res Function(_$ApiV1AccountPutRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1AccountPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? username = null,
    Object? description = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_$ApiV1AccountPutRequestDtoImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1AccountPutRequestDtoImpl implements _ApiV1AccountPutRequestDto {
  _$ApiV1AccountPutRequestDtoImpl(
      {@JsonKey(name: 'displayName') required this.displayName,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'isPrivate') this.isPrivate});

  factory _$ApiV1AccountPutRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiV1AccountPutRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'displayName')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'isPrivate')
  final bool? isPrivate;

  @override
  String toString() {
    return 'ApiV1AccountPutRequestDto(displayName: $displayName, username: $username, description: $description, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1AccountPutRequestDtoImpl &&
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

  /// Create a copy of ApiV1AccountPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1AccountPutRequestDtoImplCopyWith<_$ApiV1AccountPutRequestDtoImpl>
      get copyWith => __$$ApiV1AccountPutRequestDtoImplCopyWithImpl<
          _$ApiV1AccountPutRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1AccountPutRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1AccountPutRequestDto implements ApiV1AccountPutRequestDto {
  factory _ApiV1AccountPutRequestDto(
          {@JsonKey(name: 'displayName') required final String displayName,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'isPrivate') final bool? isPrivate}) =
      _$ApiV1AccountPutRequestDtoImpl;

  factory _ApiV1AccountPutRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1AccountPutRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'displayName')
  String get displayName;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'isPrivate')
  bool? get isPrivate;

  /// Create a copy of ApiV1AccountPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1AccountPutRequestDtoImplCopyWith<_$ApiV1AccountPutRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1AccountAvatarPutResponseDto _$ApiV1AccountAvatarPutResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1AccountAvatarPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1AccountAvatarPutResponseDto {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile => throw _privateConstructorUsedError;

  /// Serializes this ApiV1AccountAvatarPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1AccountAvatarPutResponseDtoCopyWith<ApiV1AccountAvatarPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1AccountAvatarPutResponseDtoCopyWith<$Res> {
  factory $ApiV1AccountAvatarPutResponseDtoCopyWith(
          ApiV1AccountAvatarPutResponseDto value,
          $Res Function(ApiV1AccountAvatarPutResponseDto) then) =
      _$ApiV1AccountAvatarPutResponseDtoCopyWithImpl<$Res,
          ApiV1AccountAvatarPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$ApiV1AccountAvatarPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1AccountAvatarPutResponseDto>
    implements $ApiV1AccountAvatarPutResponseDtoCopyWith<$Res> {
  _$ApiV1AccountAvatarPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ) as $Val);
  }

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDtoDtoCopyWith<$Res> get profile {
    return $ProfileDtoDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1AccountAvatarPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1AccountAvatarPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1AccountAvatarPutResponseDtoImplCopyWith(
          _$ApiV1AccountAvatarPutResponseDtoImpl value,
          $Res Function(_$ApiV1AccountAvatarPutResponseDtoImpl) then) =
      __$$ApiV1AccountAvatarPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'profile') ProfileDtoDto profile});

  @override
  $ProfileDtoDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$$ApiV1AccountAvatarPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1AccountAvatarPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1AccountAvatarPutResponseDtoImpl>
    implements _$$ApiV1AccountAvatarPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1AccountAvatarPutResponseDtoImplCopyWithImpl(
      _$ApiV1AccountAvatarPutResponseDtoImpl _value,
      $Res Function(_$ApiV1AccountAvatarPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
  }) {
    return _then(_$ApiV1AccountAvatarPutResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDtoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1AccountAvatarPutResponseDtoImpl
    implements _ApiV1AccountAvatarPutResponseDto {
  _$ApiV1AccountAvatarPutResponseDtoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'profile') required this.profile});

  factory _$ApiV1AccountAvatarPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1AccountAvatarPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'profile')
  final ProfileDtoDto profile;

  @override
  String toString() {
    return 'ApiV1AccountAvatarPutResponseDto(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1AccountAvatarPutResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile);

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1AccountAvatarPutResponseDtoImplCopyWith<
          _$ApiV1AccountAvatarPutResponseDtoImpl>
      get copyWith => __$$ApiV1AccountAvatarPutResponseDtoImplCopyWithImpl<
          _$ApiV1AccountAvatarPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1AccountAvatarPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1AccountAvatarPutResponseDto
    implements ApiV1AccountAvatarPutResponseDto {
  factory _ApiV1AccountAvatarPutResponseDto(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'profile') required final ProfileDtoDto profile}) =
      _$ApiV1AccountAvatarPutResponseDtoImpl;

  factory _ApiV1AccountAvatarPutResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1AccountAvatarPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'profile')
  ProfileDtoDto get profile;

  /// Create a copy of ApiV1AccountAvatarPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1AccountAvatarPutResponseDtoImplCopyWith<
          _$ApiV1AccountAvatarPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1UsersIdGetResponseDto _$ApiV1UsersIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1UsersIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1UsersIdGetResponseDto {
  @JsonKey(name: 'userDetail')
  UserDetailDtoDto get userDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'badgesCount')
  int? get badgesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportersCount')
  int? get supportersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'followersCount')
  int? get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'followingsCount')
  int? get followingsCount => throw _privateConstructorUsedError;

  /// Serializes this ApiV1UsersIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1UsersIdGetResponseDtoCopyWith<ApiV1UsersIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1UsersIdGetResponseDtoCopyWith<$Res> {
  factory $ApiV1UsersIdGetResponseDtoCopyWith(ApiV1UsersIdGetResponseDto value,
          $Res Function(ApiV1UsersIdGetResponseDto) then) =
      _$ApiV1UsersIdGetResponseDtoCopyWithImpl<$Res,
          ApiV1UsersIdGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') int? badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int? followersCount,
      @JsonKey(name: 'followingsCount') int? followingsCount});

  $UserDetailDtoDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class _$ApiV1UsersIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1UsersIdGetResponseDto>
    implements $ApiV1UsersIdGetResponseDtoCopyWith<$Res> {
  _$ApiV1UsersIdGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = freezed,
    Object? badgesUsers = freezed,
    Object? supportersCount = freezed,
    Object? supportersUsers = freezed,
    Object? followersCount = freezed,
    Object? followingsCount = freezed,
  }) {
    return _then(_value.copyWith(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDtoDto,
      badgesCount: freezed == badgesCount
          ? _value.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesUsers: freezed == badgesUsers
          ? _value.badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      supportersCount: freezed == supportersCount
          ? _value.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      supportersUsers: freezed == supportersUsers
          ? _value.supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<ProfileDtoDtoSupportersUsersDto>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingsCount: freezed == followingsCount
          ? _value.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDtoDtoCopyWith<$Res> get userDetail {
    return $UserDetailDtoDtoCopyWith<$Res>(_value.userDetail, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1UsersIdGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1UsersIdGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1UsersIdGetResponseDtoImplCopyWith(
          _$ApiV1UsersIdGetResponseDtoImpl value,
          $Res Function(_$ApiV1UsersIdGetResponseDtoImpl) then) =
      __$$ApiV1UsersIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userDetail') UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') int? badgesCount,
      @JsonKey(name: 'badgesUsers') List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') int? followersCount,
      @JsonKey(name: 'followingsCount') int? followingsCount});

  @override
  $UserDetailDtoDtoCopyWith<$Res> get userDetail;
}

/// @nodoc
class __$$ApiV1UsersIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1UsersIdGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1UsersIdGetResponseDtoImpl>
    implements _$$ApiV1UsersIdGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1UsersIdGetResponseDtoImplCopyWithImpl(
      _$ApiV1UsersIdGetResponseDtoImpl _value,
      $Res Function(_$ApiV1UsersIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetail = null,
    Object? badgesCount = freezed,
    Object? badgesUsers = freezed,
    Object? supportersCount = freezed,
    Object? supportersUsers = freezed,
    Object? followersCount = freezed,
    Object? followingsCount = freezed,
  }) {
    return _then(_$ApiV1UsersIdGetResponseDtoImpl(
      userDetail: null == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetailDtoDto,
      badgesCount: freezed == badgesCount
          ? _value.badgesCount
          : badgesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      badgesUsers: freezed == badgesUsers
          ? _value._badgesUsers
          : badgesUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      supportersCount: freezed == supportersCount
          ? _value.supportersCount
          : supportersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      supportersUsers: freezed == supportersUsers
          ? _value._supportersUsers
          : supportersUsers // ignore: cast_nullable_to_non_nullable
              as List<ProfileDtoDtoSupportersUsersDto>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingsCount: freezed == followingsCount
          ? _value.followingsCount
          : followingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1UsersIdGetResponseDtoImpl implements _ApiV1UsersIdGetResponseDto {
  _$ApiV1UsersIdGetResponseDtoImpl(
      {@JsonKey(name: 'userDetail') required this.userDetail,
      @JsonKey(name: 'badgesCount') this.badgesCount,
      @JsonKey(name: 'badgesUsers') final List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') this.supportersCount,
      @JsonKey(name: 'supportersUsers')
      final List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') this.followersCount,
      @JsonKey(name: 'followingsCount') this.followingsCount})
      : _badgesUsers = badgesUsers,
        _supportersUsers = supportersUsers;

  factory _$ApiV1UsersIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1UsersIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userDetail')
  final UserDetailDtoDto userDetail;
  @override
  @JsonKey(name: 'badgesCount')
  final int? badgesCount;
  final List<UserDtoDto>? _badgesUsers;
  @override
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers {
    final value = _badgesUsers;
    if (value == null) return null;
    if (_badgesUsers is EqualUnmodifiableListView) return _badgesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'supportersCount')
  final int? supportersCount;
  final List<ProfileDtoDtoSupportersUsersDto>? _supportersUsers;
  @override
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers {
    final value = _supportersUsers;
    if (value == null) return null;
    if (_supportersUsers is EqualUnmodifiableListView) return _supportersUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'followersCount')
  final int? followersCount;
  @override
  @JsonKey(name: 'followingsCount')
  final int? followingsCount;

  @override
  String toString() {
    return 'ApiV1UsersIdGetResponseDto(userDetail: $userDetail, badgesCount: $badgesCount, badgesUsers: $badgesUsers, supportersCount: $supportersCount, supportersUsers: $supportersUsers, followersCount: $followersCount, followingsCount: $followingsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1UsersIdGetResponseDtoImpl &&
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

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1UsersIdGetResponseDtoImplCopyWith<_$ApiV1UsersIdGetResponseDtoImpl>
      get copyWith => __$$ApiV1UsersIdGetResponseDtoImplCopyWithImpl<
          _$ApiV1UsersIdGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1UsersIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1UsersIdGetResponseDto
    implements ApiV1UsersIdGetResponseDto {
  factory _ApiV1UsersIdGetResponseDto(
      {@JsonKey(name: 'userDetail') required final UserDetailDtoDto userDetail,
      @JsonKey(name: 'badgesCount') final int? badgesCount,
      @JsonKey(name: 'badgesUsers') final List<UserDtoDto>? badgesUsers,
      @JsonKey(name: 'supportersCount') final int? supportersCount,
      @JsonKey(name: 'supportersUsers')
      final List<ProfileDtoDtoSupportersUsersDto>? supportersUsers,
      @JsonKey(name: 'followersCount') final int? followersCount,
      @JsonKey(name: 'followingsCount')
      final int? followingsCount}) = _$ApiV1UsersIdGetResponseDtoImpl;

  factory _ApiV1UsersIdGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1UsersIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userDetail')
  UserDetailDtoDto get userDetail;
  @override
  @JsonKey(name: 'badgesCount')
  int? get badgesCount;
  @override
  @JsonKey(name: 'badgesUsers')
  List<UserDtoDto>? get badgesUsers;
  @override
  @JsonKey(name: 'supportersCount')
  int? get supportersCount;
  @override
  @JsonKey(name: 'supportersUsers')
  List<ProfileDtoDtoSupportersUsersDto>? get supportersUsers;
  @override
  @JsonKey(name: 'followersCount')
  int? get followersCount;
  @override
  @JsonKey(name: 'followingsCount')
  int? get followingsCount;

  /// Create a copy of ApiV1UsersIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1UsersIdGetResponseDtoImplCopyWith<_$ApiV1UsersIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsPostResponseDto _$ApiV1StepsPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1StepsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts')
  int? get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  int? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsPostResponseDtoCopyWith<ApiV1StepsPostResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsPostResponseDtoCopyWith(ApiV1StepsPostResponseDto value,
          $Res Function(ApiV1StepsPostResponseDto) then) =
      _$ApiV1StepsPostResponseDtoCopyWithImpl<$Res, ApiV1StepsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  $UserDtoDtoCopyWith<$Res> get user;
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class _$ApiV1StepsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsPostResponseDto>
    implements $ApiV1StepsPostResponseDtoCopyWith<$Res> {
  _$ApiV1StepsPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ) as $Val);
  }

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoDtoCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDtoDtoCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1StepsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsPostResponseDtoImplCopyWith(
          _$ApiV1StepsPostResponseDtoImpl value,
          $Res Function(_$ApiV1StepsPostResponseDtoImpl) then) =
      __$$ApiV1StepsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class __$$ApiV1StepsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsPostResponseDtoImpl>
    implements _$$ApiV1StepsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsPostResponseDtoImplCopyWithImpl(
      _$ApiV1StepsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1StepsPostResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsPostResponseDtoImpl implements _ApiV1StepsPostResponseDto {
  _$ApiV1StepsPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'journey') this.journey,
      @JsonKey(name: 'hearts') this.hearts,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'sharedByUser') this.sharedByUser,
      @JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'commentedByUser') this.commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') this.othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') this.stepTypeString,
      @JsonKey(name: 'media') final List<StepMediaDtoDto>? media})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;

  factory _$ApiV1StepsPostResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiV1StepsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'journey')
  final JourneyDtoDto? journey;
  @override
  @JsonKey(name: 'hearts')
  final int? hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int? shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool? sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int? comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool? commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int? userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int? othersStepWith;
  final List<UserDtoDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepTypeString')
  final String? stepTypeString;
  final List<StepMediaDtoDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiV1StepsPostResponseDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, user: $user, journeyId: $journeyId, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepTypeString: $stepTypeString, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsPostResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
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
            (identical(other.stepTypeString, stepTypeString) ||
                other.stepTypeString == stepTypeString) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        user,
        journeyId,
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
        stepTypeString,
        const DeepCollectionEquality().hash(_media)
      ]);

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsPostResponseDtoImplCopyWith<_$ApiV1StepsPostResponseDtoImpl>
      get copyWith => __$$ApiV1StepsPostResponseDtoImplCopyWithImpl<
          _$ApiV1StepsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsPostResponseDto implements ApiV1StepsPostResponseDto {
  factory _ApiV1StepsPostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'user') required final UserDtoDto user,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'journey') final JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') final int? hearts,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'shares') final int? shares,
      @JsonKey(name: 'sharedByUser') final bool? sharedByUser,
      @JsonKey(name: 'comments') final int? comments,
      @JsonKey(name: 'commentedByUser') final bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      final int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') final int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') final String? stepTypeString,
      @JsonKey(name: 'media')
      final List<StepMediaDtoDto>? media}) = _$ApiV1StepsPostResponseDtoImpl;

  factory _ApiV1StepsPostResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1StepsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey;
  @override
  @JsonKey(name: 'hearts')
  int? get hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'shares')
  int? get shares;
  @override
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser;
  @override
  @JsonKey(name: 'comments')
  int? get comments;
  @override
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers;
  @override
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media;

  /// Create a copy of ApiV1StepsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsPostResponseDtoImplCopyWith<_$ApiV1StepsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsPostRequestDto _$ApiV1StepsPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1StepsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsPostRequestDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid get journeyId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsPostRequestDtoCopyWith<ApiV1StepsPostRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsPostRequestDtoCopyWith(ApiV1StepsPostRequestDto value,
          $Res Function(ApiV1StepsPostRequestDto) then) =
      _$ApiV1StepsPostRequestDtoCopyWithImpl<$Res, ApiV1StepsPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid journeyId});
}

/// @nodoc
class _$ApiV1StepsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsPostRequestDto>
    implements $ApiV1StepsPostRequestDtoCopyWith<$Res> {
  _$ApiV1StepsPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsPostRequestDtoImplCopyWith(
          _$ApiV1StepsPostRequestDtoImpl value,
          $Res Function(_$ApiV1StepsPostRequestDtoImpl) then) =
      __$$ApiV1StepsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid journeyId});
}

/// @nodoc
class __$$ApiV1StepsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsPostRequestDtoImpl>
    implements _$$ApiV1StepsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsPostRequestDtoImplCopyWithImpl(
      _$ApiV1StepsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_$ApiV1StepsPostRequestDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsPostRequestDtoImpl implements _ApiV1StepsPostRequestDto {
  _$ApiV1StepsPostRequestDtoImpl(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      required this.journeyId});

  factory _$ApiV1StepsPostRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiV1StepsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid journeyId;

  @override
  String toString() {
    return 'ApiV1StepsPostRequestDto(content: $content, journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsPostRequestDtoImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, journeyId);

  /// Create a copy of ApiV1StepsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsPostRequestDtoImplCopyWith<_$ApiV1StepsPostRequestDtoImpl>
      get copyWith => __$$ApiV1StepsPostRequestDtoImplCopyWithImpl<
          _$ApiV1StepsPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsPostRequestDto implements ApiV1StepsPostRequestDto {
  factory _ApiV1StepsPostRequestDto(
      {@JsonKey(name: 'content') required final String content,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      required final ApiUuid journeyId}) = _$ApiV1StepsPostRequestDtoImpl;

  factory _ApiV1StepsPostRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1StepsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid get journeyId;

  /// Create a copy of ApiV1StepsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsPostRequestDtoImplCopyWith<_$ApiV1StepsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdGetResponseDto _$ApiV1StepsStepIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1StepsStepIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdGetResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts')
  int? get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  int? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdGetResponseDtoCopyWith<ApiV1StepsStepIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdGetResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdGetResponseDtoCopyWith(
          ApiV1StepsStepIdGetResponseDto value,
          $Res Function(ApiV1StepsStepIdGetResponseDto) then) =
      _$ApiV1StepsStepIdGetResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  $UserDtoDtoCopyWith<$Res> get user;
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class _$ApiV1StepsStepIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdGetResponseDto>
    implements $ApiV1StepsStepIdGetResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ) as $Val);
  }

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoDtoCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDtoDtoCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdGetResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdGetResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdGetResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class __$$ApiV1StepsStepIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdGetResponseDtoImpl>
    implements _$$ApiV1StepsStepIdGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdGetResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdGetResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdGetResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdGetResponseDtoImpl
    implements _ApiV1StepsStepIdGetResponseDto {
  _$ApiV1StepsStepIdGetResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'journey') this.journey,
      @JsonKey(name: 'hearts') this.hearts,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'sharedByUser') this.sharedByUser,
      @JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'commentedByUser') this.commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') this.othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') this.stepTypeString,
      @JsonKey(name: 'media') final List<StepMediaDtoDto>? media})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;

  factory _$ApiV1StepsStepIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'journey')
  final JourneyDtoDto? journey;
  @override
  @JsonKey(name: 'hearts')
  final int? hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int? shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool? sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int? comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool? commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int? userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int? othersStepWith;
  final List<UserDtoDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepTypeString')
  final String? stepTypeString;
  final List<StepMediaDtoDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiV1StepsStepIdGetResponseDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, user: $user, journeyId: $journeyId, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepTypeString: $stepTypeString, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdGetResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
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
            (identical(other.stepTypeString, stepTypeString) ||
                other.stepTypeString == stepTypeString) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        user,
        journeyId,
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
        stepTypeString,
        const DeepCollectionEquality().hash(_media)
      ]);

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdGetResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdGetResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdGetResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdGetResponseDto
    implements ApiV1StepsStepIdGetResponseDto {
  factory _ApiV1StepsStepIdGetResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'user') required final UserDtoDto user,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'journey') final JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') final int? hearts,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'shares') final int? shares,
      @JsonKey(name: 'sharedByUser') final bool? sharedByUser,
      @JsonKey(name: 'comments') final int? comments,
      @JsonKey(name: 'commentedByUser') final bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      final int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') final int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') final String? stepTypeString,
      @JsonKey(name: 'media')
      final List<StepMediaDtoDto>?
          media}) = _$ApiV1StepsStepIdGetResponseDtoImpl;

  factory _ApiV1StepsStepIdGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1StepsStepIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey;
  @override
  @JsonKey(name: 'hearts')
  int? get hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'shares')
  int? get shares;
  @override
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser;
  @override
  @JsonKey(name: 'comments')
  int? get comments;
  @override
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers;
  @override
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media;

  /// Create a copy of ApiV1StepsStepIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdGetResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdPutResponseDto _$ApiV1StepsStepIdPutResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1StepsStepIdPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdPutResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts')
  int? get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  int? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdPutResponseDtoCopyWith<ApiV1StepsStepIdPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdPutResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdPutResponseDtoCopyWith(
          ApiV1StepsStepIdPutResponseDto value,
          $Res Function(ApiV1StepsStepIdPutResponseDto) then) =
      _$ApiV1StepsStepIdPutResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  $UserDtoDtoCopyWith<$Res> get user;
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class _$ApiV1StepsStepIdPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdPutResponseDto>
    implements $ApiV1StepsStepIdPutResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ) as $Val);
  }

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoDtoCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDtoDtoCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdPutResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdPutResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdPutResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class __$$ApiV1StepsStepIdPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdPutResponseDtoImpl>
    implements _$$ApiV1StepsStepIdPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdPutResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdPutResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdPutResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdPutResponseDtoImpl
    implements _ApiV1StepsStepIdPutResponseDto {
  _$ApiV1StepsStepIdPutResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'journey') this.journey,
      @JsonKey(name: 'hearts') this.hearts,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'sharedByUser') this.sharedByUser,
      @JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'commentedByUser') this.commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') this.othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') this.stepTypeString,
      @JsonKey(name: 'media') final List<StepMediaDtoDto>? media})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;

  factory _$ApiV1StepsStepIdPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'journey')
  final JourneyDtoDto? journey;
  @override
  @JsonKey(name: 'hearts')
  final int? hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int? shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool? sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int? comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool? commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int? userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int? othersStepWith;
  final List<UserDtoDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepTypeString')
  final String? stepTypeString;
  final List<StepMediaDtoDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiV1StepsStepIdPutResponseDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, user: $user, journeyId: $journeyId, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepTypeString: $stepTypeString, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdPutResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
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
            (identical(other.stepTypeString, stepTypeString) ||
                other.stepTypeString == stepTypeString) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        user,
        journeyId,
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
        stepTypeString,
        const DeepCollectionEquality().hash(_media)
      ]);

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdPutResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdPutResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdPutResponseDto
    implements ApiV1StepsStepIdPutResponseDto {
  factory _ApiV1StepsStepIdPutResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'user') required final UserDtoDto user,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'journey') final JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') final int? hearts,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'shares') final int? shares,
      @JsonKey(name: 'sharedByUser') final bool? sharedByUser,
      @JsonKey(name: 'comments') final int? comments,
      @JsonKey(name: 'commentedByUser') final bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      final int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') final int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') final String? stepTypeString,
      @JsonKey(name: 'media')
      final List<StepMediaDtoDto>?
          media}) = _$ApiV1StepsStepIdPutResponseDtoImpl;

  factory _ApiV1StepsStepIdPutResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1StepsStepIdPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey;
  @override
  @JsonKey(name: 'hearts')
  int? get hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'shares')
  int? get shares;
  @override
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser;
  @override
  @JsonKey(name: 'comments')
  int? get comments;
  @override
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers;
  @override
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media;

  /// Create a copy of ApiV1StepsStepIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdPutRequestDto _$ApiV1StepsStepIdPutRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1StepsStepIdPutRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdPutRequestDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdPutRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdPutRequestDtoCopyWith<ApiV1StepsStepIdPutRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdPutRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdPutRequestDtoCopyWith(
          ApiV1StepsStepIdPutRequestDto value,
          $Res Function(ApiV1StepsStepIdPutRequestDto) then) =
      _$ApiV1StepsStepIdPutRequestDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdPutRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$ApiV1StepsStepIdPutRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdPutRequestDto>
    implements $ApiV1StepsStepIdPutRequestDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdPutRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdPutRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdPutRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdPutRequestDtoImplCopyWith(
          _$ApiV1StepsStepIdPutRequestDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdPutRequestDtoImpl) then) =
      __$$ApiV1StepsStepIdPutRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$ApiV1StepsStepIdPutRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdPutRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdPutRequestDtoImpl>
    implements _$$ApiV1StepsStepIdPutRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdPutRequestDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdPutRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdPutRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ApiV1StepsStepIdPutRequestDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdPutRequestDtoImpl
    implements _ApiV1StepsStepIdPutRequestDto {
  _$ApiV1StepsStepIdPutRequestDtoImpl(
      {@JsonKey(name: 'content') required this.content});

  factory _$ApiV1StepsStepIdPutRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdPutRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'ApiV1StepsStepIdPutRequestDto(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdPutRequestDtoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of ApiV1StepsStepIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdPutRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdPutRequestDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdPutRequestDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdPutRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdPutRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdPutRequestDto
    implements ApiV1StepsStepIdPutRequestDto {
  factory _ApiV1StepsStepIdPutRequestDto(
          {@JsonKey(name: 'content') required final String content}) =
      _$ApiV1StepsStepIdPutRequestDtoImpl;

  factory _ApiV1StepsStepIdPutRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1StepsStepIdPutRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of ApiV1StepsStepIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdPutRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdPutRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
    _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDto {
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'headers')
  Map<String, String>? get headers => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdMediaUploadRequestsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWith<
          ApiV1StepsStepIdMediaUploadRequestsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWith<
    $Res> {
  factory $ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWith(
          ApiV1StepsStepIdMediaUploadRequestsPostResponseDto value,
          $Res Function(ApiV1StepsStepIdMediaUploadRequestsPostResponseDto)
              then) =
      _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdMediaUploadRequestsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdMediaUploadRequestsPostResponseDto>
    implements
        $ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWith<
        $Res>
    implements
        $ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl value,
          $Res Function(
                  _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl)
              then) =
      __$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class __$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWithImpl<
        $Res>
    extends _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoCopyWithImpl<
        $Res, _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl>
    implements
        _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWith<
            $Res> {
  __$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl
    implements _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto {
  _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl(
      {@JsonKey(name: 'uploadUrl') this.uploadUrl,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'expiresAt') this.expiresAt,
      @JsonKey(name: 'headers') final Map<String, String>? headers})
      : _headers = headers;

  factory _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uploadUrl')
  final String? uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'expiresAt')
  final DateTime? expiresAt;
  final Map<String, String>? _headers;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiV1StepsStepIdMediaUploadRequestsPostResponseDto(uploadUrl: $uploadUrl, fileUrl: $fileUrl, fileName: $fileName, expiresAt: $expiresAt, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uploadUrl, fileUrl, fileName,
      expiresAt, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl>
      get copyWith =>
          __$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWithImpl<
                  _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
    implements ApiV1StepsStepIdMediaUploadRequestsPostResponseDto {
  factory _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto(
          {@JsonKey(name: 'uploadUrl') final String? uploadUrl,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'expiresAt') final DateTime? expiresAt,
          @JsonKey(name: 'headers') final Map<String, String>? headers}) =
      _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl;

  factory _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers;

  /// Create a copy of ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdImagesPutResponseDto
    _$ApiV1StepsStepIdImagesPutResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdImagesPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdImagesPutResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalUrl')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isImage')
  bool? get isImage => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdImagesPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdImagesPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdImagesPutResponseDtoCopyWith<
          ApiV1StepsStepIdImagesPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdImagesPutResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdImagesPutResponseDtoCopyWith(
          ApiV1StepsStepIdImagesPutResponseDto value,
          $Res Function(ApiV1StepsStepIdImagesPutResponseDto) then) =
      _$ApiV1StepsStepIdImagesPutResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdImagesPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$ApiV1StepsStepIdImagesPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdImagesPutResponseDto>
    implements $ApiV1StepsStepIdImagesPutResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdImagesPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdImagesPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdImagesPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdImagesPutResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdImagesPutResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdImagesPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdImagesPutResponseDtoImpl>
    implements _$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdImagesPutResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdImagesPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdImagesPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_$ApiV1StepsStepIdImagesPutResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdImagesPutResponseDtoImpl
    implements _ApiV1StepsStepIdImagesPutResponseDto {
  _$ApiV1StepsStepIdImagesPutResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'originalUrl') this.originalUrl,
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

  factory _$ApiV1StepsStepIdImagesPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdImagesPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String? originalUrl;
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
  final int? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  @override
  String toString() {
    return 'ApiV1StepsStepIdImagesPutResponseDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdImagesPutResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdImagesPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdImagesPutResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdImagesPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdImagesPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdImagesPutResponseDto
    implements ApiV1StepsStepIdImagesPutResponseDto {
  factory _ApiV1StepsStepIdImagesPutResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'originalUrl') final String? originalUrl,
      @JsonKey(name: 'largeUrl') final String? largeUrl,
      @JsonKey(name: 'mediumUrl') final String? mediumUrl,
      @JsonKey(name: 'smallUrl') final String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') final String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') final String? bunnyVideoId,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'duration') final num? duration,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'isVideo') final bool? isVideo,
      @JsonKey(name: 'isImage')
      final bool? isImage}) = _$ApiV1StepsStepIdImagesPutResponseDtoImpl;

  factory _ApiV1StepsStepIdImagesPutResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdImagesPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  String? get originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'duration')
  num? get duration;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of ApiV1StepsStepIdImagesPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdImagesPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdImagesPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdImagesPutRequestDto
    _$ApiV1StepsStepIdImagesPutRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdImagesPutRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdImagesPutRequestDto {
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentType')
  String? get contentType => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdImagesPutRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdImagesPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdImagesPutRequestDtoCopyWith<
          ApiV1StepsStepIdImagesPutRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdImagesPutRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdImagesPutRequestDtoCopyWith(
          ApiV1StepsStepIdImagesPutRequestDto value,
          $Res Function(ApiV1StepsStepIdImagesPutRequestDto) then) =
      _$ApiV1StepsStepIdImagesPutRequestDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdImagesPutRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class _$ApiV1StepsStepIdImagesPutRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdImagesPutRequestDto>
    implements $ApiV1StepsStepIdImagesPutRequestDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdImagesPutRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdImagesPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdImagesPutRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWith(
          _$ApiV1StepsStepIdImagesPutRequestDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdImagesPutRequestDtoImpl) then) =
      __$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class __$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdImagesPutRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdImagesPutRequestDtoImpl>
    implements _$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdImagesPutRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdImagesPutRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdImagesPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdImagesPutRequestDtoImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdImagesPutRequestDtoImpl
    implements _ApiV1StepsStepIdImagesPutRequestDto {
  _$ApiV1StepsStepIdImagesPutRequestDtoImpl(
      {@JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'contentType') this.contentType});

  factory _$ApiV1StepsStepIdImagesPutRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdImagesPutRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
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
  @JsonKey(name: 'contentType')
  final String? contentType;

  @override
  String toString() {
    return 'ApiV1StepsStepIdImagesPutRequestDto(fileName: $fileName, fileUrl: $fileUrl, width: $width, height: $height, size: $size, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdImagesPutRequestDtoImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, fileUrl, width, height, size, contentType);

  /// Create a copy of ApiV1StepsStepIdImagesPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdImagesPutRequestDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdImagesPutRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdImagesPutRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdImagesPutRequestDto
    implements ApiV1StepsStepIdImagesPutRequestDto {
  factory _ApiV1StepsStepIdImagesPutRequestDto(
          {@JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'width') final int? width,
          @JsonKey(name: 'height') final int? height,
          @JsonKey(name: 'size') final int? size,
          @JsonKey(name: 'contentType') final String? contentType}) =
      _$ApiV1StepsStepIdImagesPutRequestDtoImpl;

  factory _ApiV1StepsStepIdImagesPutRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdImagesPutRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'contentType')
  String? get contentType;

  /// Create a copy of ApiV1StepsStepIdImagesPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdImagesPutRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdImagesPutRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdVideoPutResponseDto
    _$ApiV1StepsStepIdVideoPutResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdVideoPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdVideoPutResponseDto {
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'libraryId')
  int? get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionId')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdVideoPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdVideoPutResponseDtoCopyWith<
          ApiV1StepsStepIdVideoPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdVideoPutResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdVideoPutResponseDtoCopyWith(
          ApiV1StepsStepIdVideoPutResponseDto value,
          $Res Function(ApiV1StepsStepIdVideoPutResponseDto) then) =
      _$ApiV1StepsStepIdVideoPutResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdVideoPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$ApiV1StepsStepIdVideoPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdVideoPutResponseDto>
    implements $ApiV1StepsStepIdVideoPutResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdVideoPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ) as $Val);
  }

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoDtoCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $StepMediaDtoDtoCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdVideoPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdVideoPutResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdVideoPutResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  @override
  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdVideoPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdVideoPutResponseDtoImpl>
    implements _$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdVideoPutResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdVideoPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdVideoPutResponseDtoImpl(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdVideoPutResponseDtoImpl
    implements _ApiV1StepsStepIdVideoPutResponseDto {
  _$ApiV1StepsStepIdVideoPutResponseDtoImpl(
      {@JsonKey(name: 'authorizationSignature') this.authorizationSignature,
      @JsonKey(name: 'authorizationExpire') this.authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() this.videoGuid,
      @JsonKey(name: 'libraryId') this.libraryId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'collectionId') this.collectionId,
      @JsonKey(name: 'media') this.media});

  factory _$ApiV1StepsStepIdVideoPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdVideoPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'authorizationSignature')
  final String? authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  final int? authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  final ApiUuid? videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  final int? libraryId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'collectionId')
  final String? collectionId;
  @override
  @JsonKey(name: 'media')
  final StepMediaDtoDto? media;

  @override
  String toString() {
    return 'ApiV1StepsStepIdVideoPutResponseDto(authorizationSignature: $authorizationSignature, authorizationExpire: $authorizationExpire, videoGuid: $videoGuid, libraryId: $libraryId, title: $title, collectionId: $collectionId, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdVideoPutResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdVideoPutResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdVideoPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdVideoPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdVideoPutResponseDto
    implements ApiV1StepsStepIdVideoPutResponseDto {
  factory _ApiV1StepsStepIdVideoPutResponseDto(
          {@JsonKey(name: 'authorizationSignature')
          final String? authorizationSignature,
          @JsonKey(name: 'authorizationExpire') final int? authorizationExpire,
          @JsonKey(name: 'videoGuid')
          @ApiUuidJsonConverter()
          final ApiUuid? videoGuid,
          @JsonKey(name: 'libraryId') final int? libraryId,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'collectionId') final String? collectionId,
          @JsonKey(name: 'media') final StepMediaDtoDto? media}) =
      _$ApiV1StepsStepIdVideoPutResponseDtoImpl;

  factory _ApiV1StepsStepIdVideoPutResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdVideoPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  int? get libraryId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'collectionId')
  String? get collectionId;
  @override
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media;

  /// Create a copy of ApiV1StepsStepIdVideoPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdVideoPutResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdVideoPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1ReportsPostResponseDto _$ApiV1ReportsPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1ReportsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1ReportsPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityType')
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityId')
  String? get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reporter')
  UserDto2Dto? get reporter => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// Serializes this ApiV1ReportsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1ReportsPostResponseDtoCopyWith<ApiV1ReportsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1ReportsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1ReportsPostResponseDtoCopyWith(
          ApiV1ReportsPostResponseDto value,
          $Res Function(ApiV1ReportsPostResponseDto) then) =
      _$ApiV1ReportsPostResponseDtoCopyWithImpl<$Res,
          ApiV1ReportsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String? entityId,
      @JsonKey(name: 'reporter') UserDto2Dto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  $UserDto2DtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class _$ApiV1ReportsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1ReportsPostResponseDto>
    implements $ApiV1ReportsPostResponseDtoCopyWith<$Res> {
  _$ApiV1ReportsPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDto2DtoCopyWith<$Res>? get reporter {
    if (_value.reporter == null) {
      return null;
    }

    return $UserDto2DtoCopyWith<$Res>(_value.reporter!, (value) {
      return _then(_value.copyWith(reporter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1ReportsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1ReportsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1ReportsPostResponseDtoImplCopyWith(
          _$ApiV1ReportsPostResponseDtoImpl value,
          $Res Function(_$ApiV1ReportsPostResponseDtoImpl) then) =
      __$$ApiV1ReportsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String? entityId,
      @JsonKey(name: 'reporter') UserDto2Dto? reporter,
      @JsonKey(name: 'reason') String reason,
      @JsonKey(name: 'createdDate') DateTime? createdDate});

  @override
  $UserDto2DtoCopyWith<$Res>? get reporter;
}

/// @nodoc
class __$$ApiV1ReportsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1ReportsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1ReportsPostResponseDtoImpl>
    implements _$$ApiV1ReportsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1ReportsPostResponseDtoImplCopyWithImpl(
      _$ApiV1ReportsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1ReportsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? reporter = freezed,
    Object? reason = null,
    Object? createdDate = freezed,
  }) {
    return _then(_$ApiV1ReportsPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1ReportsPostResponseDtoImpl
    implements _ApiV1ReportsPostResponseDto {
  _$ApiV1ReportsPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') this.entityId,
      @JsonKey(name: 'reporter') this.reporter,
      @JsonKey(name: 'reason') required this.reason,
      @JsonKey(name: 'createdDate') this.createdDate});

  factory _$ApiV1ReportsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1ReportsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String? entityId;
  @override
  @JsonKey(name: 'reporter')
  final UserDto2Dto? reporter;
  @override
  @JsonKey(name: 'reason')
  final String reason;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;

  @override
  String toString() {
    return 'ApiV1ReportsPostResponseDto(id: $id, entityType: $entityType, entityId: $entityId, reporter: $reporter, reason: $reason, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1ReportsPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1ReportsPostResponseDtoImplCopyWith<_$ApiV1ReportsPostResponseDtoImpl>
      get copyWith => __$$ApiV1ReportsPostResponseDtoImplCopyWithImpl<
          _$ApiV1ReportsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1ReportsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1ReportsPostResponseDto
    implements ApiV1ReportsPostResponseDto {
  factory _ApiV1ReportsPostResponseDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'entityType') required final String entityType,
          @JsonKey(name: 'entityId') final String? entityId,
          @JsonKey(name: 'reporter') final UserDto2Dto? reporter,
          @JsonKey(name: 'reason') required final String reason,
          @JsonKey(name: 'createdDate') final DateTime? createdDate}) =
      _$ApiV1ReportsPostResponseDtoImpl;

  factory _ApiV1ReportsPostResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1ReportsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'entityType')
  String get entityType;
  @override
  @JsonKey(name: 'entityId')
  String? get entityId;
  @override
  @JsonKey(name: 'reporter')
  UserDto2Dto? get reporter;
  @override
  @JsonKey(name: 'reason')
  String get reason;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;

  /// Create a copy of ApiV1ReportsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1ReportsPostResponseDtoImplCopyWith<_$ApiV1ReportsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1ReportsPostRequestDto _$ApiV1ReportsPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1ReportsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1ReportsPostRequestDto {
  @JsonKey(name: 'entityType')
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entityId')
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this ApiV1ReportsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1ReportsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1ReportsPostRequestDtoCopyWith<ApiV1ReportsPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1ReportsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1ReportsPostRequestDtoCopyWith(ApiV1ReportsPostRequestDto value,
          $Res Function(ApiV1ReportsPostRequestDto) then) =
      _$ApiV1ReportsPostRequestDtoCopyWithImpl<$Res,
          ApiV1ReportsPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class _$ApiV1ReportsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1ReportsPostRequestDto>
    implements $ApiV1ReportsPostRequestDtoCopyWith<$Res> {
  _$ApiV1ReportsPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1ReportsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1ReportsPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1ReportsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1ReportsPostRequestDtoImplCopyWith(
          _$ApiV1ReportsPostRequestDtoImpl value,
          $Res Function(_$ApiV1ReportsPostRequestDtoImpl) then) =
      __$$ApiV1ReportsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entityType') String entityType,
      @JsonKey(name: 'entityId') String entityId,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class __$$ApiV1ReportsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1ReportsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1ReportsPostRequestDtoImpl>
    implements _$$ApiV1ReportsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1ReportsPostRequestDtoImplCopyWithImpl(
      _$ApiV1ReportsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1ReportsPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1ReportsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
    Object? entityId = null,
    Object? reason = null,
  }) {
    return _then(_$ApiV1ReportsPostRequestDtoImpl(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1ReportsPostRequestDtoImpl implements _ApiV1ReportsPostRequestDto {
  _$ApiV1ReportsPostRequestDtoImpl(
      {@JsonKey(name: 'entityType') required this.entityType,
      @JsonKey(name: 'entityId') required this.entityId,
      @JsonKey(name: 'reason') required this.reason});

  factory _$ApiV1ReportsPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1ReportsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'entityType')
  final String entityType;
  @override
  @JsonKey(name: 'entityId')
  final String entityId;
  @override
  @JsonKey(name: 'reason')
  final String reason;

  @override
  String toString() {
    return 'ApiV1ReportsPostRequestDto(entityType: $entityType, entityId: $entityId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1ReportsPostRequestDtoImpl &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entityType, entityId, reason);

  /// Create a copy of ApiV1ReportsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1ReportsPostRequestDtoImplCopyWith<_$ApiV1ReportsPostRequestDtoImpl>
      get copyWith => __$$ApiV1ReportsPostRequestDtoImplCopyWithImpl<
          _$ApiV1ReportsPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1ReportsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1ReportsPostRequestDto
    implements ApiV1ReportsPostRequestDto {
  factory _ApiV1ReportsPostRequestDto(
          {@JsonKey(name: 'entityType') required final String entityType,
          @JsonKey(name: 'entityId') required final String entityId,
          @JsonKey(name: 'reason') required final String reason}) =
      _$ApiV1ReportsPostRequestDtoImpl;

  factory _ApiV1ReportsPostRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1ReportsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'entityType')
  String get entityType;
  @override
  @JsonKey(name: 'entityId')
  String get entityId;
  @override
  @JsonKey(name: 'reason')
  String get reason;

  /// Create a copy of ApiV1ReportsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1ReportsPostRequestDtoImplCopyWith<_$ApiV1ReportsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1NotificationsGetResponseDto _$ApiV1NotificationsGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1NotificationsGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1NotificationsGetResponseDto {
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageSize')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMore')
  bool? get hasMore => throw _privateConstructorUsedError;

  /// Serializes this ApiV1NotificationsGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1NotificationsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1NotificationsGetResponseDtoCopyWith<ApiV1NotificationsGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1NotificationsGetResponseDtoCopyWith<$Res> {
  factory $ApiV1NotificationsGetResponseDtoCopyWith(
          ApiV1NotificationsGetResponseDto value,
          $Res Function(ApiV1NotificationsGetResponseDto) then) =
      _$ApiV1NotificationsGetResponseDtoCopyWithImpl<$Res,
          ApiV1NotificationsGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class _$ApiV1NotificationsGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1NotificationsGetResponseDto>
    implements $ApiV1NotificationsGetResponseDtoCopyWith<$Res> {
  _$ApiV1NotificationsGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1NotificationsGetResponseDto
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
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDtoDto>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1NotificationsGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1NotificationsGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1NotificationsGetResponseDtoImplCopyWith(
          _$ApiV1NotificationsGetResponseDtoImpl value,
          $Res Function(_$ApiV1NotificationsGetResponseDtoImpl) then) =
      __$$ApiV1NotificationsGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notifications') List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'pageSize') int? pageSize,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'unreadCount') int? unreadCount,
      @JsonKey(name: 'hasMore') bool? hasMore});
}

/// @nodoc
class __$$ApiV1NotificationsGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1NotificationsGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1NotificationsGetResponseDtoImpl>
    implements _$$ApiV1NotificationsGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1NotificationsGetResponseDtoImplCopyWithImpl(
      _$ApiV1NotificationsGetResponseDtoImpl _value,
      $Res Function(_$ApiV1NotificationsGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1NotificationsGetResponseDto
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
    return _then(_$ApiV1NotificationsGetResponseDtoImpl(
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationDtoDto>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1NotificationsGetResponseDtoImpl
    implements _ApiV1NotificationsGetResponseDto {
  _$ApiV1NotificationsGetResponseDtoImpl(
      {@JsonKey(name: 'notifications')
      final List<NotificationDtoDto>? notifications,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'pageSize') this.pageSize,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'unreadCount') this.unreadCount,
      @JsonKey(name: 'hasMore') this.hasMore})
      : _notifications = notifications;

  factory _$ApiV1NotificationsGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1NotificationsGetResponseDtoImplFromJson(json);

  final List<NotificationDtoDto>? _notifications;
  @override
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications {
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

  @override
  String toString() {
    return 'ApiV1NotificationsGetResponseDto(notifications: $notifications, page: $page, pageSize: $pageSize, totalCount: $totalCount, unreadCount: $unreadCount, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1NotificationsGetResponseDtoImpl &&
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

  /// Create a copy of ApiV1NotificationsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1NotificationsGetResponseDtoImplCopyWith<
          _$ApiV1NotificationsGetResponseDtoImpl>
      get copyWith => __$$ApiV1NotificationsGetResponseDtoImplCopyWithImpl<
          _$ApiV1NotificationsGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1NotificationsGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1NotificationsGetResponseDto
    implements ApiV1NotificationsGetResponseDto {
  factory _ApiV1NotificationsGetResponseDto(
          {@JsonKey(name: 'notifications')
          final List<NotificationDtoDto>? notifications,
          @JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'pageSize') final int? pageSize,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'unreadCount') final int? unreadCount,
          @JsonKey(name: 'hasMore') final bool? hasMore}) =
      _$ApiV1NotificationsGetResponseDtoImpl;

  factory _ApiV1NotificationsGetResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1NotificationsGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'notifications')
  List<NotificationDtoDto>? get notifications;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'pageSize')
  int? get pageSize;
  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;
  @override
  @JsonKey(name: 'hasMore')
  bool? get hasMore;

  /// Create a copy of ApiV1NotificationsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1NotificationsGetResponseDtoImplCopyWith<
          _$ApiV1NotificationsGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1NotificationsPostResponseDto _$ApiV1NotificationsPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1NotificationsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1NotificationsPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int? get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead')
  bool? get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceUser')
  UserDetailDto2Dto? get sourceUser => throw _privateConstructorUsedError;

  /// Serializes this ApiV1NotificationsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1NotificationsPostResponseDtoCopyWith<ApiV1NotificationsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1NotificationsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1NotificationsPostResponseDtoCopyWith(
          ApiV1NotificationsPostResponseDto value,
          $Res Function(ApiV1NotificationsPostResponseDto) then) =
      _$ApiV1NotificationsPostResponseDtoCopyWithImpl<$Res,
          ApiV1NotificationsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'notificationType') int? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser});

  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class _$ApiV1NotificationsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1NotificationsPostResponseDto>
    implements $ApiV1NotificationsPostResponseDtoCopyWith<$Res> {
  _$ApiV1NotificationsPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      sourceUser: freezed == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto2Dto?,
    ) as $Val);
  }

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser {
    if (_value.sourceUser == null) {
      return null;
    }

    return $UserDetailDto2DtoCopyWith<$Res>(_value.sourceUser!, (value) {
      return _then(_value.copyWith(sourceUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1NotificationsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1NotificationsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1NotificationsPostResponseDtoImplCopyWith(
          _$ApiV1NotificationsPostResponseDtoImpl value,
          $Res Function(_$ApiV1NotificationsPostResponseDtoImpl) then) =
      __$$ApiV1NotificationsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'notificationType') int? notificationType,
      @JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser});

  @override
  $UserDetailDto2DtoCopyWith<$Res>? get sourceUser;
}

/// @nodoc
class __$$ApiV1NotificationsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1NotificationsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1NotificationsPostResponseDtoImpl>
    implements _$$ApiV1NotificationsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1NotificationsPostResponseDtoImplCopyWithImpl(
      _$ApiV1NotificationsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1NotificationsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? notificationType = freezed,
    Object? isRead = freezed,
    Object? createdDate = freezed,
    Object? data = freezed,
    Object? priority = freezed,
    Object? relatedEntityId = freezed,
    Object? sourceUser = freezed,
  }) {
    return _then(_$ApiV1NotificationsPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      sourceUser: freezed == sourceUser
          ? _value.sourceUser
          : sourceUser // ignore: cast_nullable_to_non_nullable
              as UserDetailDto2Dto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1NotificationsPostResponseDtoImpl
    implements _ApiV1NotificationsPostResponseDto {
  _$ApiV1NotificationsPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'notificationType') this.notificationType,
      @JsonKey(name: 'isRead') this.isRead,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'sourceUser') this.sourceUser})
      : _data = data;

  factory _$ApiV1NotificationsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1NotificationsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'notificationType')
  final int? notificationType;
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
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
  @override
  @JsonKey(name: 'sourceUser')
  final UserDetailDto2Dto? sourceUser;

  @override
  String toString() {
    return 'ApiV1NotificationsPostResponseDto(id: $id, title: $title, body: $body, notificationType: $notificationType, isRead: $isRead, createdDate: $createdDate, data: $data, priority: $priority, relatedEntityId: $relatedEntityId, sourceUser: $sourceUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1NotificationsPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1NotificationsPostResponseDtoImplCopyWith<
          _$ApiV1NotificationsPostResponseDtoImpl>
      get copyWith => __$$ApiV1NotificationsPostResponseDtoImplCopyWithImpl<
          _$ApiV1NotificationsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1NotificationsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1NotificationsPostResponseDto
    implements ApiV1NotificationsPostResponseDto {
  factory _ApiV1NotificationsPostResponseDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'body') final String? body,
          @JsonKey(name: 'notificationType') final int? notificationType,
          @JsonKey(name: 'isRead') final bool? isRead,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'data') final Map<String, String>? data,
          @JsonKey(name: 'priority') final int? priority,
          @JsonKey(name: 'relatedEntityId')
          @ApiUuidJsonConverter()
          final ApiUuid? relatedEntityId,
          @JsonKey(name: 'sourceUser') final UserDetailDto2Dto? sourceUser}) =
      _$ApiV1NotificationsPostResponseDtoImpl;

  factory _ApiV1NotificationsPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1NotificationsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'notificationType')
  int? get notificationType;
  @override
  @JsonKey(name: 'isRead')
  bool? get isRead;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'sourceUser')
  UserDetailDto2Dto? get sourceUser;

  /// Create a copy of ApiV1NotificationsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1NotificationsPostResponseDtoImplCopyWith<
          _$ApiV1NotificationsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1NotificationsPostRequestDto _$ApiV1NotificationsPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1NotificationsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1NotificationsPostRequestDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetUserId')
  String? get targetUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduledFor')
  DateTime? get scheduledFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;

  /// Serializes this ApiV1NotificationsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1NotificationsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1NotificationsPostRequestDtoCopyWith<ApiV1NotificationsPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1NotificationsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1NotificationsPostRequestDtoCopyWith(
          ApiV1NotificationsPostRequestDto value,
          $Res Function(ApiV1NotificationsPostRequestDto) then) =
      _$ApiV1NotificationsPostRequestDtoCopyWithImpl<$Res,
          ApiV1NotificationsPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'targetUserId') String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class _$ApiV1NotificationsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1NotificationsPostRequestDto>
    implements $ApiV1NotificationsPostRequestDtoCopyWith<$Res> {
  _$ApiV1NotificationsPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1NotificationsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? targetUserId = freezed,
    Object? relatedEntityId = freezed,
    Object? scheduledFor = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1NotificationsPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1NotificationsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1NotificationsPostRequestDtoImplCopyWith(
          _$ApiV1NotificationsPostRequestDtoImpl value,
          $Res Function(_$ApiV1NotificationsPostRequestDtoImpl) then) =
      __$$ApiV1NotificationsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'targetUserId') String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class __$$ApiV1NotificationsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1NotificationsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1NotificationsPostRequestDtoImpl>
    implements _$$ApiV1NotificationsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1NotificationsPostRequestDtoImplCopyWithImpl(
      _$ApiV1NotificationsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1NotificationsPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1NotificationsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? targetUserId = freezed,
    Object? relatedEntityId = freezed,
    Object? scheduledFor = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$ApiV1NotificationsPostRequestDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      scheduledFor: freezed == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1NotificationsPostRequestDtoImpl
    implements _ApiV1NotificationsPostRequestDto {
  _$ApiV1NotificationsPostRequestDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'notificationType') required this.notificationType,
      @JsonKey(name: 'targetUserId') this.targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'scheduledFor') this.scheduledFor,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority})
      : _data = data;

  factory _$ApiV1NotificationsPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1NotificationsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'notificationType')
  final int notificationType;
  @override
  @JsonKey(name: 'targetUserId')
  final String? targetUserId;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
  @override
  @JsonKey(name: 'scheduledFor')
  final DateTime? scheduledFor;
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
  String toString() {
    return 'ApiV1NotificationsPostRequestDto(title: $title, body: $body, notificationType: $notificationType, targetUserId: $targetUserId, relatedEntityId: $relatedEntityId, scheduledFor: $scheduledFor, data: $data, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1NotificationsPostRequestDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
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
      notificationType,
      targetUserId,
      relatedEntityId,
      scheduledFor,
      const DeepCollectionEquality().hash(_data),
      priority);

  /// Create a copy of ApiV1NotificationsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1NotificationsPostRequestDtoImplCopyWith<
          _$ApiV1NotificationsPostRequestDtoImpl>
      get copyWith => __$$ApiV1NotificationsPostRequestDtoImplCopyWithImpl<
          _$ApiV1NotificationsPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1NotificationsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1NotificationsPostRequestDto
    implements ApiV1NotificationsPostRequestDto {
  factory _ApiV1NotificationsPostRequestDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'body') required final String body,
      @JsonKey(name: 'notificationType') required final int notificationType,
      @JsonKey(name: 'targetUserId') final String? targetUserId,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      final ApiUuid? relatedEntityId,
      @JsonKey(name: 'scheduledFor') final DateTime? scheduledFor,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority')
      final int? priority}) = _$ApiV1NotificationsPostRequestDtoImpl;

  factory _ApiV1NotificationsPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1NotificationsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'notificationType')
  int get notificationType;
  @override
  @JsonKey(name: 'targetUserId')
  String? get targetUserId;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'scheduledFor')
  DateTime? get scheduledFor;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;

  /// Create a copy of ApiV1NotificationsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1NotificationsPostRequestDtoImplCopyWith<
          _$ApiV1NotificationsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1NotificationsBulkPostRequestDto
    _$ApiV1NotificationsBulkPostRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1NotificationsBulkPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1NotificationsBulkPostRequestDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationType')
  int get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIds')
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, String>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int? get priority => throw _privateConstructorUsedError;

  /// Serializes this ApiV1NotificationsBulkPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1NotificationsBulkPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1NotificationsBulkPostRequestDtoCopyWith<
          ApiV1NotificationsBulkPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1NotificationsBulkPostRequestDtoCopyWith<$Res> {
  factory $ApiV1NotificationsBulkPostRequestDtoCopyWith(
          ApiV1NotificationsBulkPostRequestDto value,
          $Res Function(ApiV1NotificationsBulkPostRequestDto) then) =
      _$ApiV1NotificationsBulkPostRequestDtoCopyWithImpl<$Res,
          ApiV1NotificationsBulkPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'userIds') List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class _$ApiV1NotificationsBulkPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1NotificationsBulkPostRequestDto>
    implements $ApiV1NotificationsBulkPostRequestDtoCopyWith<$Res> {
  _$ApiV1NotificationsBulkPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1NotificationsBulkPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? userIds = null,
    Object? relatedEntityId = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1NotificationsBulkPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1NotificationsBulkPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1NotificationsBulkPostRequestDtoImplCopyWith(
          _$ApiV1NotificationsBulkPostRequestDtoImpl value,
          $Res Function(_$ApiV1NotificationsBulkPostRequestDtoImpl) then) =
      __$$ApiV1NotificationsBulkPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'notificationType') int notificationType,
      @JsonKey(name: 'userIds') List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') Map<String, String>? data,
      @JsonKey(name: 'priority') int? priority});
}

/// @nodoc
class __$$ApiV1NotificationsBulkPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1NotificationsBulkPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1NotificationsBulkPostRequestDtoImpl>
    implements _$$ApiV1NotificationsBulkPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1NotificationsBulkPostRequestDtoImplCopyWithImpl(
      _$ApiV1NotificationsBulkPostRequestDtoImpl _value,
      $Res Function(_$ApiV1NotificationsBulkPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1NotificationsBulkPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? notificationType = null,
    Object? userIds = null,
    Object? relatedEntityId = freezed,
    Object? data = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$ApiV1NotificationsBulkPostRequestDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relatedEntityId: freezed == relatedEntityId
          ? _value.relatedEntityId
          : relatedEntityId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1NotificationsBulkPostRequestDtoImpl
    implements _ApiV1NotificationsBulkPostRequestDto {
  _$ApiV1NotificationsBulkPostRequestDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'notificationType') required this.notificationType,
      @JsonKey(name: 'userIds') required final List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      this.relatedEntityId,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority') this.priority})
      : _userIds = userIds,
        _data = data;

  factory _$ApiV1NotificationsBulkPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1NotificationsBulkPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'notificationType')
  final int notificationType;
  final List<String> _userIds;
  @override
  @JsonKey(name: 'userIds')
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  final ApiUuid? relatedEntityId;
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
  String toString() {
    return 'ApiV1NotificationsBulkPostRequestDto(title: $title, body: $body, notificationType: $notificationType, userIds: $userIds, relatedEntityId: $relatedEntityId, data: $data, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1NotificationsBulkPostRequestDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.relatedEntityId, relatedEntityId) ||
                other.relatedEntityId == relatedEntityId) &&
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
      notificationType,
      const DeepCollectionEquality().hash(_userIds),
      relatedEntityId,
      const DeepCollectionEquality().hash(_data),
      priority);

  /// Create a copy of ApiV1NotificationsBulkPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1NotificationsBulkPostRequestDtoImplCopyWith<
          _$ApiV1NotificationsBulkPostRequestDtoImpl>
      get copyWith => __$$ApiV1NotificationsBulkPostRequestDtoImplCopyWithImpl<
          _$ApiV1NotificationsBulkPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1NotificationsBulkPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1NotificationsBulkPostRequestDto
    implements ApiV1NotificationsBulkPostRequestDto {
  factory _ApiV1NotificationsBulkPostRequestDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'body') required final String body,
      @JsonKey(name: 'notificationType') required final int notificationType,
      @JsonKey(name: 'userIds') required final List<String> userIds,
      @JsonKey(name: 'relatedEntityId')
      @ApiUuidJsonConverter()
      final ApiUuid? relatedEntityId,
      @JsonKey(name: 'data') final Map<String, String>? data,
      @JsonKey(name: 'priority')
      final int? priority}) = _$ApiV1NotificationsBulkPostRequestDtoImpl;

  factory _ApiV1NotificationsBulkPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1NotificationsBulkPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'notificationType')
  int get notificationType;
  @override
  @JsonKey(name: 'userIds')
  List<String> get userIds;
  @override
  @JsonKey(name: 'relatedEntityId')
  @ApiUuidJsonConverter()
  ApiUuid? get relatedEntityId;
  @override
  @JsonKey(name: 'data')
  Map<String, String>? get data;
  @override
  @JsonKey(name: 'priority')
  int? get priority;

  /// Create a copy of ApiV1NotificationsBulkPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1NotificationsBulkPostRequestDtoImplCopyWith<
          _$ApiV1NotificationsBulkPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1MediaUploadsPostResponseDto _$ApiV1MediaUploadsPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1MediaUploadsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1MediaUploadsPostResponseDto {
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'headers')
  Map<String, String>? get headers => throw _privateConstructorUsedError;

  /// Serializes this ApiV1MediaUploadsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1MediaUploadsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1MediaUploadsPostResponseDtoCopyWith<ApiV1MediaUploadsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1MediaUploadsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1MediaUploadsPostResponseDtoCopyWith(
          ApiV1MediaUploadsPostResponseDto value,
          $Res Function(ApiV1MediaUploadsPostResponseDto) then) =
      _$ApiV1MediaUploadsPostResponseDtoCopyWithImpl<$Res,
          ApiV1MediaUploadsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class _$ApiV1MediaUploadsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1MediaUploadsPostResponseDto>
    implements $ApiV1MediaUploadsPostResponseDtoCopyWith<$Res> {
  _$ApiV1MediaUploadsPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1MediaUploadsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1MediaUploadsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1MediaUploadsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1MediaUploadsPostResponseDtoImplCopyWith(
          _$ApiV1MediaUploadsPostResponseDtoImpl value,
          $Res Function(_$ApiV1MediaUploadsPostResponseDtoImpl) then) =
      __$$ApiV1MediaUploadsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadUrl') String? uploadUrl,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'expiresAt') DateTime? expiresAt,
      @JsonKey(name: 'headers') Map<String, String>? headers});
}

/// @nodoc
class __$$ApiV1MediaUploadsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1MediaUploadsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1MediaUploadsPostResponseDtoImpl>
    implements _$$ApiV1MediaUploadsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1MediaUploadsPostResponseDtoImplCopyWithImpl(
      _$ApiV1MediaUploadsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1MediaUploadsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1MediaUploadsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadUrl = freezed,
    Object? fileUrl = freezed,
    Object? fileName = freezed,
    Object? expiresAt = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$ApiV1MediaUploadsPostResponseDtoImpl(
      uploadUrl: freezed == uploadUrl
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1MediaUploadsPostResponseDtoImpl
    implements _ApiV1MediaUploadsPostResponseDto {
  _$ApiV1MediaUploadsPostResponseDtoImpl(
      {@JsonKey(name: 'uploadUrl') this.uploadUrl,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'expiresAt') this.expiresAt,
      @JsonKey(name: 'headers') final Map<String, String>? headers})
      : _headers = headers;

  factory _$ApiV1MediaUploadsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1MediaUploadsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'uploadUrl')
  final String? uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'expiresAt')
  final DateTime? expiresAt;
  final Map<String, String>? _headers;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiV1MediaUploadsPostResponseDto(uploadUrl: $uploadUrl, fileUrl: $fileUrl, fileName: $fileName, expiresAt: $expiresAt, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1MediaUploadsPostResponseDtoImpl &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uploadUrl, fileUrl, fileName,
      expiresAt, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of ApiV1MediaUploadsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1MediaUploadsPostResponseDtoImplCopyWith<
          _$ApiV1MediaUploadsPostResponseDtoImpl>
      get copyWith => __$$ApiV1MediaUploadsPostResponseDtoImplCopyWithImpl<
          _$ApiV1MediaUploadsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1MediaUploadsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1MediaUploadsPostResponseDto
    implements ApiV1MediaUploadsPostResponseDto {
  factory _ApiV1MediaUploadsPostResponseDto(
          {@JsonKey(name: 'uploadUrl') final String? uploadUrl,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'expiresAt') final DateTime? expiresAt,
          @JsonKey(name: 'headers') final Map<String, String>? headers}) =
      _$ApiV1MediaUploadsPostResponseDtoImpl;

  factory _ApiV1MediaUploadsPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1MediaUploadsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'uploadUrl')
  String? get uploadUrl;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'expiresAt')
  DateTime? get expiresAt;
  @override
  @JsonKey(name: 'headers')
  Map<String, String>? get headers;

  /// Create a copy of ApiV1MediaUploadsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1MediaUploadsPostResponseDtoImplCopyWith<
          _$ApiV1MediaUploadsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1MediaImagesPostResponseDto _$ApiV1MediaImagesPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1MediaImagesPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1MediaImagesPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalUrl')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isImage')
  bool? get isImage => throw _privateConstructorUsedError;

  /// Serializes this ApiV1MediaImagesPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1MediaImagesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1MediaImagesPostResponseDtoCopyWith<ApiV1MediaImagesPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1MediaImagesPostResponseDtoCopyWith<$Res> {
  factory $ApiV1MediaImagesPostResponseDtoCopyWith(
          ApiV1MediaImagesPostResponseDto value,
          $Res Function(ApiV1MediaImagesPostResponseDto) then) =
      _$ApiV1MediaImagesPostResponseDtoCopyWithImpl<$Res,
          ApiV1MediaImagesPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$ApiV1MediaImagesPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1MediaImagesPostResponseDto>
    implements $ApiV1MediaImagesPostResponseDtoCopyWith<$Res> {
  _$ApiV1MediaImagesPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1MediaImagesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1MediaImagesPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1MediaImagesPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1MediaImagesPostResponseDtoImplCopyWith(
          _$ApiV1MediaImagesPostResponseDtoImpl value,
          $Res Function(_$ApiV1MediaImagesPostResponseDtoImpl) then) =
      __$$ApiV1MediaImagesPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$$ApiV1MediaImagesPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1MediaImagesPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1MediaImagesPostResponseDtoImpl>
    implements _$$ApiV1MediaImagesPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1MediaImagesPostResponseDtoImplCopyWithImpl(
      _$ApiV1MediaImagesPostResponseDtoImpl _value,
      $Res Function(_$ApiV1MediaImagesPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1MediaImagesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_$ApiV1MediaImagesPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1MediaImagesPostResponseDtoImpl
    implements _ApiV1MediaImagesPostResponseDto {
  _$ApiV1MediaImagesPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'originalUrl') this.originalUrl,
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

  factory _$ApiV1MediaImagesPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1MediaImagesPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String? originalUrl;
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
  final int? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  @override
  String toString() {
    return 'ApiV1MediaImagesPostResponseDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1MediaImagesPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1MediaImagesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1MediaImagesPostResponseDtoImplCopyWith<
          _$ApiV1MediaImagesPostResponseDtoImpl>
      get copyWith => __$$ApiV1MediaImagesPostResponseDtoImplCopyWithImpl<
          _$ApiV1MediaImagesPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1MediaImagesPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1MediaImagesPostResponseDto
    implements ApiV1MediaImagesPostResponseDto {
  factory _ApiV1MediaImagesPostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'originalUrl') final String? originalUrl,
      @JsonKey(name: 'largeUrl') final String? largeUrl,
      @JsonKey(name: 'mediumUrl') final String? mediumUrl,
      @JsonKey(name: 'smallUrl') final String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') final String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') final String? bunnyVideoId,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'duration') final num? duration,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'isVideo') final bool? isVideo,
      @JsonKey(name: 'isImage')
      final bool? isImage}) = _$ApiV1MediaImagesPostResponseDtoImpl;

  factory _ApiV1MediaImagesPostResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1MediaImagesPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  String? get originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'duration')
  num? get duration;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of ApiV1MediaImagesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1MediaImagesPostResponseDtoImplCopyWith<
          _$ApiV1MediaImagesPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1MediaImagesPostRequestDto _$ApiV1MediaImagesPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1MediaImagesPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1MediaImagesPostRequestDto {
  @JsonKey(name: 'fileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentType')
  String? get contentType => throw _privateConstructorUsedError;

  /// Serializes this ApiV1MediaImagesPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1MediaImagesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1MediaImagesPostRequestDtoCopyWith<ApiV1MediaImagesPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1MediaImagesPostRequestDtoCopyWith<$Res> {
  factory $ApiV1MediaImagesPostRequestDtoCopyWith(
          ApiV1MediaImagesPostRequestDto value,
          $Res Function(ApiV1MediaImagesPostRequestDto) then) =
      _$ApiV1MediaImagesPostRequestDtoCopyWithImpl<$Res,
          ApiV1MediaImagesPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class _$ApiV1MediaImagesPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1MediaImagesPostRequestDto>
    implements $ApiV1MediaImagesPostRequestDtoCopyWith<$Res> {
  _$ApiV1MediaImagesPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1MediaImagesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1MediaImagesPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1MediaImagesPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1MediaImagesPostRequestDtoImplCopyWith(
          _$ApiV1MediaImagesPostRequestDtoImpl value,
          $Res Function(_$ApiV1MediaImagesPostRequestDtoImpl) then) =
      __$$ApiV1MediaImagesPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fileName') String? fileName,
      @JsonKey(name: 'fileUrl') String? fileUrl,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType});
}

/// @nodoc
class __$$ApiV1MediaImagesPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1MediaImagesPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1MediaImagesPostRequestDtoImpl>
    implements _$$ApiV1MediaImagesPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1MediaImagesPostRequestDtoImplCopyWithImpl(
      _$ApiV1MediaImagesPostRequestDtoImpl _value,
      $Res Function(_$ApiV1MediaImagesPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1MediaImagesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$ApiV1MediaImagesPostRequestDtoImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1MediaImagesPostRequestDtoImpl
    implements _ApiV1MediaImagesPostRequestDto {
  _$ApiV1MediaImagesPostRequestDtoImpl(
      {@JsonKey(name: 'fileName') this.fileName,
      @JsonKey(name: 'fileUrl') this.fileUrl,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'contentType') this.contentType});

  factory _$ApiV1MediaImagesPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1MediaImagesPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'fileName')
  final String? fileName;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
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
  @JsonKey(name: 'contentType')
  final String? contentType;

  @override
  String toString() {
    return 'ApiV1MediaImagesPostRequestDto(fileName: $fileName, fileUrl: $fileUrl, width: $width, height: $height, size: $size, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1MediaImagesPostRequestDtoImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, fileUrl, width, height, size, contentType);

  /// Create a copy of ApiV1MediaImagesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1MediaImagesPostRequestDtoImplCopyWith<
          _$ApiV1MediaImagesPostRequestDtoImpl>
      get copyWith => __$$ApiV1MediaImagesPostRequestDtoImplCopyWithImpl<
          _$ApiV1MediaImagesPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1MediaImagesPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1MediaImagesPostRequestDto
    implements ApiV1MediaImagesPostRequestDto {
  factory _ApiV1MediaImagesPostRequestDto(
          {@JsonKey(name: 'fileName') final String? fileName,
          @JsonKey(name: 'fileUrl') final String? fileUrl,
          @JsonKey(name: 'width') final int? width,
          @JsonKey(name: 'height') final int? height,
          @JsonKey(name: 'size') final int? size,
          @JsonKey(name: 'contentType') final String? contentType}) =
      _$ApiV1MediaImagesPostRequestDtoImpl;

  factory _ApiV1MediaImagesPostRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1MediaImagesPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'fileName')
  String? get fileName;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'contentType')
  String? get contentType;

  /// Create a copy of ApiV1MediaImagesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1MediaImagesPostRequestDtoImplCopyWith<
          _$ApiV1MediaImagesPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1MediaVideosPostResponseDto _$ApiV1MediaVideosPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1MediaVideosPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1MediaVideosPostResponseDto {
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'libraryId')
  int? get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionId')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1MediaVideosPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1MediaVideosPostResponseDtoCopyWith<ApiV1MediaVideosPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1MediaVideosPostResponseDtoCopyWith<$Res> {
  factory $ApiV1MediaVideosPostResponseDtoCopyWith(
          ApiV1MediaVideosPostResponseDto value,
          $Res Function(ApiV1MediaVideosPostResponseDto) then) =
      _$ApiV1MediaVideosPostResponseDtoCopyWithImpl<$Res,
          ApiV1MediaVideosPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class _$ApiV1MediaVideosPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1MediaVideosPostResponseDto>
    implements $ApiV1MediaVideosPostResponseDtoCopyWith<$Res> {
  _$ApiV1MediaVideosPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ) as $Val);
  }

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StepMediaDtoDtoCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $StepMediaDtoDtoCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1MediaVideosPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1MediaVideosPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1MediaVideosPostResponseDtoImplCopyWith(
          _$ApiV1MediaVideosPostResponseDtoImpl value,
          $Res Function(_$ApiV1MediaVideosPostResponseDtoImpl) then) =
      __$$ApiV1MediaVideosPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationSignature') String? authorizationSignature,
      @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'libraryId') int? libraryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'collectionId') String? collectionId,
      @JsonKey(name: 'media') StepMediaDtoDto? media});

  @override
  $StepMediaDtoDtoCopyWith<$Res>? get media;
}

/// @nodoc
class __$$ApiV1MediaVideosPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1MediaVideosPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1MediaVideosPostResponseDtoImpl>
    implements _$$ApiV1MediaVideosPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1MediaVideosPostResponseDtoImplCopyWithImpl(
      _$ApiV1MediaVideosPostResponseDtoImpl _value,
      $Res Function(_$ApiV1MediaVideosPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationSignature = freezed,
    Object? authorizationExpire = freezed,
    Object? videoGuid = freezed,
    Object? libraryId = freezed,
    Object? title = freezed,
    Object? collectionId = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1MediaVideosPostResponseDtoImpl(
      authorizationSignature: freezed == authorizationSignature
          ? _value.authorizationSignature
          : authorizationSignature // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationExpire: freezed == authorizationExpire
          ? _value.authorizationExpire
          : authorizationExpire // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as StepMediaDtoDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1MediaVideosPostResponseDtoImpl
    implements _ApiV1MediaVideosPostResponseDto {
  _$ApiV1MediaVideosPostResponseDtoImpl(
      {@JsonKey(name: 'authorizationSignature') this.authorizationSignature,
      @JsonKey(name: 'authorizationExpire') this.authorizationExpire,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() this.videoGuid,
      @JsonKey(name: 'libraryId') this.libraryId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'collectionId') this.collectionId,
      @JsonKey(name: 'media') this.media});

  factory _$ApiV1MediaVideosPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1MediaVideosPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'authorizationSignature')
  final String? authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  final int? authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  final ApiUuid? videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  final int? libraryId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'collectionId')
  final String? collectionId;
  @override
  @JsonKey(name: 'media')
  final StepMediaDtoDto? media;

  @override
  String toString() {
    return 'ApiV1MediaVideosPostResponseDto(authorizationSignature: $authorizationSignature, authorizationExpire: $authorizationExpire, videoGuid: $videoGuid, libraryId: $libraryId, title: $title, collectionId: $collectionId, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1MediaVideosPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1MediaVideosPostResponseDtoImplCopyWith<
          _$ApiV1MediaVideosPostResponseDtoImpl>
      get copyWith => __$$ApiV1MediaVideosPostResponseDtoImplCopyWithImpl<
          _$ApiV1MediaVideosPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1MediaVideosPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1MediaVideosPostResponseDto
    implements ApiV1MediaVideosPostResponseDto {
  factory _ApiV1MediaVideosPostResponseDto(
          {@JsonKey(name: 'authorizationSignature')
          final String? authorizationSignature,
          @JsonKey(name: 'authorizationExpire') final int? authorizationExpire,
          @JsonKey(name: 'videoGuid')
          @ApiUuidJsonConverter()
          final ApiUuid? videoGuid,
          @JsonKey(name: 'libraryId') final int? libraryId,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'collectionId') final String? collectionId,
          @JsonKey(name: 'media') final StepMediaDtoDto? media}) =
      _$ApiV1MediaVideosPostResponseDtoImpl;

  factory _ApiV1MediaVideosPostResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1MediaVideosPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'authorizationSignature')
  String? get authorizationSignature;
  @override
  @JsonKey(name: 'authorizationExpire')
  int? get authorizationExpire;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid;
  @override
  @JsonKey(name: 'libraryId')
  int? get libraryId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'collectionId')
  String? get collectionId;
  @override
  @JsonKey(name: 'media')
  StepMediaDtoDto? get media;

  /// Create a copy of ApiV1MediaVideosPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1MediaVideosPostResponseDtoImplCopyWith<
          _$ApiV1MediaVideosPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1MediaMediaIdGetResponseDto _$ApiV1MediaMediaIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1MediaMediaIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1MediaMediaIdGetResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediaType')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalUrl')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeUrl')
  String? get largeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallUrl')
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isImage')
  bool? get isImage => throw _privateConstructorUsedError;

  /// Serializes this ApiV1MediaMediaIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1MediaMediaIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1MediaMediaIdGetResponseDtoCopyWith<ApiV1MediaMediaIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1MediaMediaIdGetResponseDtoCopyWith<$Res> {
  factory $ApiV1MediaMediaIdGetResponseDtoCopyWith(
          ApiV1MediaMediaIdGetResponseDto value,
          $Res Function(ApiV1MediaMediaIdGetResponseDto) then) =
      _$ApiV1MediaMediaIdGetResponseDtoCopyWithImpl<$Res,
          ApiV1MediaMediaIdGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class _$ApiV1MediaMediaIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1MediaMediaIdGetResponseDto>
    implements $ApiV1MediaMediaIdGetResponseDtoCopyWith<$Res> {
  _$ApiV1MediaMediaIdGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1MediaMediaIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1MediaMediaIdGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1MediaMediaIdGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1MediaMediaIdGetResponseDtoImplCopyWith(
          _$ApiV1MediaMediaIdGetResponseDtoImpl value,
          $Res Function(_$ApiV1MediaMediaIdGetResponseDtoImpl) then) =
      __$$ApiV1MediaMediaIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'mediaType') String? mediaType,
      @JsonKey(name: 'originalUrl') String? originalUrl,
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
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'isImage') bool? isImage});
}

/// @nodoc
class __$$ApiV1MediaMediaIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1MediaMediaIdGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1MediaMediaIdGetResponseDtoImpl>
    implements _$$ApiV1MediaMediaIdGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1MediaMediaIdGetResponseDtoImplCopyWithImpl(
      _$ApiV1MediaMediaIdGetResponseDtoImpl _value,
      $Res Function(_$ApiV1MediaMediaIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1MediaMediaIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? stepId = freezed,
    Object? mediaType = freezed,
    Object? originalUrl = freezed,
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
    return _then(_$ApiV1MediaMediaIdGetResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeUrl: freezed == largeUrl
          ? _value.largeUrl
          : largeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailUrl: freezed == videoThumbnailUrl
          ? _value.videoThumbnailUrl
          : videoThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyVideoId: freezed == bunnyVideoId
          ? _value.bunnyVideoId
          : bunnyVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1MediaMediaIdGetResponseDtoImpl
    implements _ApiV1MediaMediaIdGetResponseDto {
  _$ApiV1MediaMediaIdGetResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'mediaType') this.mediaType,
      @JsonKey(name: 'originalUrl') this.originalUrl,
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

  factory _$ApiV1MediaMediaIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1MediaMediaIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'mediaType')
  final String? mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  final String? originalUrl;
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
  final int? status;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'isImage')
  final bool? isImage;

  @override
  String toString() {
    return 'ApiV1MediaMediaIdGetResponseDto(id: $id, stepId: $stepId, mediaType: $mediaType, originalUrl: $originalUrl, largeUrl: $largeUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnailUrl: $thumbnailUrl, videoThumbnailUrl: $videoThumbnailUrl, bunnyVideoId: $bunnyVideoId, width: $width, height: $height, size: $size, duration: $duration, status: $status, isVideo: $isVideo, isImage: $isImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1MediaMediaIdGetResponseDtoImpl &&
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

  /// Create a copy of ApiV1MediaMediaIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1MediaMediaIdGetResponseDtoImplCopyWith<
          _$ApiV1MediaMediaIdGetResponseDtoImpl>
      get copyWith => __$$ApiV1MediaMediaIdGetResponseDtoImplCopyWithImpl<
          _$ApiV1MediaMediaIdGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1MediaMediaIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1MediaMediaIdGetResponseDto
    implements ApiV1MediaMediaIdGetResponseDto {
  factory _ApiV1MediaMediaIdGetResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'mediaType') final String? mediaType,
      @JsonKey(name: 'originalUrl') final String? originalUrl,
      @JsonKey(name: 'largeUrl') final String? largeUrl,
      @JsonKey(name: 'mediumUrl') final String? mediumUrl,
      @JsonKey(name: 'smallUrl') final String? smallUrl,
      @JsonKey(name: 'thumbnailUrl') final String? thumbnailUrl,
      @JsonKey(name: 'videoThumbnailUrl') final String? videoThumbnailUrl,
      @JsonKey(name: 'bunnyVideoId') final String? bunnyVideoId,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'duration') final num? duration,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'isVideo') final bool? isVideo,
      @JsonKey(name: 'isImage')
      final bool? isImage}) = _$ApiV1MediaMediaIdGetResponseDtoImpl;

  factory _ApiV1MediaMediaIdGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1MediaMediaIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'mediaType')
  String? get mediaType;
  @override
  @JsonKey(name: 'originalUrl')
  String? get originalUrl;
  @override
  @JsonKey(name: 'largeUrl')
  String? get largeUrl;
  @override
  @JsonKey(name: 'mediumUrl')
  String? get mediumUrl;
  @override
  @JsonKey(name: 'smallUrl')
  String? get smallUrl;
  @override
  @JsonKey(name: 'thumbnailUrl')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'videoThumbnailUrl')
  String? get videoThumbnailUrl;
  @override
  @JsonKey(name: 'bunnyVideoId')
  String? get bunnyVideoId;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'duration')
  num? get duration;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'isImage')
  bool? get isImage;

  /// Create a copy of ApiV1MediaMediaIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1MediaMediaIdGetResponseDtoImplCopyWith<
          _$ApiV1MediaMediaIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1WebhooksVideoUpdatesPostRequestDto
    _$ApiV1WebhooksVideoUpdatesPostRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1WebhooksVideoUpdatesPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1WebhooksVideoUpdatesPostRequestDto {
  @JsonKey(name: 'videoLibraryId')
  int? get videoLibraryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  /// Serializes this ApiV1WebhooksVideoUpdatesPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1WebhooksVideoUpdatesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWith<
          ApiV1WebhooksVideoUpdatesPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWith<$Res> {
  factory $ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWith(
          ApiV1WebhooksVideoUpdatesPostRequestDto value,
          $Res Function(ApiV1WebhooksVideoUpdatesPostRequestDto) then) =
      _$ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWithImpl<$Res,
          ApiV1WebhooksVideoUpdatesPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1WebhooksVideoUpdatesPostRequestDto>
    implements $ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWith<$Res> {
  _$ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1WebhooksVideoUpdatesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      videoLibraryId: freezed == videoLibraryId
          ? _value.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWith(
          _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl value,
          $Res Function(_$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl) then) =
      __$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'videoLibraryId') int? videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() ApiUuid? videoGuid,
      @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1WebhooksVideoUpdatesPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl>
    implements _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWithImpl(
      _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl _value,
      $Res Function(_$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1WebhooksVideoUpdatesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoLibraryId = freezed,
    Object? videoGuid = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl(
      videoLibraryId: freezed == videoLibraryId
          ? _value.videoLibraryId
          : videoLibraryId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoGuid: freezed == videoGuid
          ? _value.videoGuid
          : videoGuid // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl
    implements _ApiV1WebhooksVideoUpdatesPostRequestDto {
  _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl(
      {@JsonKey(name: 'videoLibraryId') this.videoLibraryId,
      @JsonKey(name: 'videoGuid') @ApiUuidJsonConverter() this.videoGuid,
      @JsonKey(name: 'status') this.status});

  factory _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'videoLibraryId')
  final int? videoLibraryId;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  final ApiUuid? videoGuid;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'ApiV1WebhooksVideoUpdatesPostRequestDto(videoLibraryId: $videoLibraryId, videoGuid: $videoGuid, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl &&
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

  /// Create a copy of ApiV1WebhooksVideoUpdatesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWith<
          _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl>
      get copyWith =>
          __$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWithImpl<
              _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1WebhooksVideoUpdatesPostRequestDto
    implements ApiV1WebhooksVideoUpdatesPostRequestDto {
  factory _ApiV1WebhooksVideoUpdatesPostRequestDto(
          {@JsonKey(name: 'videoLibraryId') final int? videoLibraryId,
          @JsonKey(name: 'videoGuid')
          @ApiUuidJsonConverter()
          final ApiUuid? videoGuid,
          @JsonKey(name: 'status') final int? status}) =
      _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl;

  factory _ApiV1WebhooksVideoUpdatesPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'videoLibraryId')
  int? get videoLibraryId;
  @override
  @JsonKey(name: 'videoGuid')
  @ApiUuidJsonConverter()
  ApiUuid? get videoGuid;
  @override
  @JsonKey(name: 'status')
  int? get status;

  /// Create a copy of ApiV1WebhooksVideoUpdatesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplCopyWith<
          _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysIdGetResponseDto _$ApiV1JourneysIdGetResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1JourneysIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysIdGetResponseDto {
  @JsonKey(name: 'journey')
  JourneyDto2Dto get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepsCount')
  int get stepsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastStepDate')
  DateTime get lastStepDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepperCount')
  int? get stepperCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers => throw _privateConstructorUsedError;
  @JsonKey(name: 'starterCount')
  int? get starterCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'companionCount')
  int? get companionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'celebratorCount')
  int? get celebratorCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators =>
      throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysIdGetResponseDtoCopyWith<ApiV1JourneysIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysIdGetResponseDtoCopyWith<$Res> {
  factory $ApiV1JourneysIdGetResponseDtoCopyWith(
          ApiV1JourneysIdGetResponseDto value,
          $Res Function(ApiV1JourneysIdGetResponseDto) then) =
      _$ApiV1JourneysIdGetResponseDtoCopyWithImpl<$Res,
          ApiV1JourneysIdGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters')
      List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions')
      List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators});

  $JourneyDto2DtoCopyWith<$Res> get journey;
}

/// @nodoc
class _$ApiV1JourneysIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysIdGetResponseDto>
    implements $ApiV1JourneysIdGetResponseDtoCopyWith<$Res> {
  _$ApiV1JourneysIdGetResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysIdGetResponseDto
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
  }) {
    return _then(_value.copyWith(
      journey: null == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto2Dto,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _value.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _value.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _value.latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      starterCount: freezed == starterCount
          ? _value.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _value.latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestStartersDto>?,
      companionCount: freezed == companionCount
          ? _value.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _value.latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCompanionsDto>?,
      celebratorCount: freezed == celebratorCount
          ? _value.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _value.latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCelebratorsDto>?,
    ) as $Val);
  }

  /// Create a copy of ApiV1JourneysIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDto2DtoCopyWith<$Res> get journey {
    return $JourneyDto2DtoCopyWith<$Res>(_value.journey, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysIdGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1JourneysIdGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysIdGetResponseDtoImplCopyWith(
          _$ApiV1JourneysIdGetResponseDtoImpl value,
          $Res Function(_$ApiV1JourneysIdGetResponseDtoImpl) then) =
      __$$ApiV1JourneysIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'journey') JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') int stepsCount,
      @JsonKey(name: 'lastStepDate') DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') int? stepperCount,
      @JsonKey(name: 'latestSteppers') List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') int? starterCount,
      @JsonKey(name: 'latestStarters')
      List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') int? companionCount,
      @JsonKey(name: 'latestCompanions')
      List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators});

  @override
  $JourneyDto2DtoCopyWith<$Res> get journey;
}

/// @nodoc
class __$$ApiV1JourneysIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysIdGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1JourneysIdGetResponseDtoImpl>
    implements _$$ApiV1JourneysIdGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysIdGetResponseDtoImplCopyWithImpl(
      _$ApiV1JourneysIdGetResponseDtoImpl _value,
      $Res Function(_$ApiV1JourneysIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysIdGetResponseDto
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
  }) {
    return _then(_$ApiV1JourneysIdGetResponseDtoImpl(
      journey: null == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDto2Dto,
      stepsCount: null == stepsCount
          ? _value.stepsCount
          : stepsCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastStepDate: null == lastStepDate
          ? _value.lastStepDate
          : lastStepDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepperCount: freezed == stepperCount
          ? _value.stepperCount
          : stepperCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestSteppers: freezed == latestSteppers
          ? _value._latestSteppers
          : latestSteppers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      starterCount: freezed == starterCount
          ? _value.starterCount
          : starterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestStarters: freezed == latestStarters
          ? _value._latestStarters
          : latestStarters // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestStartersDto>?,
      companionCount: freezed == companionCount
          ? _value.companionCount
          : companionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCompanions: freezed == latestCompanions
          ? _value._latestCompanions
          : latestCompanions // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCompanionsDto>?,
      celebratorCount: freezed == celebratorCount
          ? _value.celebratorCount
          : celebratorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestCelebrators: freezed == latestCelebrators
          ? _value._latestCelebrators
          : latestCelebrators // ignore: cast_nullable_to_non_nullable
              as List<JourneyInDetailDtoDtoLatestCelebratorsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysIdGetResponseDtoImpl
    implements _ApiV1JourneysIdGetResponseDto {
  _$ApiV1JourneysIdGetResponseDtoImpl(
      {@JsonKey(name: 'journey') required this.journey,
      @JsonKey(name: 'stepsCount') required this.stepsCount,
      @JsonKey(name: 'lastStepDate') required this.lastStepDate,
      @JsonKey(name: 'stepperCount') this.stepperCount,
      @JsonKey(name: 'latestSteppers') final List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') this.starterCount,
      @JsonKey(name: 'latestStarters')
      final List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') this.companionCount,
      @JsonKey(name: 'latestCompanions')
      final List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') this.celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      final List<JourneyInDetailDtoDtoLatestCelebratorsDto>? latestCelebrators})
      : _latestSteppers = latestSteppers,
        _latestStarters = latestStarters,
        _latestCompanions = latestCompanions,
        _latestCelebrators = latestCelebrators;

  factory _$ApiV1JourneysIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'journey')
  final JourneyDto2Dto journey;
  @override
  @JsonKey(name: 'stepsCount')
  final int stepsCount;
  @override
  @JsonKey(name: 'lastStepDate')
  final DateTime lastStepDate;
  @override
  @JsonKey(name: 'stepperCount')
  final int? stepperCount;
  final List<UserDtoDto>? _latestSteppers;
  @override
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers {
    final value = _latestSteppers;
    if (value == null) return null;
    if (_latestSteppers is EqualUnmodifiableListView) return _latestSteppers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'starterCount')
  final int? starterCount;
  final List<JourneyInDetailDtoDtoLatestStartersDto>? _latestStarters;
  @override
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters {
    final value = _latestStarters;
    if (value == null) return null;
    if (_latestStarters is EqualUnmodifiableListView) return _latestStarters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'companionCount')
  final int? companionCount;
  final List<JourneyInDetailDtoDtoLatestCompanionsDto>? _latestCompanions;
  @override
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions {
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
  final List<JourneyInDetailDtoDtoLatestCelebratorsDto>? _latestCelebrators;
  @override
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators {
    final value = _latestCelebrators;
    if (value == null) return null;
    if (_latestCelebrators is EqualUnmodifiableListView)
      return _latestCelebrators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiV1JourneysIdGetResponseDto(journey: $journey, stepsCount: $stepsCount, lastStepDate: $lastStepDate, stepperCount: $stepperCount, latestSteppers: $latestSteppers, starterCount: $starterCount, latestStarters: $latestStarters, companionCount: $companionCount, latestCompanions: $latestCompanions, celebratorCount: $celebratorCount, latestCelebrators: $latestCelebrators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysIdGetResponseDtoImpl &&
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
                .equals(other._latestCelebrators, _latestCelebrators));
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
      const DeepCollectionEquality().hash(_latestCelebrators));

  /// Create a copy of ApiV1JourneysIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysIdGetResponseDtoImplCopyWith<
          _$ApiV1JourneysIdGetResponseDtoImpl>
      get copyWith => __$$ApiV1JourneysIdGetResponseDtoImplCopyWithImpl<
          _$ApiV1JourneysIdGetResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysIdGetResponseDto
    implements ApiV1JourneysIdGetResponseDto {
  factory _ApiV1JourneysIdGetResponseDto(
      {@JsonKey(name: 'journey') required final JourneyDto2Dto journey,
      @JsonKey(name: 'stepsCount') required final int stepsCount,
      @JsonKey(name: 'lastStepDate') required final DateTime lastStepDate,
      @JsonKey(name: 'stepperCount') final int? stepperCount,
      @JsonKey(name: 'latestSteppers') final List<UserDtoDto>? latestSteppers,
      @JsonKey(name: 'starterCount') final int? starterCount,
      @JsonKey(name: 'latestStarters')
      final List<JourneyInDetailDtoDtoLatestStartersDto>? latestStarters,
      @JsonKey(name: 'companionCount') final int? companionCount,
      @JsonKey(name: 'latestCompanions')
      final List<JourneyInDetailDtoDtoLatestCompanionsDto>? latestCompanions,
      @JsonKey(name: 'celebratorCount') final int? celebratorCount,
      @JsonKey(name: 'latestCelebrators')
      final List<JourneyInDetailDtoDtoLatestCelebratorsDto>?
          latestCelebrators}) = _$ApiV1JourneysIdGetResponseDtoImpl;

  factory _ApiV1JourneysIdGetResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1JourneysIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'journey')
  JourneyDto2Dto get journey;
  @override
  @JsonKey(name: 'stepsCount')
  int get stepsCount;
  @override
  @JsonKey(name: 'lastStepDate')
  DateTime get lastStepDate;
  @override
  @JsonKey(name: 'stepperCount')
  int? get stepperCount;
  @override
  @JsonKey(name: 'latestSteppers')
  List<UserDtoDto>? get latestSteppers;
  @override
  @JsonKey(name: 'starterCount')
  int? get starterCount;
  @override
  @JsonKey(name: 'latestStarters')
  List<JourneyInDetailDtoDtoLatestStartersDto>? get latestStarters;
  @override
  @JsonKey(name: 'companionCount')
  int? get companionCount;
  @override
  @JsonKey(name: 'latestCompanions')
  List<JourneyInDetailDtoDtoLatestCompanionsDto>? get latestCompanions;
  @override
  @JsonKey(name: 'celebratorCount')
  int? get celebratorCount;
  @override
  @JsonKey(name: 'latestCelebrators')
  List<JourneyInDetailDtoDtoLatestCelebratorsDto>? get latestCelebrators;

  /// Create a copy of ApiV1JourneysIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysIdGetResponseDtoImplCopyWith<
          _$ApiV1JourneysIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysIdPutResponseDto _$ApiV1JourneysIdPutResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1JourneysIdPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysIdPutResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysIdPutResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysIdPutResponseDtoCopyWith<ApiV1JourneysIdPutResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysIdPutResponseDtoCopyWith<$Res> {
  factory $ApiV1JourneysIdPutResponseDtoCopyWith(
          ApiV1JourneysIdPutResponseDto value,
          $Res Function(ApiV1JourneysIdPutResponseDto) then) =
      _$ApiV1JourneysIdPutResponseDtoCopyWithImpl<$Res,
          ApiV1JourneysIdPutResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class _$ApiV1JourneysIdPutResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysIdPutResponseDto>
    implements $ApiV1JourneysIdPutResponseDtoCopyWith<$Res> {
  _$ApiV1JourneysIdPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysIdPutResponseDtoImplCopyWith<$Res>
    implements $ApiV1JourneysIdPutResponseDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysIdPutResponseDtoImplCopyWith(
          _$ApiV1JourneysIdPutResponseDtoImpl value,
          $Res Function(_$ApiV1JourneysIdPutResponseDtoImpl) then) =
      __$$ApiV1JourneysIdPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class __$$ApiV1JourneysIdPutResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysIdPutResponseDtoCopyWithImpl<$Res,
        _$ApiV1JourneysIdPutResponseDtoImpl>
    implements _$$ApiV1JourneysIdPutResponseDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysIdPutResponseDtoImplCopyWithImpl(
      _$ApiV1JourneysIdPutResponseDtoImpl _value,
      $Res Function(_$ApiV1JourneysIdPutResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_$ApiV1JourneysIdPutResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysIdPutResponseDtoImpl
    implements _ApiV1JourneysIdPutResponseDto {
  _$ApiV1JourneysIdPutResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'firstStepId') @ApiUuidJsonConverter() this.firstStepId,
      @JsonKey(name: 'finalStepId') @ApiUuidJsonConverter() this.finalStepId});

  factory _$ApiV1JourneysIdPutResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysIdPutResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? finalStepId;

  @override
  String toString() {
    return 'ApiV1JourneysIdPutResponseDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysIdPutResponseDtoImpl &&
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
                other.finalStepId == finalStepId));
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
      finalStepId);

  /// Create a copy of ApiV1JourneysIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysIdPutResponseDtoImplCopyWith<
          _$ApiV1JourneysIdPutResponseDtoImpl>
      get copyWith => __$$ApiV1JourneysIdPutResponseDtoImplCopyWithImpl<
          _$ApiV1JourneysIdPutResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysIdPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysIdPutResponseDto
    implements ApiV1JourneysIdPutResponseDto {
  factory _ApiV1JourneysIdPutResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'completedDate') final DateTime? completedDate,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? finalStepId}) = _$ApiV1JourneysIdPutResponseDtoImpl;

  factory _ApiV1JourneysIdPutResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1JourneysIdPutResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId;

  /// Create a copy of ApiV1JourneysIdPutResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysIdPutResponseDtoImplCopyWith<
          _$ApiV1JourneysIdPutResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysIdPutRequestDto _$ApiV1JourneysIdPutRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1JourneysIdPutRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysIdPutRequestDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysIdPutRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysIdPutRequestDtoCopyWith<ApiV1JourneysIdPutRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysIdPutRequestDtoCopyWith<$Res> {
  factory $ApiV1JourneysIdPutRequestDtoCopyWith(
          ApiV1JourneysIdPutRequestDto value,
          $Res Function(ApiV1JourneysIdPutRequestDto) then) =
      _$ApiV1JourneysIdPutRequestDtoCopyWithImpl<$Res,
          ApiV1JourneysIdPutRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$ApiV1JourneysIdPutRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysIdPutRequestDto>
    implements $ApiV1JourneysIdPutRequestDtoCopyWith<$Res> {
  _$ApiV1JourneysIdPutRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysIdPutRequestDtoImplCopyWith<$Res>
    implements $ApiV1JourneysIdPutRequestDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysIdPutRequestDtoImplCopyWith(
          _$ApiV1JourneysIdPutRequestDtoImpl value,
          $Res Function(_$ApiV1JourneysIdPutRequestDtoImpl) then) =
      __$$ApiV1JourneysIdPutRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$ApiV1JourneysIdPutRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysIdPutRequestDtoCopyWithImpl<$Res,
        _$ApiV1JourneysIdPutRequestDtoImpl>
    implements _$$ApiV1JourneysIdPutRequestDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysIdPutRequestDtoImplCopyWithImpl(
      _$ApiV1JourneysIdPutRequestDtoImpl _value,
      $Res Function(_$ApiV1JourneysIdPutRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$ApiV1JourneysIdPutRequestDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysIdPutRequestDtoImpl
    implements _ApiV1JourneysIdPutRequestDto {
  _$ApiV1JourneysIdPutRequestDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description});

  factory _$ApiV1JourneysIdPutRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysIdPutRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'ApiV1JourneysIdPutRequestDto(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysIdPutRequestDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of ApiV1JourneysIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysIdPutRequestDtoImplCopyWith<
          _$ApiV1JourneysIdPutRequestDtoImpl>
      get copyWith => __$$ApiV1JourneysIdPutRequestDtoImplCopyWithImpl<
          _$ApiV1JourneysIdPutRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysIdPutRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysIdPutRequestDto
    implements ApiV1JourneysIdPutRequestDto {
  factory _ApiV1JourneysIdPutRequestDto(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') final String? description}) =
      _$ApiV1JourneysIdPutRequestDtoImpl;

  factory _ApiV1JourneysIdPutRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1JourneysIdPutRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of ApiV1JourneysIdPutRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysIdPutRequestDtoImplCopyWith<
          _$ApiV1JourneysIdPutRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysPostResponseDto _$ApiV1JourneysPostResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1JourneysPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts')
  int? get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  int? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysPostResponseDtoCopyWith<ApiV1JourneysPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysPostResponseDtoCopyWith<$Res> {
  factory $ApiV1JourneysPostResponseDtoCopyWith(
          ApiV1JourneysPostResponseDto value,
          $Res Function(ApiV1JourneysPostResponseDto) then) =
      _$ApiV1JourneysPostResponseDtoCopyWithImpl<$Res,
          ApiV1JourneysPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  $UserDtoDtoCopyWith<$Res> get user;
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class _$ApiV1JourneysPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysPostResponseDto>
    implements $ApiV1JourneysPostResponseDtoCopyWith<$Res> {
  _$ApiV1JourneysPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value.othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ) as $Val);
  }

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res> get user {
    return $UserDtoDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JourneyDtoDtoCopyWith<$Res>? get journey {
    if (_value.journey == null) {
      return null;
    }

    return $JourneyDtoDtoCopyWith<$Res>(_value.journey!, (value) {
      return _then(_value.copyWith(journey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1JourneysPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysPostResponseDtoImplCopyWith(
          _$ApiV1JourneysPostResponseDtoImpl value,
          $Res Function(_$ApiV1JourneysPostResponseDtoImpl) then) =
      __$$ApiV1JourneysPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'user') UserDtoDto user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() ApiUuid? journeyId,
      @JsonKey(name: 'journey') JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') int? hearts,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'shares') int? shares,
      @JsonKey(name: 'sharedByUser') bool? sharedByUser,
      @JsonKey(name: 'comments') int? comments,
      @JsonKey(name: 'commentedByUser') bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') String? stepTypeString,
      @JsonKey(name: 'media') List<StepMediaDtoDto>? media});

  @override
  $UserDtoDtoCopyWith<$Res> get user;
  @override
  $JourneyDtoDtoCopyWith<$Res>? get journey;
}

/// @nodoc
class __$$ApiV1JourneysPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1JourneysPostResponseDtoImpl>
    implements _$$ApiV1JourneysPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysPostResponseDtoImplCopyWithImpl(
      _$ApiV1JourneysPostResponseDtoImpl _value,
      $Res Function(_$ApiV1JourneysPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? userId = freezed,
    Object? user = null,
    Object? journeyId = freezed,
    Object? journey = freezed,
    Object? hearts = freezed,
    Object? heartedByUser = freezed,
    Object? shares = freezed,
    Object? sharedByUser = freezed,
    Object? comments = freezed,
    Object? commentedByUser = freezed,
    Object? userSteppedWithInteractions = freezed,
    Object? othersStepWith = freezed,
    Object? othersStepWithUsers = freezed,
    Object? stepTypeString = freezed,
    Object? media = freezed,
  }) {
    return _then(_$ApiV1JourneysPostResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      journey: freezed == journey
          ? _value.journey
          : journey // ignore: cast_nullable_to_non_nullable
              as JourneyDtoDto?,
      hearts: freezed == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedByUser: freezed == sharedByUser
          ? _value.sharedByUser
          : sharedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      commentedByUser: freezed == commentedByUser
          ? _value.commentedByUser
          : commentedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      userSteppedWithInteractions: freezed == userSteppedWithInteractions
          ? _value.userSteppedWithInteractions
          : userSteppedWithInteractions // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWith: freezed == othersStepWith
          ? _value.othersStepWith
          : othersStepWith // ignore: cast_nullable_to_non_nullable
              as int?,
      othersStepWithUsers: freezed == othersStepWithUsers
          ? _value._othersStepWithUsers
          : othersStepWithUsers // ignore: cast_nullable_to_non_nullable
              as List<UserDtoDto>?,
      stepTypeString: freezed == stepTypeString
          ? _value.stepTypeString
          : stepTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<StepMediaDtoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysPostResponseDtoImpl
    implements _ApiV1JourneysPostResponseDto {
  _$ApiV1JourneysPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'journeyId') @ApiUuidJsonConverter() this.journeyId,
      @JsonKey(name: 'journey') this.journey,
      @JsonKey(name: 'hearts') this.hearts,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'sharedByUser') this.sharedByUser,
      @JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'commentedByUser') this.commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      this.userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') this.othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') this.stepTypeString,
      @JsonKey(name: 'media') final List<StepMediaDtoDto>? media})
      : _othersStepWithUsers = othersStepWithUsers,
        _media = media;

  factory _$ApiV1JourneysPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  final ApiUuid? journeyId;
  @override
  @JsonKey(name: 'journey')
  final JourneyDtoDto? journey;
  @override
  @JsonKey(name: 'hearts')
  final int? hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'shares')
  final int? shares;
  @override
  @JsonKey(name: 'sharedByUser')
  final bool? sharedByUser;
  @override
  @JsonKey(name: 'comments')
  final int? comments;
  @override
  @JsonKey(name: 'commentedByUser')
  final bool? commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  final int? userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  final int? othersStepWith;
  final List<UserDtoDto>? _othersStepWithUsers;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers {
    final value = _othersStepWithUsers;
    if (value == null) return null;
    if (_othersStepWithUsers is EqualUnmodifiableListView)
      return _othersStepWithUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'stepTypeString')
  final String? stepTypeString;
  final List<StepMediaDtoDto>? _media;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiV1JourneysPostResponseDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, userId: $userId, user: $user, journeyId: $journeyId, journey: $journey, hearts: $hearts, heartedByUser: $heartedByUser, shares: $shares, sharedByUser: $sharedByUser, comments: $comments, commentedByUser: $commentedByUser, userSteppedWithInteractions: $userSteppedWithInteractions, othersStepWith: $othersStepWith, othersStepWithUsers: $othersStepWithUsers, stepTypeString: $stepTypeString, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysPostResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
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
            (identical(other.stepTypeString, stepTypeString) ||
                other.stepTypeString == stepTypeString) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        content,
        createdDate,
        lastUpdated,
        userId,
        user,
        journeyId,
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
        stepTypeString,
        const DeepCollectionEquality().hash(_media)
      ]);

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysPostResponseDtoImplCopyWith<
          _$ApiV1JourneysPostResponseDtoImpl>
      get copyWith => __$$ApiV1JourneysPostResponseDtoImplCopyWithImpl<
          _$ApiV1JourneysPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysPostResponseDto
    implements ApiV1JourneysPostResponseDto {
  factory _ApiV1JourneysPostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() required final ApiUuid id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'user') required final UserDtoDto user,
      @JsonKey(name: 'journeyId')
      @ApiUuidJsonConverter()
      final ApiUuid? journeyId,
      @JsonKey(name: 'journey') final JourneyDtoDto? journey,
      @JsonKey(name: 'hearts') final int? hearts,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'shares') final int? shares,
      @JsonKey(name: 'sharedByUser') final bool? sharedByUser,
      @JsonKey(name: 'comments') final int? comments,
      @JsonKey(name: 'commentedByUser') final bool? commentedByUser,
      @JsonKey(name: 'userSteppedWithInteractions')
      final int? userSteppedWithInteractions,
      @JsonKey(name: 'othersStepWith') final int? othersStepWith,
      @JsonKey(name: 'othersStepWithUsers')
      final List<UserDtoDto>? othersStepWithUsers,
      @JsonKey(name: 'stepTypeString') final String? stepTypeString,
      @JsonKey(name: 'media')
      final List<StepMediaDtoDto>? media}) = _$ApiV1JourneysPostResponseDtoImpl;

  factory _ApiV1JourneysPostResponseDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1JourneysPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'user')
  UserDtoDto get user;
  @override
  @JsonKey(name: 'journeyId')
  @ApiUuidJsonConverter()
  ApiUuid? get journeyId;
  @override
  @JsonKey(name: 'journey')
  JourneyDtoDto? get journey;
  @override
  @JsonKey(name: 'hearts')
  int? get hearts;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'shares')
  int? get shares;
  @override
  @JsonKey(name: 'sharedByUser')
  bool? get sharedByUser;
  @override
  @JsonKey(name: 'comments')
  int? get comments;
  @override
  @JsonKey(name: 'commentedByUser')
  bool? get commentedByUser;
  @override
  @JsonKey(name: 'userSteppedWithInteractions')
  int? get userSteppedWithInteractions;
  @override
  @JsonKey(name: 'othersStepWith')
  int? get othersStepWith;
  @override
  @JsonKey(name: 'othersStepWithUsers')
  List<UserDtoDto>? get othersStepWithUsers;
  @override
  @JsonKey(name: 'stepTypeString')
  String? get stepTypeString;
  @override
  @JsonKey(name: 'media')
  List<StepMediaDtoDto>? get media;

  /// Create a copy of ApiV1JourneysPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysPostResponseDtoImplCopyWith<
          _$ApiV1JourneysPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysPostRequestDto _$ApiV1JourneysPostRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ApiV1JourneysPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysPostRequestDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepContent')
  String get firstStepContent => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysPostRequestDtoCopyWith<ApiV1JourneysPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysPostRequestDtoCopyWith<$Res> {
  factory $ApiV1JourneysPostRequestDtoCopyWith(
          ApiV1JourneysPostRequestDto value,
          $Res Function(ApiV1JourneysPostRequestDto) then) =
      _$ApiV1JourneysPostRequestDtoCopyWithImpl<$Res,
          ApiV1JourneysPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class _$ApiV1JourneysPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysPostRequestDto>
    implements $ApiV1JourneysPostRequestDtoCopyWith<$Res> {
  _$ApiV1JourneysPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _value.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1JourneysPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysPostRequestDtoImplCopyWith(
          _$ApiV1JourneysPostRequestDtoImpl value,
          $Res Function(_$ApiV1JourneysPostRequestDtoImpl) then) =
      __$$ApiV1JourneysPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'firstStepContent') String firstStepContent});
}

/// @nodoc
class __$$ApiV1JourneysPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1JourneysPostRequestDtoImpl>
    implements _$$ApiV1JourneysPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysPostRequestDtoImplCopyWithImpl(
      _$ApiV1JourneysPostRequestDtoImpl _value,
      $Res Function(_$ApiV1JourneysPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? firstStepContent = null,
  }) {
    return _then(_$ApiV1JourneysPostRequestDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepContent: null == firstStepContent
          ? _value.firstStepContent
          : firstStepContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysPostRequestDtoImpl
    implements _ApiV1JourneysPostRequestDto {
  _$ApiV1JourneysPostRequestDtoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'firstStepContent') required this.firstStepContent});

  factory _$ApiV1JourneysPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'firstStepContent')
  final String firstStepContent;

  @override
  String toString() {
    return 'ApiV1JourneysPostRequestDto(title: $title, description: $description, firstStepContent: $firstStepContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysPostRequestDtoImpl &&
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

  /// Create a copy of ApiV1JourneysPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysPostRequestDtoImplCopyWith<_$ApiV1JourneysPostRequestDtoImpl>
      get copyWith => __$$ApiV1JourneysPostRequestDtoImplCopyWithImpl<
          _$ApiV1JourneysPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysPostRequestDto
    implements ApiV1JourneysPostRequestDto {
  factory _ApiV1JourneysPostRequestDto(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'firstStepContent')
          required final String firstStepContent}) =
      _$ApiV1JourneysPostRequestDtoImpl;

  factory _ApiV1JourneysPostRequestDto.fromJson(Map<String, dynamic> json) =
      _$ApiV1JourneysPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'firstStepContent')
  String get firstStepContent;

  /// Create a copy of ApiV1JourneysPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysPostRequestDtoImplCopyWith<_$ApiV1JourneysPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysIdClosePostResponseDto
    _$ApiV1JourneysIdClosePostResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1JourneysIdClosePostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysIdClosePostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysIdClosePostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysIdClosePostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysIdClosePostResponseDtoCopyWith<
          ApiV1JourneysIdClosePostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysIdClosePostResponseDtoCopyWith<$Res> {
  factory $ApiV1JourneysIdClosePostResponseDtoCopyWith(
          ApiV1JourneysIdClosePostResponseDto value,
          $Res Function(ApiV1JourneysIdClosePostResponseDto) then) =
      _$ApiV1JourneysIdClosePostResponseDtoCopyWithImpl<$Res,
          ApiV1JourneysIdClosePostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class _$ApiV1JourneysIdClosePostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysIdClosePostResponseDto>
    implements $ApiV1JourneysIdClosePostResponseDtoCopyWith<$Res> {
  _$ApiV1JourneysIdClosePostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysIdClosePostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysIdClosePostResponseDtoImplCopyWith<$Res>
    implements $ApiV1JourneysIdClosePostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysIdClosePostResponseDtoImplCopyWith(
          _$ApiV1JourneysIdClosePostResponseDtoImpl value,
          $Res Function(_$ApiV1JourneysIdClosePostResponseDtoImpl) then) =
      __$$ApiV1JourneysIdClosePostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class __$$ApiV1JourneysIdClosePostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysIdClosePostResponseDtoCopyWithImpl<$Res,
        _$ApiV1JourneysIdClosePostResponseDtoImpl>
    implements _$$ApiV1JourneysIdClosePostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysIdClosePostResponseDtoImplCopyWithImpl(
      _$ApiV1JourneysIdClosePostResponseDtoImpl _value,
      $Res Function(_$ApiV1JourneysIdClosePostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysIdClosePostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_$ApiV1JourneysIdClosePostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysIdClosePostResponseDtoImpl
    implements _ApiV1JourneysIdClosePostResponseDto {
  _$ApiV1JourneysIdClosePostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'firstStepId') @ApiUuidJsonConverter() this.firstStepId,
      @JsonKey(name: 'finalStepId') @ApiUuidJsonConverter() this.finalStepId});

  factory _$ApiV1JourneysIdClosePostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysIdClosePostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? finalStepId;

  @override
  String toString() {
    return 'ApiV1JourneysIdClosePostResponseDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysIdClosePostResponseDtoImpl &&
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
                other.finalStepId == finalStepId));
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
      finalStepId);

  /// Create a copy of ApiV1JourneysIdClosePostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysIdClosePostResponseDtoImplCopyWith<
          _$ApiV1JourneysIdClosePostResponseDtoImpl>
      get copyWith => __$$ApiV1JourneysIdClosePostResponseDtoImplCopyWithImpl<
          _$ApiV1JourneysIdClosePostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysIdClosePostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysIdClosePostResponseDto
    implements ApiV1JourneysIdClosePostResponseDto {
  factory _ApiV1JourneysIdClosePostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'completedDate') final DateTime? completedDate,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? finalStepId}) = _$ApiV1JourneysIdClosePostResponseDtoImpl;

  factory _ApiV1JourneysIdClosePostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1JourneysIdClosePostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId;

  /// Create a copy of ApiV1JourneysIdClosePostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysIdClosePostResponseDtoImplCopyWith<
          _$ApiV1JourneysIdClosePostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1JourneysIdReopenPostResponseDto
    _$ApiV1JourneysIdReopenPostResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1JourneysIdReopenPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1JourneysIdReopenPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1JourneysIdReopenPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1JourneysIdReopenPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1JourneysIdReopenPostResponseDtoCopyWith<
          ApiV1JourneysIdReopenPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1JourneysIdReopenPostResponseDtoCopyWith<$Res> {
  factory $ApiV1JourneysIdReopenPostResponseDtoCopyWith(
          ApiV1JourneysIdReopenPostResponseDto value,
          $Res Function(ApiV1JourneysIdReopenPostResponseDto) then) =
      _$ApiV1JourneysIdReopenPostResponseDtoCopyWithImpl<$Res,
          ApiV1JourneysIdReopenPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class _$ApiV1JourneysIdReopenPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1JourneysIdReopenPostResponseDto>
    implements $ApiV1JourneysIdReopenPostResponseDtoCopyWith<$Res> {
  _$ApiV1JourneysIdReopenPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1JourneysIdReopenPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1JourneysIdReopenPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWith(
          _$ApiV1JourneysIdReopenPostResponseDtoImpl value,
          $Res Function(_$ApiV1JourneysIdReopenPostResponseDtoImpl) then) =
      __$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'completedDate') DateTime? completedDate,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      ApiUuid? finalStepId});
}

/// @nodoc
class __$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1JourneysIdReopenPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1JourneysIdReopenPostResponseDtoImpl>
    implements _$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWithImpl(
      _$ApiV1JourneysIdReopenPostResponseDtoImpl _value,
      $Res Function(_$ApiV1JourneysIdReopenPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1JourneysIdReopenPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? status = freezed,
    Object? completedDate = freezed,
    Object? userId = freezed,
    Object? firstStepId = freezed,
    Object? finalStepId = freezed,
  }) {
    return _then(_$ApiV1JourneysIdReopenPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStepId: freezed == firstStepId
          ? _value.firstStepId
          : firstStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      finalStepId: freezed == finalStepId
          ? _value.finalStepId
          : finalStepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1JourneysIdReopenPostResponseDtoImpl
    implements _ApiV1JourneysIdReopenPostResponseDto {
  _$ApiV1JourneysIdReopenPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'completedDate') this.completedDate,
      @JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'firstStepId') @ApiUuidJsonConverter() this.firstStepId,
      @JsonKey(name: 'finalStepId') @ApiUuidJsonConverter() this.finalStepId});

  factory _$ApiV1JourneysIdReopenPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1JourneysIdReopenPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'completedDate')
  final DateTime? completedDate;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  final ApiUuid? finalStepId;

  @override
  String toString() {
    return 'ApiV1JourneysIdReopenPostResponseDto(id: $id, title: $title, description: $description, createdDate: $createdDate, lastUpdated: $lastUpdated, status: $status, completedDate: $completedDate, userId: $userId, firstStepId: $firstStepId, finalStepId: $finalStepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1JourneysIdReopenPostResponseDtoImpl &&
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
                other.finalStepId == finalStepId));
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
      finalStepId);

  /// Create a copy of ApiV1JourneysIdReopenPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWith<
          _$ApiV1JourneysIdReopenPostResponseDtoImpl>
      get copyWith => __$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWithImpl<
          _$ApiV1JourneysIdReopenPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1JourneysIdReopenPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1JourneysIdReopenPostResponseDto
    implements ApiV1JourneysIdReopenPostResponseDto {
  factory _ApiV1JourneysIdReopenPostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'createdDate') final DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'completedDate') final DateTime? completedDate,
      @JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'firstStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? firstStepId,
      @JsonKey(name: 'finalStepId')
      @ApiUuidJsonConverter()
      final ApiUuid? finalStepId}) = _$ApiV1JourneysIdReopenPostResponseDtoImpl;

  factory _ApiV1JourneysIdReopenPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1JourneysIdReopenPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'completedDate')
  DateTime? get completedDate;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'firstStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get firstStepId;
  @override
  @JsonKey(name: 'finalStepId')
  @ApiUuidJsonConverter()
  ApiUuid? get finalStepId;

  /// Create a copy of ApiV1JourneysIdReopenPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1JourneysIdReopenPostResponseDtoImplCopyWith<
          _$ApiV1JourneysIdReopenPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdHeartsPostResponseDto
    _$ApiV1StepsStepIdHeartsPostResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdHeartsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdHeartsPostResponseDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdHeartsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdHeartsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdHeartsPostResponseDtoCopyWith<
          ApiV1StepsStepIdHeartsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdHeartsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdHeartsPostResponseDtoCopyWith(
          ApiV1StepsStepIdHeartsPostResponseDto value,
          $Res Function(ApiV1StepsStepIdHeartsPostResponseDto) then) =
      _$ApiV1StepsStepIdHeartsPostResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdHeartsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$ApiV1StepsStepIdHeartsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdHeartsPostResponseDto>
    implements $ApiV1StepsStepIdHeartsPostResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdHeartsPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdHeartsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdHeartsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdHeartsPostResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdHeartsPostResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdHeartsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdHeartsPostResponseDtoImpl>
    implements _$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdHeartsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdHeartsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdHeartsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdHeartsPostResponseDtoImpl(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdHeartsPostResponseDtoImpl
    implements _ApiV1StepsStepIdHeartsPostResponseDto {
  _$ApiV1StepsStepIdHeartsPostResponseDtoImpl(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});

  factory _$ApiV1StepsStepIdHeartsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdHeartsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  @override
  String toString() {
    return 'ApiV1StepsStepIdHeartsPostResponseDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdHeartsPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdHeartsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsPostResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdHeartsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdHeartsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdHeartsPostResponseDto
    implements ApiV1StepsStepIdHeartsPostResponseDto {
  factory _ApiV1StepsStepIdHeartsPostResponseDto(
          {@JsonKey(name: 'isSteppedWith') final bool? isSteppedWith,
          @JsonKey(name: 'isLiked') final bool? isLiked,
          @JsonKey(name: 'totalLikes') final int? totalLikes}) =
      _$ApiV1StepsStepIdHeartsPostResponseDtoImpl;

  factory _ApiV1StepsStepIdHeartsPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdHeartsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of ApiV1StepsStepIdHeartsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdHeartsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdHeartsPostRequestDto
    _$ApiV1StepsStepIdHeartsPostRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdHeartsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdHeartsPostRequestDto {
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdHeartsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdHeartsPostRequestDtoCopyWith<
          ApiV1StepsStepIdHeartsPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdHeartsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdHeartsPostRequestDtoCopyWith(
          ApiV1StepsStepIdHeartsPostRequestDto value,
          $Res Function(ApiV1StepsStepIdHeartsPostRequestDto) then) =
      _$ApiV1StepsStepIdHeartsPostRequestDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdHeartsPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class _$ApiV1StepsStepIdHeartsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdHeartsPostRequestDto>
    implements $ApiV1StepsStepIdHeartsPostRequestDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdHeartsPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdHeartsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWith(
          _$ApiV1StepsStepIdHeartsPostRequestDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdHeartsPostRequestDtoImpl) then) =
      __$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class __$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdHeartsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdHeartsPostRequestDtoImpl>
    implements _$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdHeartsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdHeartsPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdHeartsPostRequestDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdHeartsPostRequestDtoImpl
    implements _ApiV1StepsStepIdHeartsPostRequestDto {
  _$ApiV1StepsStepIdHeartsPostRequestDtoImpl(
      {@JsonKey(name: 'type') this.type});

  factory _$ApiV1StepsStepIdHeartsPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdHeartsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int? type;

  @override
  String toString() {
    return 'ApiV1StepsStepIdHeartsPostRequestDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdHeartsPostRequestDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ApiV1StepsStepIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsPostRequestDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdHeartsPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdHeartsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdHeartsPostRequestDto
    implements ApiV1StepsStepIdHeartsPostRequestDto {
  factory _ApiV1StepsStepIdHeartsPostRequestDto(
          {@JsonKey(name: 'type') final int? type}) =
      _$ApiV1StepsStepIdHeartsPostRequestDtoImpl;

  factory _ApiV1StepsStepIdHeartsPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdHeartsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int? get type;

  /// Create a copy of ApiV1StepsStepIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdHeartsPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdHeartsDeleteResponseDto
    _$ApiV1StepsStepIdHeartsDeleteResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsStepIdHeartsDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdHeartsDeleteResponseDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdHeartsDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdHeartsDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWith<
          ApiV1StepsStepIdHeartsDeleteResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWith(
          ApiV1StepsStepIdHeartsDeleteResponseDto value,
          $Res Function(ApiV1StepsStepIdHeartsDeleteResponseDto) then) =
      _$ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdHeartsDeleteResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdHeartsDeleteResponseDto>
    implements $ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdHeartsDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdHeartsDeleteResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl>
    implements _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdHeartsDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl
    implements _ApiV1StepsStepIdHeartsDeleteResponseDto {
  _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});

  factory _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  @override
  String toString() {
    return 'ApiV1StepsStepIdHeartsDeleteResponseDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdHeartsDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl>
      get copyWith =>
          __$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWithImpl<
              _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdHeartsDeleteResponseDto
    implements ApiV1StepsStepIdHeartsDeleteResponseDto {
  factory _ApiV1StepsStepIdHeartsDeleteResponseDto(
          {@JsonKey(name: 'isSteppedWith') final bool? isSteppedWith,
          @JsonKey(name: 'isLiked') final bool? isLiked,
          @JsonKey(name: 'totalLikes') final int? totalLikes}) =
      _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl;

  factory _ApiV1StepsStepIdHeartsDeleteResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of ApiV1StepsStepIdHeartsDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdSharesPostResponseDto
    _$ApiV1StepsStepIdSharesPostResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdSharesPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdSharesPostResponseDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdSharesPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdSharesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdSharesPostResponseDtoCopyWith<
          ApiV1StepsStepIdSharesPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdSharesPostResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdSharesPostResponseDtoCopyWith(
          ApiV1StepsStepIdSharesPostResponseDto value,
          $Res Function(ApiV1StepsStepIdSharesPostResponseDto) then) =
      _$ApiV1StepsStepIdSharesPostResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdSharesPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$ApiV1StepsStepIdSharesPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdSharesPostResponseDto>
    implements $ApiV1StepsStepIdSharesPostResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdSharesPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdSharesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdSharesPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdSharesPostResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdSharesPostResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdSharesPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdSharesPostResponseDtoImpl>
    implements _$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdSharesPostResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdSharesPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdSharesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdSharesPostResponseDtoImpl(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdSharesPostResponseDtoImpl
    implements _ApiV1StepsStepIdSharesPostResponseDto {
  _$ApiV1StepsStepIdSharesPostResponseDtoImpl(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});

  factory _$ApiV1StepsStepIdSharesPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdSharesPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  @override
  String toString() {
    return 'ApiV1StepsStepIdSharesPostResponseDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdSharesPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdSharesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdSharesPostResponseDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdSharesPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdSharesPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdSharesPostResponseDto
    implements ApiV1StepsStepIdSharesPostResponseDto {
  factory _ApiV1StepsStepIdSharesPostResponseDto(
          {@JsonKey(name: 'isSteppedWith') final bool? isSteppedWith,
          @JsonKey(name: 'isLiked') final bool? isLiked,
          @JsonKey(name: 'totalLikes') final int? totalLikes}) =
      _$ApiV1StepsStepIdSharesPostResponseDtoImpl;

  factory _ApiV1StepsStepIdSharesPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdSharesPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of ApiV1StepsStepIdSharesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdSharesPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdSharesPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdSharesPostRequestDto
    _$ApiV1StepsStepIdSharesPostRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1StepsStepIdSharesPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdSharesPostRequestDto {
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdSharesPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdSharesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdSharesPostRequestDtoCopyWith<
          ApiV1StepsStepIdSharesPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdSharesPostRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdSharesPostRequestDtoCopyWith(
          ApiV1StepsStepIdSharesPostRequestDto value,
          $Res Function(ApiV1StepsStepIdSharesPostRequestDto) then) =
      _$ApiV1StepsStepIdSharesPostRequestDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdSharesPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class _$ApiV1StepsStepIdSharesPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdSharesPostRequestDto>
    implements $ApiV1StepsStepIdSharesPostRequestDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdSharesPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdSharesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdSharesPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWith(
          _$ApiV1StepsStepIdSharesPostRequestDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdSharesPostRequestDtoImpl) then) =
      __$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class __$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdSharesPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdSharesPostRequestDtoImpl>
    implements _$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdSharesPostRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdSharesPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdSharesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdSharesPostRequestDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdSharesPostRequestDtoImpl
    implements _ApiV1StepsStepIdSharesPostRequestDto {
  _$ApiV1StepsStepIdSharesPostRequestDtoImpl(
      {@JsonKey(name: 'type') this.type});

  factory _$ApiV1StepsStepIdSharesPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdSharesPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int? type;

  @override
  String toString() {
    return 'ApiV1StepsStepIdSharesPostRequestDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdSharesPostRequestDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ApiV1StepsStepIdSharesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdSharesPostRequestDtoImpl>
      get copyWith => __$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWithImpl<
          _$ApiV1StepsStepIdSharesPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdSharesPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdSharesPostRequestDto
    implements ApiV1StepsStepIdSharesPostRequestDto {
  factory _ApiV1StepsStepIdSharesPostRequestDto(
          {@JsonKey(name: 'type') final int? type}) =
      _$ApiV1StepsStepIdSharesPostRequestDtoImpl;

  factory _ApiV1StepsStepIdSharesPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdSharesPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int? get type;

  /// Create a copy of ApiV1StepsStepIdSharesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdSharesPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdSharesPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdInteractionsGetResponseDto
    _$ApiV1StepsStepIdInteractionsGetResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsStepIdInteractionsGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdInteractionsGetResponseDto {
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLikes')
  int? get totalLikes => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdInteractionsGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdInteractionsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdInteractionsGetResponseDtoCopyWith<
          ApiV1StepsStepIdInteractionsGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdInteractionsGetResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdInteractionsGetResponseDtoCopyWith(
          ApiV1StepsStepIdInteractionsGetResponseDto value,
          $Res Function(ApiV1StepsStepIdInteractionsGetResponseDto) then) =
      _$ApiV1StepsStepIdInteractionsGetResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdInteractionsGetResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class _$ApiV1StepsStepIdInteractionsGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdInteractionsGetResponseDto>
    implements $ApiV1StepsStepIdInteractionsGetResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdInteractionsGetResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdInteractionsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdInteractionsGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdInteractionsGetResponseDtoImpl)
              then) =
      __$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
      @JsonKey(name: 'isLiked') bool? isLiked,
      @JsonKey(name: 'totalLikes') int? totalLikes});
}

/// @nodoc
class __$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdInteractionsGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl>
    implements _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdInteractionsGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdInteractionsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSteppedWith = freezed,
    Object? isLiked = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdInteractionsGetResponseDtoImpl(
      isSteppedWith: freezed == isSteppedWith
          ? _value.isSteppedWith
          : isSteppedWith // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl
    implements _ApiV1StepsStepIdInteractionsGetResponseDto {
  _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl(
      {@JsonKey(name: 'isSteppedWith') this.isSteppedWith,
      @JsonKey(name: 'isLiked') this.isLiked,
      @JsonKey(name: 'totalLikes') this.totalLikes});

  factory _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'isSteppedWith')
  final bool? isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  final int? totalLikes;

  @override
  String toString() {
    return 'ApiV1StepsStepIdInteractionsGetResponseDto(isSteppedWith: $isSteppedWith, isLiked: $isLiked, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl &&
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

  /// Create a copy of ApiV1StepsStepIdInteractionsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl>
      get copyWith =>
          __$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWithImpl<
                  _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdInteractionsGetResponseDto
    implements ApiV1StepsStepIdInteractionsGetResponseDto {
  factory _ApiV1StepsStepIdInteractionsGetResponseDto(
          {@JsonKey(name: 'isSteppedWith') final bool? isSteppedWith,
          @JsonKey(name: 'isLiked') final bool? isLiked,
          @JsonKey(name: 'totalLikes') final int? totalLikes}) =
      _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl;

  factory _ApiV1StepsStepIdInteractionsGetResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'isSteppedWith')
  bool? get isSteppedWith;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;
  @override
  @JsonKey(name: 'totalLikes')
  int? get totalLikes;

  /// Create a copy of ApiV1StepsStepIdInteractionsGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsCommentsCommentIdHeartsPostRequestDto
    _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsCommentsCommentIdHeartsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsCommentsCommentIdHeartsPostRequestDto {
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsCommentsCommentIdHeartsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsCommentsCommentIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWith<
          ApiV1StepsCommentsCommentIdHeartsPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWith(
          ApiV1StepsCommentsCommentIdHeartsPostRequestDto value,
          $Res Function(ApiV1StepsCommentsCommentIdHeartsPostRequestDto) then) =
      _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWithImpl<$Res,
          ApiV1StepsCommentsCommentIdHeartsPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsCommentsCommentIdHeartsPostRequestDto>
    implements $ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWith<$Res> {
  _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsCommentsCommentIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWith<
        $Res>
    implements $ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWith(
          _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl value,
          $Res Function(_$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl)
              then) =
      __$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') int? type});
}

/// @nodoc
class __$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl>
    implements
        _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWithImpl(
      _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsCommentsCommentIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl
    implements _ApiV1StepsCommentsCommentIdHeartsPostRequestDto {
  _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl(
      {@JsonKey(name: 'type') this.type});

  factory _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int? type;

  @override
  String toString() {
    return 'ApiV1StepsCommentsCommentIdHeartsPostRequestDto(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ApiV1StepsCommentsCommentIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWith<
          _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl>
      get copyWith =>
          __$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWithImpl<
                  _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsCommentsCommentIdHeartsPostRequestDto
    implements ApiV1StepsCommentsCommentIdHeartsPostRequestDto {
  factory _ApiV1StepsCommentsCommentIdHeartsPostRequestDto(
          {@JsonKey(name: 'type') final int? type}) =
      _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl;

  factory _ApiV1StepsCommentsCommentIdHeartsPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  int? get type;

  /// Create a copy of ApiV1StepsCommentsCommentIdHeartsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplCopyWith<
          _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsFollowPostResponseDto
    _$ApiV1FollowingsFollowPostResponseDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1FollowingsFollowPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsFollowPostResponseDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsFollowPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsFollowPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsFollowPostResponseDtoCopyWith<
          ApiV1FollowingsFollowPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsFollowPostResponseDtoCopyWith<$Res> {
  factory $ApiV1FollowingsFollowPostResponseDtoCopyWith(
          ApiV1FollowingsFollowPostResponseDto value,
          $Res Function(ApiV1FollowingsFollowPostResponseDto) then) =
      _$ApiV1FollowingsFollowPostResponseDtoCopyWithImpl<$Res,
          ApiV1FollowingsFollowPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ApiV1FollowingsFollowPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsFollowPostResponseDto>
    implements $ApiV1FollowingsFollowPostResponseDtoCopyWith<$Res> {
  _$ApiV1FollowingsFollowPostResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsFollowPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsFollowPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsFollowPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsFollowPostResponseDtoImplCopyWith(
          _$ApiV1FollowingsFollowPostResponseDtoImpl value,
          $Res Function(_$ApiV1FollowingsFollowPostResponseDtoImpl) then) =
      __$$ApiV1FollowingsFollowPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ApiV1FollowingsFollowPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsFollowPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsFollowPostResponseDtoImpl>
    implements _$$ApiV1FollowingsFollowPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsFollowPostResponseDtoImplCopyWithImpl(
      _$ApiV1FollowingsFollowPostResponseDtoImpl _value,
      $Res Function(_$ApiV1FollowingsFollowPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsFollowPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$ApiV1FollowingsFollowPostResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsFollowPostResponseDtoImpl
    implements _ApiV1FollowingsFollowPostResponseDto {
  _$ApiV1FollowingsFollowPostResponseDtoImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') this.message});

  factory _$ApiV1FollowingsFollowPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsFollowPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ApiV1FollowingsFollowPostResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsFollowPostResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of ApiV1FollowingsFollowPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsFollowPostResponseDtoImplCopyWith<
          _$ApiV1FollowingsFollowPostResponseDtoImpl>
      get copyWith => __$$ApiV1FollowingsFollowPostResponseDtoImplCopyWithImpl<
          _$ApiV1FollowingsFollowPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsFollowPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsFollowPostResponseDto
    implements ApiV1FollowingsFollowPostResponseDto {
  factory _ApiV1FollowingsFollowPostResponseDto(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') final String? message}) =
      _$ApiV1FollowingsFollowPostResponseDtoImpl;

  factory _ApiV1FollowingsFollowPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsFollowPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ApiV1FollowingsFollowPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsFollowPostResponseDtoImplCopyWith<
          _$ApiV1FollowingsFollowPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsFollowPostRequestDto
    _$ApiV1FollowingsFollowPostRequestDtoFromJson(Map<String, dynamic> json) {
  return _ApiV1FollowingsFollowPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsFollowPostRequestDto {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsFollowPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsFollowPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsFollowPostRequestDtoCopyWith<
          ApiV1FollowingsFollowPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsFollowPostRequestDtoCopyWith<$Res> {
  factory $ApiV1FollowingsFollowPostRequestDtoCopyWith(
          ApiV1FollowingsFollowPostRequestDto value,
          $Res Function(ApiV1FollowingsFollowPostRequestDto) then) =
      _$ApiV1FollowingsFollowPostRequestDtoCopyWithImpl<$Res,
          ApiV1FollowingsFollowPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class _$ApiV1FollowingsFollowPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsFollowPostRequestDto>
    implements $ApiV1FollowingsFollowPostRequestDtoCopyWith<$Res> {
  _$ApiV1FollowingsFollowPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsFollowPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsFollowPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsFollowPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsFollowPostRequestDtoImplCopyWith(
          _$ApiV1FollowingsFollowPostRequestDtoImpl value,
          $Res Function(_$ApiV1FollowingsFollowPostRequestDtoImpl) then) =
      __$$ApiV1FollowingsFollowPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class __$$ApiV1FollowingsFollowPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsFollowPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsFollowPostRequestDtoImpl>
    implements _$$ApiV1FollowingsFollowPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsFollowPostRequestDtoImplCopyWithImpl(
      _$ApiV1FollowingsFollowPostRequestDtoImpl _value,
      $Res Function(_$ApiV1FollowingsFollowPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsFollowPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ApiV1FollowingsFollowPostRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsFollowPostRequestDtoImpl
    implements _ApiV1FollowingsFollowPostRequestDto {
  _$ApiV1FollowingsFollowPostRequestDtoImpl(
      {@JsonKey(name: 'userId') required this.userId});

  factory _$ApiV1FollowingsFollowPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsFollowPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;

  @override
  String toString() {
    return 'ApiV1FollowingsFollowPostRequestDto(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsFollowPostRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ApiV1FollowingsFollowPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsFollowPostRequestDtoImplCopyWith<
          _$ApiV1FollowingsFollowPostRequestDtoImpl>
      get copyWith => __$$ApiV1FollowingsFollowPostRequestDtoImplCopyWithImpl<
          _$ApiV1FollowingsFollowPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsFollowPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsFollowPostRequestDto
    implements ApiV1FollowingsFollowPostRequestDto {
  factory _ApiV1FollowingsFollowPostRequestDto(
          {@JsonKey(name: 'userId') required final String userId}) =
      _$ApiV1FollowingsFollowPostRequestDtoImpl;

  factory _ApiV1FollowingsFollowPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsFollowPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;

  /// Create a copy of ApiV1FollowingsFollowPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsFollowPostRequestDtoImplCopyWith<
          _$ApiV1FollowingsFollowPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsUnfollowDeleteResponseDto
    _$ApiV1FollowingsUnfollowDeleteResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1FollowingsUnfollowDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsUnfollowDeleteResponseDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsUnfollowDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsUnfollowDeleteResponseDtoCopyWith<
          ApiV1FollowingsUnfollowDeleteResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsUnfollowDeleteResponseDtoCopyWith<$Res> {
  factory $ApiV1FollowingsUnfollowDeleteResponseDtoCopyWith(
          ApiV1FollowingsUnfollowDeleteResponseDto value,
          $Res Function(ApiV1FollowingsUnfollowDeleteResponseDto) then) =
      _$ApiV1FollowingsUnfollowDeleteResponseDtoCopyWithImpl<$Res,
          ApiV1FollowingsUnfollowDeleteResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ApiV1FollowingsUnfollowDeleteResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsUnfollowDeleteResponseDto>
    implements $ApiV1FollowingsUnfollowDeleteResponseDtoCopyWith<$Res> {
  _$ApiV1FollowingsUnfollowDeleteResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsUnfollowDeleteResponseDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWith(
          _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl value,
          $Res Function(_$ApiV1FollowingsUnfollowDeleteResponseDtoImpl) then) =
      __$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsUnfollowDeleteResponseDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl>
    implements _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWithImpl(
      _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl _value,
      $Res Function(_$ApiV1FollowingsUnfollowDeleteResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsUnfollowDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$ApiV1FollowingsUnfollowDeleteResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl
    implements _ApiV1FollowingsUnfollowDeleteResponseDto {
  _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') this.message});

  factory _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ApiV1FollowingsUnfollowDeleteResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of ApiV1FollowingsUnfollowDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWith<
          _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl>
      get copyWith =>
          __$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWithImpl<
              _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsUnfollowDeleteResponseDto
    implements ApiV1FollowingsUnfollowDeleteResponseDto {
  factory _ApiV1FollowingsUnfollowDeleteResponseDto(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') final String? message}) =
      _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl;

  factory _ApiV1FollowingsUnfollowDeleteResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplCopyWith<
          _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsUnfollowDeleteRequestDto
    _$ApiV1FollowingsUnfollowDeleteRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1FollowingsUnfollowDeleteRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsUnfollowDeleteRequestDto {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsUnfollowDeleteRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsUnfollowDeleteRequestDtoCopyWith<
          ApiV1FollowingsUnfollowDeleteRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsUnfollowDeleteRequestDtoCopyWith<$Res> {
  factory $ApiV1FollowingsUnfollowDeleteRequestDtoCopyWith(
          ApiV1FollowingsUnfollowDeleteRequestDto value,
          $Res Function(ApiV1FollowingsUnfollowDeleteRequestDto) then) =
      _$ApiV1FollowingsUnfollowDeleteRequestDtoCopyWithImpl<$Res,
          ApiV1FollowingsUnfollowDeleteRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class _$ApiV1FollowingsUnfollowDeleteRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsUnfollowDeleteRequestDto>
    implements $ApiV1FollowingsUnfollowDeleteRequestDtoCopyWith<$Res> {
  _$ApiV1FollowingsUnfollowDeleteRequestDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsUnfollowDeleteRequestDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWith(
          _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl value,
          $Res Function(_$ApiV1FollowingsUnfollowDeleteRequestDtoImpl) then) =
      __$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'userId') String userId});
}

/// @nodoc
class __$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsUnfollowDeleteRequestDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl>
    implements _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWithImpl(
      _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl _value,
      $Res Function(_$ApiV1FollowingsUnfollowDeleteRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsUnfollowDeleteRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ApiV1FollowingsUnfollowDeleteRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl
    implements _ApiV1FollowingsUnfollowDeleteRequestDto {
  _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl(
      {@JsonKey(name: 'userId') required this.userId});

  factory _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;

  @override
  String toString() {
    return 'ApiV1FollowingsUnfollowDeleteRequestDto(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ApiV1FollowingsUnfollowDeleteRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWith<
          _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl>
      get copyWith =>
          __$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWithImpl<
              _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsUnfollowDeleteRequestDto
    implements ApiV1FollowingsUnfollowDeleteRequestDto {
  factory _ApiV1FollowingsUnfollowDeleteRequestDto(
          {@JsonKey(name: 'userId') required final String userId}) =
      _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl;

  factory _ApiV1FollowingsUnfollowDeleteRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;

  /// Create a copy of ApiV1FollowingsUnfollowDeleteRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplCopyWith<
          _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsUserIdRejectPostResponseDto
    _$ApiV1FollowingsUserIdRejectPostResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1FollowingsUserIdRejectPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsUserIdRejectPostResponseDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsUserIdRejectPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsUserIdRejectPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsUserIdRejectPostResponseDtoCopyWith<
          ApiV1FollowingsUserIdRejectPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsUserIdRejectPostResponseDtoCopyWith<$Res> {
  factory $ApiV1FollowingsUserIdRejectPostResponseDtoCopyWith(
          ApiV1FollowingsUserIdRejectPostResponseDto value,
          $Res Function(ApiV1FollowingsUserIdRejectPostResponseDto) then) =
      _$ApiV1FollowingsUserIdRejectPostResponseDtoCopyWithImpl<$Res,
          ApiV1FollowingsUserIdRejectPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ApiV1FollowingsUserIdRejectPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsUserIdRejectPostResponseDto>
    implements $ApiV1FollowingsUserIdRejectPostResponseDtoCopyWith<$Res> {
  _$ApiV1FollowingsUserIdRejectPostResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsUserIdRejectPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsUserIdRejectPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWith(
          _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl value,
          $Res Function(_$ApiV1FollowingsUserIdRejectPostResponseDtoImpl)
              then) =
      __$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsUserIdRejectPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl>
    implements _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWithImpl(
      _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl _value,
      $Res Function(_$ApiV1FollowingsUserIdRejectPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsUserIdRejectPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$ApiV1FollowingsUserIdRejectPostResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl
    implements _ApiV1FollowingsUserIdRejectPostResponseDto {
  _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') this.message});

  factory _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ApiV1FollowingsUserIdRejectPostResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of ApiV1FollowingsUserIdRejectPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWith<
          _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl>
      get copyWith =>
          __$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWithImpl<
                  _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsUserIdRejectPostResponseDto
    implements ApiV1FollowingsUserIdRejectPostResponseDto {
  factory _ApiV1FollowingsUserIdRejectPostResponseDto(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') final String? message}) =
      _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl;

  factory _ApiV1FollowingsUserIdRejectPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ApiV1FollowingsUserIdRejectPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplCopyWith<
          _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1FollowingsStatusUserIdGetResponseDto
    _$ApiV1FollowingsStatusUserIdGetResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1FollowingsStatusUserIdGetResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1FollowingsStatusUserIdGetResponseDto {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  /// Serializes this ApiV1FollowingsStatusUserIdGetResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1FollowingsStatusUserIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1FollowingsStatusUserIdGetResponseDtoCopyWith<
          ApiV1FollowingsStatusUserIdGetResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1FollowingsStatusUserIdGetResponseDtoCopyWith<$Res> {
  factory $ApiV1FollowingsStatusUserIdGetResponseDtoCopyWith(
          ApiV1FollowingsStatusUserIdGetResponseDto value,
          $Res Function(ApiV1FollowingsStatusUserIdGetResponseDto) then) =
      _$ApiV1FollowingsStatusUserIdGetResponseDtoCopyWithImpl<$Res,
          ApiV1FollowingsStatusUserIdGetResponseDto>;
  @useResult
  $Res call({@JsonKey(name: 'status') int status});
}

/// @nodoc
class _$ApiV1FollowingsStatusUserIdGetResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1FollowingsStatusUserIdGetResponseDto>
    implements $ApiV1FollowingsStatusUserIdGetResponseDtoCopyWith<$Res> {
  _$ApiV1FollowingsStatusUserIdGetResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1FollowingsStatusUserIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWith<$Res>
    implements $ApiV1FollowingsStatusUserIdGetResponseDtoCopyWith<$Res> {
  factory _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWith(
          _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl value,
          $Res Function(_$ApiV1FollowingsStatusUserIdGetResponseDtoImpl) then) =
      __$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1FollowingsStatusUserIdGetResponseDtoCopyWithImpl<$Res,
        _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl>
    implements _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWith<$Res> {
  __$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWithImpl(
      _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl _value,
      $Res Function(_$ApiV1FollowingsStatusUserIdGetResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1FollowingsStatusUserIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ApiV1FollowingsStatusUserIdGetResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl
    implements _ApiV1FollowingsStatusUserIdGetResponseDto {
  _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl(
      {@JsonKey(name: 'status') required this.status});

  factory _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'ApiV1FollowingsStatusUserIdGetResponseDto(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of ApiV1FollowingsStatusUserIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWith<
          _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl>
      get copyWith =>
          __$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWithImpl<
                  _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1FollowingsStatusUserIdGetResponseDto
    implements ApiV1FollowingsStatusUserIdGetResponseDto {
  factory _ApiV1FollowingsStatusUserIdGetResponseDto(
          {@JsonKey(name: 'status') required final int status}) =
      _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl;

  factory _ApiV1FollowingsStatusUserIdGetResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;

  /// Create a copy of ApiV1FollowingsStatusUserIdGetResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplCopyWith<
          _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1CommentsParentCommentIdRepliesPostResponseDto
    _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1CommentsParentCommentIdRepliesPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1CommentsParentCommentIdRepliesPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get parentCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToUser')
  UserDto2Dto? get responseToUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartCount')
  int? get heartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;

  /// Serializes this ApiV1CommentsParentCommentIdRepliesPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWith<
          ApiV1CommentsParentCommentIdRepliesPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWith<
    $Res> {
  factory $ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWith(
          ApiV1CommentsParentCommentIdRepliesPostResponseDto value,
          $Res Function(ApiV1CommentsParentCommentIdRepliesPostResponseDto)
              then) =
      _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWithImpl<$Res,
          ApiV1CommentsParentCommentIdRepliesPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser});

  $UserDtoDtoCopyWith<$Res>? get user;
  $UserDto2DtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1CommentsParentCommentIdRepliesPostResponseDto>
    implements
        $ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWith<$Res> {
  _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? deletedDate = freezed,
    Object? user = freezed,
    Object? parentCommentId = freezed,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedDate: freezed == deletedDate
          ? _value.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      responseToUser: freezed == responseToUser
          ? _value.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDto2DtoCopyWith<$Res>? get responseToUser {
    if (_value.responseToUser == null) {
      return null;
    }

    return $UserDto2DtoCopyWith<$Res>(_value.responseToUser!, (value) {
      return _then(_value.copyWith(responseToUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWith<
        $Res>
    implements
        $ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWith(
          _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl value,
          $Res Function(
                  _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl)
              then) =
      __$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdDate') DateTime? createdDate,
      @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
      @JsonKey(name: 'deletedDate') DateTime? deletedDate,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? parentCommentId,
      @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser});

  @override
  $UserDtoDtoCopyWith<$Res>? get user;
  @override
  $UserDto2DtoCopyWith<$Res>? get responseToUser;
}

/// @nodoc
class __$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWithImpl<
        $Res>
    extends _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoCopyWithImpl<
        $Res, _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl>
    implements
        _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWith<
            $Res> {
  __$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWithImpl(
      _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl _value,
      $Res Function(_$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdDate = freezed,
    Object? lastUpdated = freezed,
    Object? deletedDate = freezed,
    Object? user = freezed,
    Object? parentCommentId = freezed,
    Object? responseToUser = freezed,
    Object? responseToCommentId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
  }) {
    return _then(_$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedDate: freezed == deletedDate
          ? _value.deletedDate
          : deletedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      responseToUser: freezed == responseToUser
          ? _value.responseToUser
          : responseToUser // ignore: cast_nullable_to_non_nullable
              as UserDto2Dto?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl
    implements _ApiV1CommentsParentCommentIdRepliesPostResponseDto {
  _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdDate') this.createdDate,
      @JsonKey(name: 'lastUpdated') this.lastUpdated,
      @JsonKey(name: 'deletedDate') this.deletedDate,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'parentCommentId')
      @ApiUuidJsonConverter()
      this.parentCommentId,
      @JsonKey(name: 'responseToUser') this.responseToUser,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      this.responseToCommentId,
      @JsonKey(name: 'heartCount') this.heartCount,
      @JsonKey(name: 'heartedByUser') this.heartedByUser});

  factory _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  final DateTime? deletedDate;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto? user;
  @override
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? parentCommentId;
  @override
  @JsonKey(name: 'responseToUser')
  final UserDto2Dto? responseToUser;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? responseToCommentId;
  @override
  @JsonKey(name: 'heartCount')
  final int? heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;

  @override
  String toString() {
    return 'ApiV1CommentsParentCommentIdRepliesPostResponseDto(id: $id, content: $content, createdDate: $createdDate, lastUpdated: $lastUpdated, deletedDate: $deletedDate, user: $user, parentCommentId: $parentCommentId, responseToUser: $responseToUser, responseToCommentId: $responseToCommentId, heartCount: $heartCount, heartedByUser: $heartedByUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl &&
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

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWith<
          _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl>
      get copyWith =>
          __$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWithImpl<
                  _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1CommentsParentCommentIdRepliesPostResponseDto
    implements ApiV1CommentsParentCommentIdRepliesPostResponseDto {
  factory _ApiV1CommentsParentCommentIdRepliesPostResponseDto(
          {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
          @JsonKey(name: 'content') final String? content,
          @JsonKey(name: 'createdDate') final DateTime? createdDate,
          @JsonKey(name: 'lastUpdated') final DateTime? lastUpdated,
          @JsonKey(name: 'deletedDate') final DateTime? deletedDate,
          @JsonKey(name: 'user') final UserDtoDto? user,
          @JsonKey(name: 'parentCommentId')
          @ApiUuidJsonConverter()
          final ApiUuid? parentCommentId,
          @JsonKey(name: 'responseToUser') final UserDto2Dto? responseToUser,
          @JsonKey(name: 'responseToCommentId')
          @ApiUuidJsonConverter()
          final ApiUuid? responseToCommentId,
          @JsonKey(name: 'heartCount') final int? heartCount,
          @JsonKey(name: 'heartedByUser') final bool? heartedByUser}) =
      _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl;

  factory _ApiV1CommentsParentCommentIdRepliesPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdDate')
  DateTime? get createdDate;
  @override
  @JsonKey(name: 'lastUpdated')
  DateTime? get lastUpdated;
  @override
  @JsonKey(name: 'deletedDate')
  DateTime? get deletedDate;
  @override
  @JsonKey(name: 'user')
  UserDtoDto? get user;
  @override
  @JsonKey(name: 'parentCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get parentCommentId;
  @override
  @JsonKey(name: 'responseToUser')
  UserDto2Dto? get responseToUser;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId;
  @override
  @JsonKey(name: 'heartCount')
  int? get heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplCopyWith<
          _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1CommentsParentCommentIdRepliesPostRequestDto
    _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1CommentsParentCommentIdRepliesPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1CommentsParentCommentIdRepliesPostRequestDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToUserId')
  String? get responseToUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId => throw _privateConstructorUsedError;

  /// Serializes this ApiV1CommentsParentCommentIdRepliesPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWith<
          ApiV1CommentsParentCommentIdRepliesPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWith<
    $Res> {
  factory $ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWith(
          ApiV1CommentsParentCommentIdRepliesPostRequestDto value,
          $Res Function(ApiV1CommentsParentCommentIdRepliesPostRequestDto)
              then) =
      _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWithImpl<$Res,
          ApiV1CommentsParentCommentIdRepliesPostRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId});
}

/// @nodoc
class _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1CommentsParentCommentIdRepliesPostRequestDto>
    implements
        $ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWith<$Res> {
  _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _value.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWith<
        $Res>
    implements
        $ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWith(
          _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl value,
          $Res Function(_$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl)
              then) =
      __$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'responseToUserId') String? responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      ApiUuid? responseToCommentId});
}

/// @nodoc
class __$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWithImpl<
        $Res>
    extends _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoCopyWithImpl<
        $Res, _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl>
    implements
        _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWithImpl(
      _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl _value,
      $Res Function(_$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? responseToUserId = freezed,
    Object? responseToCommentId = freezed,
  }) {
    return _then(_$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      responseToUserId: freezed == responseToUserId
          ? _value.responseToUserId
          : responseToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToCommentId: freezed == responseToCommentId
          ? _value.responseToCommentId
          : responseToCommentId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl
    implements _ApiV1CommentsParentCommentIdRepliesPostRequestDto {
  _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'responseToUserId') this.responseToUserId,
      @JsonKey(name: 'responseToCommentId')
      @ApiUuidJsonConverter()
      this.responseToCommentId});

  factory _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'responseToUserId')
  final String? responseToUserId;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  final ApiUuid? responseToCommentId;

  @override
  String toString() {
    return 'ApiV1CommentsParentCommentIdRepliesPostRequestDto(content: $content, responseToUserId: $responseToUserId, responseToCommentId: $responseToCommentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl &&
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

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWith<
          _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl>
      get copyWith =>
          __$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWithImpl<
                  _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1CommentsParentCommentIdRepliesPostRequestDto
    implements ApiV1CommentsParentCommentIdRepliesPostRequestDto {
  factory _ApiV1CommentsParentCommentIdRepliesPostRequestDto(
          {@JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'responseToUserId') final String? responseToUserId,
          @JsonKey(name: 'responseToCommentId')
          @ApiUuidJsonConverter()
          final ApiUuid? responseToCommentId}) =
      _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl;

  factory _ApiV1CommentsParentCommentIdRepliesPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'responseToUserId')
  String? get responseToUserId;
  @override
  @JsonKey(name: 'responseToCommentId')
  @ApiUuidJsonConverter()
  ApiUuid? get responseToCommentId;

  /// Create a copy of ApiV1CommentsParentCommentIdRepliesPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplCopyWith<
          _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdCommentsPostResponseDto
    _$ApiV1StepsStepIdCommentsPostResponseDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsStepIdCommentsPostResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdCommentsPostResponseDto {
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDtoDto? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartCount')
  int? get heartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'replyCount')
  int? get replyCount => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdCommentsPostResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdCommentsPostResponseDtoCopyWith<
          ApiV1StepsStepIdCommentsPostResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdCommentsPostResponseDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdCommentsPostResponseDtoCopyWith(
          ApiV1StepsStepIdCommentsPostResponseDto value,
          $Res Function(ApiV1StepsStepIdCommentsPostResponseDto) then) =
      _$ApiV1StepsStepIdCommentsPostResponseDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdCommentsPostResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'replyCount') int? replyCount});

  $UserDtoDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$ApiV1StepsStepIdCommentsPostResponseDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdCommentsPostResponseDto>
    implements $ApiV1StepsStepIdCommentsPostResponseDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdCommentsPostResponseDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
    Object? stepId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
    Object? replyCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdCommentsPostResponseDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWith(
          _$ApiV1StepsStepIdCommentsPostResponseDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdCommentsPostResponseDtoImpl) then) =
      __$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() ApiUuid? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') DateTime? deletedAt,
      @JsonKey(name: 'user') UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() ApiUuid? stepId,
      @JsonKey(name: 'heartCount') int? heartCount,
      @JsonKey(name: 'heartedByUser') bool? heartedByUser,
      @JsonKey(name: 'replyCount') int? replyCount});

  @override
  $UserDtoDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdCommentsPostResponseDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdCommentsPostResponseDtoImpl>
    implements _$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdCommentsPostResponseDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdCommentsPostResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
    Object? stepId = freezed,
    Object? heartCount = freezed,
    Object? heartedByUser = freezed,
    Object? replyCount = freezed,
  }) {
    return _then(_$ApiV1StepsStepIdCommentsPostResponseDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDtoDto?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as ApiUuid?,
      heartCount: freezed == heartCount
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as int?,
      heartedByUser: freezed == heartedByUser
          ? _value.heartedByUser
          : heartedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdCommentsPostResponseDtoImpl
    implements _ApiV1StepsStepIdCommentsPostResponseDto {
  _$ApiV1StepsStepIdCommentsPostResponseDtoImpl(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() this.id,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'deletedAt') this.deletedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() this.stepId,
      @JsonKey(name: 'heartCount') this.heartCount,
      @JsonKey(name: 'heartedByUser') this.heartedByUser,
      @JsonKey(name: 'replyCount') this.replyCount});

  factory _$ApiV1StepsStepIdCommentsPostResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdCommentsPostResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  final ApiUuid? id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'user')
  final UserDtoDto? user;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  final ApiUuid? stepId;
  @override
  @JsonKey(name: 'heartCount')
  final int? heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  final bool? heartedByUser;
  @override
  @JsonKey(name: 'replyCount')
  final int? replyCount;

  @override
  String toString() {
    return 'ApiV1StepsStepIdCommentsPostResponseDto(id: $id, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, user: $user, stepId: $stepId, heartCount: $heartCount, heartedByUser: $heartedByUser, replyCount: $replyCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdCommentsPostResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.heartCount, heartCount) ||
                other.heartCount == heartCount) &&
            (identical(other.heartedByUser, heartedByUser) ||
                other.heartedByUser == heartedByUser) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdAt,
      updatedAt,
      deletedAt,
      user,
      stepId,
      heartCount,
      heartedByUser,
      replyCount);

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdCommentsPostResponseDtoImpl>
      get copyWith =>
          __$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWithImpl<
              _$ApiV1StepsStepIdCommentsPostResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdCommentsPostResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdCommentsPostResponseDto
    implements ApiV1StepsStepIdCommentsPostResponseDto {
  factory _ApiV1StepsStepIdCommentsPostResponseDto(
      {@JsonKey(name: 'id') @ApiUuidJsonConverter() final ApiUuid? id,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
      @JsonKey(name: 'deletedAt') final DateTime? deletedAt,
      @JsonKey(name: 'user') final UserDtoDto? user,
      @JsonKey(name: 'stepId') @ApiUuidJsonConverter() final ApiUuid? stepId,
      @JsonKey(name: 'heartCount') final int? heartCount,
      @JsonKey(name: 'heartedByUser') final bool? heartedByUser,
      @JsonKey(name: 'replyCount')
      final int? replyCount}) = _$ApiV1StepsStepIdCommentsPostResponseDtoImpl;

  factory _ApiV1StepsStepIdCommentsPostResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdCommentsPostResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @ApiUuidJsonConverter()
  ApiUuid? get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deletedAt')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'user')
  UserDtoDto? get user;
  @override
  @JsonKey(name: 'stepId')
  @ApiUuidJsonConverter()
  ApiUuid? get stepId;
  @override
  @JsonKey(name: 'heartCount')
  int? get heartCount;
  @override
  @JsonKey(name: 'heartedByUser')
  bool? get heartedByUser;
  @override
  @JsonKey(name: 'replyCount')
  int? get replyCount;

  /// Create a copy of ApiV1StepsStepIdCommentsPostResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdCommentsPostResponseDtoImplCopyWith<
          _$ApiV1StepsStepIdCommentsPostResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiV1StepsStepIdCommentsPostRequestDto
    _$ApiV1StepsStepIdCommentsPostRequestDtoFromJson(
        Map<String, dynamic> json) {
  return _ApiV1StepsStepIdCommentsPostRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ApiV1StepsStepIdCommentsPostRequestDto {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this ApiV1StepsStepIdCommentsPostRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiV1StepsStepIdCommentsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiV1StepsStepIdCommentsPostRequestDtoCopyWith<
          ApiV1StepsStepIdCommentsPostRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiV1StepsStepIdCommentsPostRequestDtoCopyWith<$Res> {
  factory $ApiV1StepsStepIdCommentsPostRequestDtoCopyWith(
          ApiV1StepsStepIdCommentsPostRequestDto value,
          $Res Function(ApiV1StepsStepIdCommentsPostRequestDto) then) =
      _$ApiV1StepsStepIdCommentsPostRequestDtoCopyWithImpl<$Res,
          ApiV1StepsStepIdCommentsPostRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$ApiV1StepsStepIdCommentsPostRequestDtoCopyWithImpl<$Res,
        $Val extends ApiV1StepsStepIdCommentsPostRequestDto>
    implements $ApiV1StepsStepIdCommentsPostRequestDtoCopyWith<$Res> {
  _$ApiV1StepsStepIdCommentsPostRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiV1StepsStepIdCommentsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWith<$Res>
    implements $ApiV1StepsStepIdCommentsPostRequestDtoCopyWith<$Res> {
  factory _$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWith(
          _$ApiV1StepsStepIdCommentsPostRequestDtoImpl value,
          $Res Function(_$ApiV1StepsStepIdCommentsPostRequestDtoImpl) then) =
      __$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWithImpl<$Res>
    extends _$ApiV1StepsStepIdCommentsPostRequestDtoCopyWithImpl<$Res,
        _$ApiV1StepsStepIdCommentsPostRequestDtoImpl>
    implements _$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWith<$Res> {
  __$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWithImpl(
      _$ApiV1StepsStepIdCommentsPostRequestDtoImpl _value,
      $Res Function(_$ApiV1StepsStepIdCommentsPostRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiV1StepsStepIdCommentsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ApiV1StepsStepIdCommentsPostRequestDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiV1StepsStepIdCommentsPostRequestDtoImpl
    implements _ApiV1StepsStepIdCommentsPostRequestDto {
  _$ApiV1StepsStepIdCommentsPostRequestDtoImpl(
      {@JsonKey(name: 'content') required this.content});

  factory _$ApiV1StepsStepIdCommentsPostRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiV1StepsStepIdCommentsPostRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'ApiV1StepsStepIdCommentsPostRequestDto(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiV1StepsStepIdCommentsPostRequestDtoImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of ApiV1StepsStepIdCommentsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdCommentsPostRequestDtoImpl>
      get copyWith =>
          __$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWithImpl<
              _$ApiV1StepsStepIdCommentsPostRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiV1StepsStepIdCommentsPostRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ApiV1StepsStepIdCommentsPostRequestDto
    implements ApiV1StepsStepIdCommentsPostRequestDto {
  factory _ApiV1StepsStepIdCommentsPostRequestDto(
          {@JsonKey(name: 'content') required final String content}) =
      _$ApiV1StepsStepIdCommentsPostRequestDtoImpl;

  factory _ApiV1StepsStepIdCommentsPostRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$ApiV1StepsStepIdCommentsPostRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of ApiV1StepsStepIdCommentsPostRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiV1StepsStepIdCommentsPostRequestDtoImplCopyWith<
          _$ApiV1StepsStepIdCommentsPostRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
