// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'stepo.openapi.dtos.freezed.dart';
part 'stepo.openapi.dtos.g.dart';

@freezed
sealed class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    int? statusCode,
    String? type,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

@freezed
sealed class AccountDto with _$AccountDto {
  factory AccountDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user') required UserDto user,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}

@freezed
sealed class AppFeedbackDto with _$AppFeedbackDto {
  factory AppFeedbackDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'feedbackType') required FeedbackTypeDto feedbackType,
    @JsonKey(name: 'status') required FeedbackStatusDto status,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'deviceInfo') String? deviceInfo,
    @JsonKey(name: 'appVersion') String? appVersion,
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'adminResponse') String? adminResponse,
    @JsonKey(name: 'respondedDate') DateTime? respondedDate,
  }) = _AppFeedbackDto;

  factory AppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$AppFeedbackDtoFromJson(json);
}

@freezed
sealed class BanUserDto with _$BanUserDto {
  factory BanUserDto({
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'isShadowBan') @Default(false) bool isShadowBan,
    @JsonKey(name: 'additionalNotes') String? additionalNotes,
  }) = _BanUserDto;

  factory BanUserDto.fromJson(Map<String, dynamic> json) =>
      _$BanUserDtoFromJson(json);
}

@freezed
sealed class CreateAppFeedbackDto with _$CreateAppFeedbackDto {
  factory CreateAppFeedbackDto({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'feedbackType') required FeedbackTypeDto feedbackType,
    @JsonKey(name: 'deviceInfo') String? deviceInfo,
    @JsonKey(name: 'appVersion') String? appVersion,
  }) = _CreateAppFeedbackDto;

  factory CreateAppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAppFeedbackDtoFromJson(json);
}

@freezed
sealed class CreateCommentInteractionDto with _$CreateCommentInteractionDto {
  factory CreateCommentInteractionDto(
      {@JsonKey(name: 'type')
      @Default(InteractionTypeDto.heart)
      InteractionTypeDto type}) = _CreateCommentInteractionDto;

  factory CreateCommentInteractionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentInteractionDtoFromJson(json);
}

@freezed
sealed class CreateReplyCommentDto with _$CreateReplyCommentDto {
  factory CreateReplyCommentDto({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'responseToUserId') String? responseToUserId,
    @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
  }) = _CreateReplyCommentDto;

  factory CreateReplyCommentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReplyCommentDtoFromJson(json);
}

@freezed
sealed class CreateStepCommentDto with _$CreateStepCommentDto {
  factory CreateStepCommentDto(
          {@JsonKey(name: 'content') required String content}) =
      _CreateStepCommentDto;

  factory CreateStepCommentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepCommentDtoFromJson(json);
}

@freezed
sealed class CreateStepDto with _$CreateStepDto {
  factory CreateStepDto({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'journeyId') required String journeyId,
    @JsonKey(name: 'isFinalStep') @Default(false) bool isFinalStep,
  }) = _CreateStepDto;

  factory CreateStepDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepDtoFromJson(json);
}

@freezed
sealed class CreateStepInteractionDto with _$CreateStepInteractionDto {
  factory CreateStepInteractionDto(
      {@JsonKey(name: 'type')
      @Default(InteractionTypeDto.heart)
      InteractionTypeDto type}) = _CreateStepInteractionDto;

  factory CreateStepInteractionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepInteractionDtoFromJson(json);
}

@freezed
sealed class DeviceTokenDto with _$DeviceTokenDto {
  factory DeviceTokenDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'platform') String? platform,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'lastUsed') DateTime? lastUsed,
    @JsonKey(name: 'appVersion') String? appVersion,
    @JsonKey(name: 'deviceModel') String? deviceModel,
    @JsonKey(name: 'deviceName') String? deviceName,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
  }) = _DeviceTokenDto;

  factory DeviceTokenDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenDtoFromJson(json);
}

@freezed
sealed class EditUserDto with _$EditUserDto {
  factory EditUserDto({
    @JsonKey(name: 'displayName') required String displayName,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'isPrivate') @Default(false) bool isPrivate,
  }) = _EditUserDto;

  factory EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$EditUserDtoFromJson(json);
}

enum FeedbackStatusDto {
  @JsonValue('Open')
  open,
  @JsonValue('InProgress')
  inProgress,
  @JsonValue('Resolved')
  resolved,
  @JsonValue('Closed')
  closed,
  @JsonValue('Duplicate')
  duplicate,
}

extension FeedbackStatusDtoExt on FeedbackStatusDto {
  static final Map<String, FeedbackStatusDto> _names = {
    'Open': FeedbackStatusDto.open,
    'InProgress': FeedbackStatusDto.inProgress,
    'Resolved': FeedbackStatusDto.resolved,
    'Closed': FeedbackStatusDto.closed,
    'Duplicate': FeedbackStatusDto.duplicate,
  };
  static FeedbackStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FeedbackStatusDto');
  String get name => switch (this) {
        FeedbackStatusDto.open => 'Open',
        FeedbackStatusDto.inProgress => 'InProgress',
        FeedbackStatusDto.resolved => 'Resolved',
        FeedbackStatusDto.closed => 'Closed',
        FeedbackStatusDto.duplicate => 'Duplicate',
      };
}

enum FeedbackTypeDto {
  @JsonValue('BugReport')
  bugReport,
  @JsonValue('FeatureRequest')
  featureRequest,
  @JsonValue('GeneralFeedback')
  generalFeedback,
  @JsonValue('UiUxIssue')
  uiUxIssue,
  @JsonValue('Performance')
  performance,
  @JsonValue('Other')
  other,
}

extension FeedbackTypeDtoExt on FeedbackTypeDto {
  static final Map<String, FeedbackTypeDto> _names = {
    'BugReport': FeedbackTypeDto.bugReport,
    'FeatureRequest': FeedbackTypeDto.featureRequest,
    'GeneralFeedback': FeedbackTypeDto.generalFeedback,
    'UiUxIssue': FeedbackTypeDto.uiUxIssue,
    'Performance': FeedbackTypeDto.performance,
    'Other': FeedbackTypeDto.other,
  };
  static FeedbackTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FeedbackTypeDto');
  String get name => switch (this) {
        FeedbackTypeDto.bugReport => 'BugReport',
        FeedbackTypeDto.featureRequest => 'FeatureRequest',
        FeedbackTypeDto.generalFeedback => 'GeneralFeedback',
        FeedbackTypeDto.uiUxIssue => 'UiUxIssue',
        FeedbackTypeDto.performance => 'Performance',
        FeedbackTypeDto.other => 'Other',
      };
}

@freezed
sealed class FeedMetricsDto with _$FeedMetricsDto {
  factory FeedMetricsDto({
    @JsonKey(name: 'followingCount') required int followingCount,
    @JsonKey(name: 'hotContentRatio') required num hotContentRatio,
    @JsonKey(name: 'followingContentRatio') required num followingContentRatio,
    @JsonKey(name: 'lastRefresh') required DateTime lastRefresh,
  }) = _FeedMetricsDto;

  factory FeedMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$FeedMetricsDtoFromJson(json);
}

@freezed
sealed class FollowingResultDto with _$FollowingResultDto {
  factory FollowingResultDto({
    @JsonKey(name: 'status') required FollowingStatusEnumDto status,
    @JsonKey(name: 'message') String? message,
  }) = _FollowingResultDto;

  factory FollowingResultDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingResultDtoFromJson(json);
}

@freezed
sealed class FollowingStatusDto with _$FollowingStatusDto {
  factory FollowingStatusDto(
          {@JsonKey(name: 'status') required FollowingStatusEnumDto status}) =
      _FollowingStatusDto;

  factory FollowingStatusDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingStatusDtoFromJson(json);
}

enum FollowingStatusEnumDto {
  @JsonValue('NotFollowing')
  notFollowing,
  @JsonValue('Following')
  following,
  @JsonValue('Requested')
  requested,
}

extension FollowingStatusEnumDtoExt on FollowingStatusEnumDto {
  static final Map<String, FollowingStatusEnumDto> _names = {
    'NotFollowing': FollowingStatusEnumDto.notFollowing,
    'Following': FollowingStatusEnumDto.following,
    'Requested': FollowingStatusEnumDto.requested,
  };
  static FollowingStatusEnumDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FollowingStatusEnumDto');
  String get name => switch (this) {
        FollowingStatusEnumDto.notFollowing => 'NotFollowing',
        FollowingStatusEnumDto.following => 'Following',
        FollowingStatusEnumDto.requested => 'Requested',
      };
}

@freezed
sealed class FollowRequestDto with _$FollowRequestDto {
  factory FollowRequestDto({
    @JsonKey(name: 'requesterId') required String requesterId,
    @JsonKey(name: 'requester') required UserDetailDto requester,
    @JsonKey(name: 'requestDate') required DateTime requestDate,
  }) = _FollowRequestDto;

  factory FollowRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestDtoFromJson(json);
}

@freezed
sealed class FollowRequestResultDto with _$FollowRequestResultDto {
  factory FollowRequestResultDto({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'newStatus') required FollowingStatusEnumDto newStatus,
    @JsonKey(name: 'message') String? message,
  }) = _FollowRequestResultDto;

  factory FollowRequestResultDto.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestResultDtoFromJson(json);
}

@freezed
sealed class InteractionResultDto with _$InteractionResultDto {
  factory InteractionResultDto({
    @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
    @JsonKey(name: 'isLiked') bool? isLiked,
    @JsonKey(name: 'totalLikes') int? totalLikes,
  }) = _InteractionResultDto;

  factory InteractionResultDto.fromJson(Map<String, dynamic> json) =>
      _$InteractionResultDtoFromJson(json);
}

enum InteractionTypeDto {
  @JsonValue('Heart')
  heart,
  @JsonValue('Share')
  share,
  @JsonValue('Comment')
  comment,
}

extension InteractionTypeDtoExt on InteractionTypeDto {
  static final Map<String, InteractionTypeDto> _names = {
    'Heart': InteractionTypeDto.heart,
    'Share': InteractionTypeDto.share,
    'Comment': InteractionTypeDto.comment,
  };
  static InteractionTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for InteractionTypeDto');
  String get name => switch (this) {
        InteractionTypeDto.heart => 'Heart',
        InteractionTypeDto.share => 'Share',
        InteractionTypeDto.comment => 'Comment',
      };
}

@freezed
sealed class JourneyCreatingDto with _$JourneyCreatingDto {
  factory JourneyCreatingDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'firstStepContent') required String firstStepContent,
  }) = _JourneyCreatingDto;

  factory JourneyCreatingDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyCreatingDtoFromJson(json);
}

@freezed
sealed class JourneyDayCalendarDto with _$JourneyDayCalendarDto {
  factory JourneyDayCalendarDto({
    @JsonKey(name: 'lastStep') required StepDto lastStep,
    @JsonKey(name: 'totalSteps') @Default(0) int totalSteps,
    @JsonKey(name: 'date') required DateTime date,
  }) = _JourneyDayCalendarDto;

  factory JourneyDayCalendarDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyDayCalendarDtoFromJson(json);
}

@freezed
sealed class JourneyDto with _$JourneyDto {
  factory JourneyDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'lastUpdated') required DateTime lastUpdated,
    @JsonKey(name: 'status') @Default('Open') String status,
    @JsonKey(name: 'completedDate') DateTime? completedDate,
    @JsonKey(name: 'userId') @Default('') String userId,
    @JsonKey(name: 'firstStepId') String? firstStepId,
    @JsonKey(name: 'finalStepId') String? finalStepId,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'isUnavailable') @Default(false) bool isUnavailable,
    @JsonKey(name: 'unavailableReason') @Default('') String unavailableReason,
  }) = _JourneyDto;

  factory JourneyDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyDtoFromJson(json);
}

@freezed
sealed class JourneyInDetailDto with _$JourneyInDetailDto {
  factory JourneyInDetailDto({
    @JsonKey(name: 'journey') required JourneyDto journey,
    @JsonKey(name: 'stepsCount') required int stepsCount,
    @JsonKey(name: 'lastStepDate') required DateTime lastStepDate,
    @JsonKey(name: 'stepperCount') int? stepperCount,
    @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
    @JsonKey(name: 'starterCount') int? starterCount,
    @JsonKey(name: 'latestStarters') List<UserDto>? latestStarters,
    @JsonKey(name: 'companionCount') int? companionCount,
    @JsonKey(name: 'latestCompanions') List<UserDto>? latestCompanions,
    @JsonKey(name: 'celebratorCount') int? celebratorCount,
    @JsonKey(name: 'latestCelebrators') List<UserDto>? latestCelebrators,
    @JsonKey(name: 'companionProgress') @Default(0) num companionProgress,
    @JsonKey(name: 'companionProgressMessage') String? companionProgressMessage,
  }) = _JourneyInDetailDto;

  factory JourneyInDetailDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyInDetailDtoFromJson(json);
}

@freezed
sealed class JourneyInProfileDto with _$JourneyInProfileDto {
  factory JourneyInProfileDto({
    @JsonKey(name: 'journey') required JourneyDto journey,
    @JsonKey(name: 'stepsCount') required int stepsCount,
    @JsonKey(name: 'thumbnailSteps') required List<StepMediaDto> thumbnailSteps,
  }) = _JourneyInProfileDto;

  factory JourneyInProfileDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyInProfileDtoFromJson(json);
}

@freezed
sealed class LoginDto with _$LoginDto {
  factory LoginDto({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}

@freezed
sealed class LoginResponseDto with _$LoginResponseDto {
  factory LoginResponseDto({
    @JsonKey(name: 'token') @Default('') String token,
    @JsonKey(name: 'uid') @Default('') String uid,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}

enum MediaStatusDto {
  @JsonValue('Pending')
  pending,
  @JsonValue('Processing')
  processing,
  @JsonValue('Completed')
  completed,
  @JsonValue('Failed')
  failed,
}

extension MediaStatusDtoExt on MediaStatusDto {
  static final Map<String, MediaStatusDto> _names = {
    'Pending': MediaStatusDto.pending,
    'Processing': MediaStatusDto.processing,
    'Completed': MediaStatusDto.completed,
    'Failed': MediaStatusDto.failed,
  };
  static MediaStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for MediaStatusDto');
  String get name => switch (this) {
        MediaStatusDto.pending => 'Pending',
        MediaStatusDto.processing => 'Processing',
        MediaStatusDto.completed => 'Completed',
        MediaStatusDto.failed => 'Failed',
      };
}

@freezed
sealed class NotificationDto with _$NotificationDto {
  factory NotificationDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'body') @Default('') String body,
    @JsonKey(name: 'notificationType') NotificationTypeDto? notificationType,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'sourceUser') UserDetailDto? sourceUser,
  }) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);
}

@freezed
sealed class NotificationPagedDto with _$NotificationPagedDto {
  factory NotificationPagedDto({
    @JsonKey(name: 'notifications') List<NotificationDto>? notifications,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'unreadCount') int? unreadCount,
    @JsonKey(name: 'hasMore') bool? hasMore,
  }) = _NotificationPagedDto;

  factory NotificationPagedDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPagedDtoFromJson(json);
}

@freezed
sealed class NotificationPreferencesDto with _$NotificationPreferencesDto {
  factory NotificationPreferencesDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'pushNotifications') bool? pushNotifications,
    @JsonKey(name: 'mentions') bool? mentions,
    @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
    @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
    @JsonKey(name: 'trendingJourneySuggestions')
    bool? trendingJourneySuggestions,
    @JsonKey(name: 'followSuggestions') bool? followSuggestions,
  }) = _NotificationPreferencesDto;

  factory NotificationPreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesDtoFromJson(json);
}

enum NotificationTypeDto {
  @JsonValue('StepWithHeart')
  stepWithHeart,
  @JsonValue('StepWithShare')
  stepWithShare,
  @JsonValue('StepWithComment')
  stepWithComment,
  @JsonValue('RegularHeart')
  regularHeart,
  @JsonValue('RegularShare')
  regularShare,
  @JsonValue('RegularComment')
  regularComment,
  @JsonValue('CommentReply')
  commentReply,
  @JsonValue('CommentMention')
  commentMention,
  @JsonValue('NewFollower')
  newFollower,
  @JsonValue('FollowRequestAccepted')
  followRequestAccepted,
  @JsonValue('JourneyAchievement')
  journeyAchievement,
  @JsonValue('JourneyFirstStep')
  journeyFirstStep,
  @JsonValue('NewStepAlert')
  newStepAlert,
  @JsonValue('SystemAnnouncement')
  systemAnnouncement,
  @JsonValue('SystemMaintenance')
  systemMaintenance,
  @JsonValue('SystemUpdate')
  systemUpdate,
  @JsonValue('ModerationAlert')
  moderationAlert,
  @JsonValue('AccountWarning')
  accountWarning,
  @JsonValue('SecurityAlert')
  securityAlert,
}

extension NotificationTypeDtoExt on NotificationTypeDto {
  static final Map<String, NotificationTypeDto> _names = {
    'StepWithHeart': NotificationTypeDto.stepWithHeart,
    'StepWithShare': NotificationTypeDto.stepWithShare,
    'StepWithComment': NotificationTypeDto.stepWithComment,
    'RegularHeart': NotificationTypeDto.regularHeart,
    'RegularShare': NotificationTypeDto.regularShare,
    'RegularComment': NotificationTypeDto.regularComment,
    'CommentReply': NotificationTypeDto.commentReply,
    'CommentMention': NotificationTypeDto.commentMention,
    'NewFollower': NotificationTypeDto.newFollower,
    'FollowRequestAccepted': NotificationTypeDto.followRequestAccepted,
    'JourneyAchievement': NotificationTypeDto.journeyAchievement,
    'JourneyFirstStep': NotificationTypeDto.journeyFirstStep,
    'NewStepAlert': NotificationTypeDto.newStepAlert,
    'SystemAnnouncement': NotificationTypeDto.systemAnnouncement,
    'SystemMaintenance': NotificationTypeDto.systemMaintenance,
    'SystemUpdate': NotificationTypeDto.systemUpdate,
    'ModerationAlert': NotificationTypeDto.moderationAlert,
    'AccountWarning': NotificationTypeDto.accountWarning,
    'SecurityAlert': NotificationTypeDto.securityAlert,
  };
  static NotificationTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for NotificationTypeDto');
  String get name => switch (this) {
        NotificationTypeDto.stepWithHeart => 'StepWithHeart',
        NotificationTypeDto.stepWithShare => 'StepWithShare',
        NotificationTypeDto.stepWithComment => 'StepWithComment',
        NotificationTypeDto.regularHeart => 'RegularHeart',
        NotificationTypeDto.regularShare => 'RegularShare',
        NotificationTypeDto.regularComment => 'RegularComment',
        NotificationTypeDto.commentReply => 'CommentReply',
        NotificationTypeDto.commentMention => 'CommentMention',
        NotificationTypeDto.newFollower => 'NewFollower',
        NotificationTypeDto.followRequestAccepted => 'FollowRequestAccepted',
        NotificationTypeDto.journeyAchievement => 'JourneyAchievement',
        NotificationTypeDto.journeyFirstStep => 'JourneyFirstStep',
        NotificationTypeDto.newStepAlert => 'NewStepAlert',
        NotificationTypeDto.systemAnnouncement => 'SystemAnnouncement',
        NotificationTypeDto.systemMaintenance => 'SystemMaintenance',
        NotificationTypeDto.systemUpdate => 'SystemUpdate',
        NotificationTypeDto.moderationAlert => 'ModerationAlert',
        NotificationTypeDto.accountWarning => 'AccountWarning',
        NotificationTypeDto.securityAlert => 'SecurityAlert',
      };
}

enum UserRoleDto {
  @JsonValue('Moderator')
  moderator,
  @JsonValue('Admin')
  admin,
  @JsonValue('SuperAdmin')
  superAdmin,
}

extension UserRoleDtoExt on UserRoleDto {
  static final Map<String, UserRoleDto> _names = {
    'Moderator': UserRoleDto.moderator,
    'Admin': UserRoleDto.admin,
    'SuperAdmin': UserRoleDto.superAdmin,
  };
  static UserRoleDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for UserRoleDto');
  String get name => switch (this) {
        UserRoleDto.moderator => 'Moderator',
        UserRoleDto.admin => 'Admin',
        UserRoleDto.superAdmin => 'SuperAdmin',
      };
}

@freezed
sealed class PageResponseOfAppFeedbackDto with _$PageResponseOfAppFeedbackDto {
  factory PageResponseOfAppFeedbackDto({
    @JsonKey(name: 'items') List<AppFeedbackDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'totalPages') int? totalPages,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
  }) = _PageResponseOfAppFeedbackDto;

  factory PageResponseOfAppFeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$PageResponseOfAppFeedbackDtoFromJson(json);
}

@freezed
sealed class ProfileDto with _$ProfileDto {
  factory ProfileDto({
    @JsonKey(name: 'userDetail') required UserDetailDto userDetail,
    @JsonKey(name: 'badgesCount') @Default(0) int badgesCount,
    @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
    @JsonKey(name: 'supportersCount') @Default(0) int supportersCount,
    @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
    @JsonKey(name: 'followersCount') @Default(0) int followersCount,
    @JsonKey(name: 'followingsCount') @Default(0) int followingsCount,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}

@freezed
sealed class RegisterDeviceDto with _$RegisterDeviceDto {
  factory RegisterDeviceDto({
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'platform') String? platform,
    @JsonKey(name: 'appVersion') String? appVersion,
    @JsonKey(name: 'deviceModel') String? deviceModel,
    @JsonKey(name: 'deviceName') String? deviceName,
  }) = _RegisterDeviceDto;

  factory RegisterDeviceDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceDtoFromJson(json);
}

@freezed
sealed class RemoveContentDto with _$RemoveContentDto {
  factory RemoveContentDto({
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'additionalNotes') String? additionalNotes,
  }) = _RemoveContentDto;

  factory RemoveContentDto.fromJson(Map<String, dynamic> json) =>
      _$RemoveContentDtoFromJson(json);
}

@freezed
sealed class ReplyDto with _$ReplyDto {
  factory ReplyDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'lastUpdated') required DateTime lastUpdated,
    @JsonKey(name: 'deletedDate') DateTime? deletedDate,
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'parentCommentId') required String parentCommentId,
    @JsonKey(name: 'responseToUser') UserDto? responseToUser,
    @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
    @JsonKey(name: 'heartCount') @Default(0) int heartCount,
    @JsonKey(name: 'heartedByUser') @Default(false) bool heartedByUser,
  }) = _ReplyDto;

  factory ReplyDto.fromJson(Map<String, dynamic> json) =>
      _$ReplyDtoFromJson(json);
}

@freezed
sealed class ReportCreatingDto with _$ReportCreatingDto {
  factory ReportCreatingDto({
    @JsonKey(name: 'entityType') required String entityType,
    @JsonKey(name: 'entityId') required String entityId,
    @JsonKey(name: 'reason') required String reason,
  }) = _ReportCreatingDto;

  factory ReportCreatingDto.fromJson(Map<String, dynamic> json) =>
      _$ReportCreatingDtoFromJson(json);
}

@freezed
sealed class ReportDto with _$ReportDto {
  factory ReportDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'entityType') required String entityType,
    @JsonKey(name: 'entityId') @Default('') String entityId,
    @JsonKey(name: 'reporter') UserDto? reporter,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
  }) = _ReportDto;

  factory ReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReportDtoFromJson(json);
}

@freezed
sealed class StepCommentDto with _$StepCommentDto {
  factory StepCommentDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'lastUpdated') required DateTime lastUpdated,
    @JsonKey(name: 'deletedDate') DateTime? deletedDate,
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'stepId') required String stepId,
    @JsonKey(name: 'heartCount') @Default(0) int heartCount,
    @JsonKey(name: 'heartedByUser') @Default(false) bool heartedByUser,
    @JsonKey(name: 'replyCount') @Default(0) int replyCount,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'isUnavailable') @Default(false) bool isUnavailable,
    @JsonKey(name: 'unavailableReason') @Default('') String unavailableReason,
  }) = _StepCommentDto;

  factory StepCommentDto.fromJson(Map<String, dynamic> json) =>
      _$StepCommentDtoFromJson(json);
}

@freezed
sealed class StepDetailDto with _$StepDetailDto {
  factory StepDetailDto({
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'journey') required JourneyDto journey,
    @JsonKey(name: 'hearts') @Default(0) int hearts,
    @JsonKey(name: 'heartedByUser') @Default(false) bool heartedByUser,
    @JsonKey(name: 'shares') @Default(0) int shares,
    @JsonKey(name: 'sharedByUser') @Default(false) bool sharedByUser,
    @JsonKey(name: 'comments') @Default(0) int comments,
    @JsonKey(name: 'commentedByUser') @Default(false) bool commentedByUser,
    @JsonKey(name: 'userSteppedWithInteractions')
    @Default(0)
    int userSteppedWithInteractions,
    @JsonKey(name: 'othersStepWith') @Default(0) int othersStepWith,
    @JsonKey(name: 'othersStepWithUsers') List<UserDto>? othersStepWithUsers,
    @JsonKey(name: 'stepType') StepTypeDto? stepType,
    @JsonKey(name: 'media') List<StepMediaDto>? media,
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'lastUpdated') required DateTime lastUpdated,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'journeyId') required String journeyId,
    @JsonKey(name: 'stepWithWindowHours') required num stepWithWindowHours,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'isUnavailable') @Default(false) bool isUnavailable,
    @JsonKey(name: 'unavailableReason') @Default('') String unavailableReason,
  }) = _StepDetailDto;

  factory StepDetailDto.fromJson(Map<String, dynamic> json) =>
      _$StepDetailDtoFromJson(json);
}

@freezed
sealed class StepDto with _$StepDto {
  factory StepDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'createdDate') required DateTime createdDate,
    @JsonKey(name: 'lastUpdated') required DateTime lastUpdated,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'journeyId') required String journeyId,
    @JsonKey(name: 'stepWithWindowHours') required num stepWithWindowHours,
    @JsonKey(name: 'media') StepMediaDto? media,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'isUnavailable') @Default(false) bool isUnavailable,
    @JsonKey(name: 'unavailableReason') @Default('') String unavailableReason,
  }) = _StepDto;

  factory StepDto.fromJson(Map<String, dynamic> json) =>
      _$StepDtoFromJson(json);
}

@freezed
sealed class StepMediaDto with _$StepMediaDto {
  factory StepMediaDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'stepId') String? stepId,
    @JsonKey(name: 'mediaType') @Default('') String mediaType,
    @JsonKey(name: 'originalUrl') @Default('') String originalUrl,
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
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _StepMediaDto;

  factory StepMediaDto.fromJson(Map<String, dynamic> json) =>
      _$StepMediaDtoFromJson(json);
}

enum StepTypeDto {
  @JsonValue('FirstStep')
  firstStep,
  @JsonValue('FinalStep')
  finalStep,
  @JsonValue('RegularStep')
  regularStep,
}

extension StepTypeDtoExt on StepTypeDto {
  static final Map<String, StepTypeDto> _names = {
    'FirstStep': StepTypeDto.firstStep,
    'FinalStep': StepTypeDto.finalStep,
    'RegularStep': StepTypeDto.regularStep,
  };
  static StepTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for StepTypeDto');
  String get name => switch (this) {
        StepTypeDto.firstStep => 'FirstStep',
        StepTypeDto.finalStep => 'FinalStep',
        StepTypeDto.regularStep => 'RegularStep',
      };
}

@freezed
sealed class TestNotificationDto with _$TestNotificationDto {
  factory TestNotificationDto({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'deviceTokens') List<String>? deviceTokens,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
  }) = _TestNotificationDto;

  factory TestNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$TestNotificationDtoFromJson(json);
}

@freezed
sealed class TestNotificationResultDto with _$TestNotificationResultDto {
  factory TestNotificationResultDto({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _TestNotificationResultDto;

  factory TestNotificationResultDto.fromJson(Map<String, dynamic> json) =>
      _$TestNotificationResultDtoFromJson(json);
}

@freezed
sealed class TokenValidationResultDto with _$TokenValidationResultDto {
  factory TokenValidationResultDto({
    @JsonKey(name: 'validatedCount') int? validatedCount,
    @JsonKey(name: 'invalidatedCount') int? invalidatedCount,
    @JsonKey(name: 'invalidTokens') List<String>? invalidTokens,
  }) = _TokenValidationResultDto;

  factory TokenValidationResultDto.fromJson(Map<String, dynamic> json) =>
      _$TokenValidationResultDtoFromJson(json);
}

@freezed
sealed class UpdateFeedbackStatusDto with _$UpdateFeedbackStatusDto {
  factory UpdateFeedbackStatusDto({
    @JsonKey(name: 'status') required FeedbackStatusDto status,
    @JsonKey(name: 'adminResponse') String? adminResponse,
  }) = _UpdateFeedbackStatusDto;

  factory UpdateFeedbackStatusDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFeedbackStatusDtoFromJson(json);
}

@freezed
sealed class UpdateJourneyDto with _$UpdateJourneyDto {
  factory UpdateJourneyDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
  }) = _UpdateJourneyDto;

  factory UpdateJourneyDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateJourneyDtoFromJson(json);
}

@freezed
sealed class UpdatePreferencesDto with _$UpdatePreferencesDto {
  factory UpdatePreferencesDto({
    @JsonKey(name: 'pushNotifications') bool? pushNotifications,
    @JsonKey(name: 'mentions') bool? mentions,
    @JsonKey(name: 'oldStepNotifications') bool? oldStepNotifications,
    @JsonKey(name: 'trendingStepSuggestions') bool? trendingStepSuggestions,
    @JsonKey(name: 'trendingJourneySuggestions')
    bool? trendingJourneySuggestions,
    @JsonKey(name: 'followSuggestions') bool? followSuggestions,
  }) = _UpdatePreferencesDto;

  factory UpdatePreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePreferencesDtoFromJson(json);
}

@freezed
sealed class UpdateStepDto with _$UpdateStepDto {
  factory UpdateStepDto({@JsonKey(name: 'content') required String content}) =
      _UpdateStepDto;

  factory UpdateStepDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStepDtoFromJson(json);
}

@freezed
sealed class UpdateUserStatusDto with _$UpdateUserStatusDto {
  factory UpdateUserStatusDto({
    @JsonKey(name: 'status') required UserStatusDto status,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'additionalNotes') String? additionalNotes,
  }) = _UpdateUserStatusDto;

  factory UpdateUserStatusDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserStatusDtoFromJson(json);
}

@freezed
sealed class UserDetailDto with _$UserDetailDto {
  factory UserDetailDto({
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'followingStatus')
    @Default(FollowingStatusEnumDto.notFollowing)
    FollowingStatusEnumDto followingStatus,
  }) = _UserDetailDto;

  factory UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);
}

@freezed
sealed class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'displayName') @Default('') String displayName,
    @JsonKey(name: 'username') @Default('') String username,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'profilePictureUrl') @Default('') String profilePictureUrl,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'isPrivate') @Default(false) bool isPrivate,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'status')
    @Default(UserStatusDto.active)
    UserStatusDto status,
    @JsonKey(name: 'isRestricted') @Default(false) bool isRestricted,
    @JsonKey(name: 'role') UserRoleDto? role,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

enum UserStatusDto {
  @JsonValue('Active')
  active,
  @JsonValue('ShadowBanned')
  shadowBanned,
  @JsonValue('HardBanned')
  hardBanned,
  @JsonValue('Deactivated')
  deactivated,
}

extension UserStatusDtoExt on UserStatusDto {
  static final Map<String, UserStatusDto> _names = {
    'Active': UserStatusDto.active,
    'ShadowBanned': UserStatusDto.shadowBanned,
    'HardBanned': UserStatusDto.hardBanned,
    'Deactivated': UserStatusDto.deactivated,
  };
  static UserStatusDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for UserStatusDto');
  String get name => switch (this) {
        UserStatusDto.active => 'Active',
        UserStatusDto.shadowBanned => 'ShadowBanned',
        UserStatusDto.hardBanned => 'HardBanned',
        UserStatusDto.deactivated => 'Deactivated',
      };
}

@freezed
sealed class VideoPreSignedUrlDto with _$VideoPreSignedUrlDto {
  factory VideoPreSignedUrlDto({
    @JsonKey(name: 'authorizationSignature')
    @Default('')
    String authorizationSignature,
    @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'libraryId') int? libraryId,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'collectionId') @Default('') String collectionId,
    @JsonKey(name: 'media') StepMediaDto? media,
  }) = _VideoPreSignedUrlDto;

  factory VideoPreSignedUrlDto.fromJson(Map<String, dynamic> json) =>
      _$VideoPreSignedUrlDtoFromJson(json);
}

@freezed
sealed class VideoStatusDto with _$VideoStatusDto {
  factory VideoStatusDto({
    @JsonKey(name: 'videoLibraryId') int? videoLibraryId,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'status') int? status,
  }) = _VideoStatusDto;

  factory VideoStatusDto.fromJson(Map<String, dynamic> json) =>
      _$VideoStatusDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
