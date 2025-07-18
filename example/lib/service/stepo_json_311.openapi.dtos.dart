// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'stepo_json_311.openapi.dtos.freezed.dart';
part 'stepo_json_311.openapi.dtos.g.dart';

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
    @JsonKey(name: 'profile') required ProfileDto profile,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}

@freezed
sealed class BulkNotificationDto with _$BulkNotificationDto {
  factory BulkNotificationDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'notificationType')
    required NotificationTypeDto notificationType,
    @JsonKey(name: 'userIds') required List<String> userIds,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
  }) = _BulkNotificationDto;

  factory BulkNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$BulkNotificationDtoFromJson(json);
}

@freezed
sealed class CreateCommentInteractionDto with _$CreateCommentInteractionDto {
  factory CreateCommentInteractionDto(
          {@JsonKey(name: 'type') InteractionTypeDto? type}) =
      _CreateCommentInteractionDto;

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
  }) = _CreateStepDto;

  factory CreateStepDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepDtoFromJson(json);
}

@freezed
sealed class CreateStepInteractionDto with _$CreateStepInteractionDto {
  factory CreateStepInteractionDto(
          {@JsonKey(name: 'type') InteractionTypeDto? type}) =
      _CreateStepInteractionDto;

  factory CreateStepInteractionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateStepInteractionDtoFromJson(json);
}

@freezed
sealed class EditUserDto with _$EditUserDto {
  factory EditUserDto({
    @JsonKey(name: 'displayName') required String displayName,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'isPrivate') bool? isPrivate,
  }) = _EditUserDto;

  factory EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$EditUserDtoFromJson(json);
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
  String get name => toString().substring(23);
}

@freezed
sealed class ImageMetadataDto with _$ImageMetadataDto {
  factory ImageMetadataDto({
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'contentType') String? contentType,
  }) = _ImageMetadataDto;

  factory ImageMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$ImageMetadataDtoFromJson(json);
}

@freezed
sealed class ImagePresignedUrlDto with _$ImagePresignedUrlDto {
  factory ImagePresignedUrlDto({
    @JsonKey(name: 'uploadUrl') String? uploadUrl,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'expiresAt') DateTime? expiresAt,
    @JsonKey(name: 'headers') Map<String, String>? headers,
  }) = _ImagePresignedUrlDto;

  factory ImagePresignedUrlDto.fromJson(Map<String, dynamic> json) =>
      _$ImagePresignedUrlDtoFromJson(json);
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
  String get name => toString().substring(19);
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
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'completedDate') DateTime? completedDate,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'firstStepId') String? firstStepId,
    @JsonKey(name: 'finalStepId') String? finalStepId,
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
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'uid') String? uid,
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
  String get name => toString().substring(15);
}

@freezed
sealed class NotificationDto with _$NotificationDto {
  factory NotificationDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
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

enum NotificationTypeDto {
  @JsonValue('Global')
  global,
  @JsonValue('UserSpecific')
  userSpecific,
  @JsonValue('StepComment')
  stepComment,
  @JsonValue('CommentReply')
  commentReply,
  @JsonValue('NewFollower')
  newFollower,
  @JsonValue('JourneyUpdate')
  journeyUpdate,
  @JsonValue('StepInteraction')
  stepInteraction,
  @JsonValue('StepWithInteraction')
  stepWithInteraction,
  @JsonValue('SystemAlert')
  systemAlert,
}

extension NotificationTypeDtoExt on NotificationTypeDto {
  static final Map<String, NotificationTypeDto> _names = {
    'Global': NotificationTypeDto.global,
    'UserSpecific': NotificationTypeDto.userSpecific,
    'StepComment': NotificationTypeDto.stepComment,
    'CommentReply': NotificationTypeDto.commentReply,
    'NewFollower': NotificationTypeDto.newFollower,
    'JourneyUpdate': NotificationTypeDto.journeyUpdate,
    'StepInteraction': NotificationTypeDto.stepInteraction,
    'StepWithInteraction': NotificationTypeDto.stepWithInteraction,
    'SystemAlert': NotificationTypeDto.systemAlert,
  };
  static NotificationTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for NotificationTypeDto');
  String get name => toString().substring(20);
}

@freezed
sealed class ProfileDto with _$ProfileDto {
  factory ProfileDto({
    @JsonKey(name: 'userDetail') required UserDetailDto userDetail,
    @JsonKey(name: 'badgesCount') int? badgesCount,
    @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
    @JsonKey(name: 'supportersCount') int? supportersCount,
    @JsonKey(name: 'supportersUsers') List<UserDto>? supportersUsers,
    @JsonKey(name: 'followersCount') int? followersCount,
    @JsonKey(name: 'followingsCount') int? followingsCount,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}

@freezed
sealed class ReplyDto with _$ReplyDto {
  factory ReplyDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'deletedDate') DateTime? deletedDate,
    @JsonKey(name: 'user') UserDto? user,
    @JsonKey(name: 'parentCommentId') String? parentCommentId,
    @JsonKey(name: 'responseToUser') UserDto? responseToUser,
    @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
    @JsonKey(name: 'heartCount') int? heartCount,
    @JsonKey(name: 'heartedByUser') bool? heartedByUser,
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
    @JsonKey(name: 'entityId') String? entityId,
    @JsonKey(name: 'reporter') UserDto? reporter,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
  }) = _ReportDto;

  factory ReportDto.fromJson(Map<String, dynamic> json) =>
      _$ReportDtoFromJson(json);
}

@freezed
sealed class SendNotificationDto with _$SendNotificationDto {
  factory SendNotificationDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'notificationType')
    required NotificationTypeDto notificationType,
    @JsonKey(name: 'targetUserId') String? targetUserId,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
  }) = _SendNotificationDto;

  factory SendNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$SendNotificationDtoFromJson(json);
}

@freezed
sealed class StepCommentDto with _$StepCommentDto {
  factory StepCommentDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'deletedAt') DateTime? deletedAt,
    @JsonKey(name: 'user') UserDto? user,
    @JsonKey(name: 'stepId') String? stepId,
    @JsonKey(name: 'heartCount') int? heartCount,
    @JsonKey(name: 'heartedByUser') bool? heartedByUser,
    @JsonKey(name: 'replyCount') int? replyCount,
  }) = _StepCommentDto;

  factory StepCommentDto.fromJson(Map<String, dynamic> json) =>
      _$StepCommentDtoFromJson(json);
}

@freezed
sealed class StepDetailDto with _$StepDetailDto {
  factory StepDetailDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'journeyId') String? journeyId,
    @JsonKey(name: 'journey') JourneyDto? journey,
    @JsonKey(name: 'hearts') int? hearts,
    @JsonKey(name: 'heartedByUser') bool? heartedByUser,
    @JsonKey(name: 'shares') int? shares,
    @JsonKey(name: 'sharedByUser') bool? sharedByUser,
    @JsonKey(name: 'comments') int? comments,
    @JsonKey(name: 'commentedByUser') bool? commentedByUser,
    @JsonKey(name: 'userSteppedWithInteractions')
    int? userSteppedWithInteractions,
    @JsonKey(name: 'othersStepWith') int? othersStepWith,
    @JsonKey(name: 'othersStepWithUsers') List<UserDto>? othersStepWithUsers,
    @JsonKey(name: 'stepTypeString') String? stepTypeString,
    @JsonKey(name: 'media') List<StepMediaDto>? media,
  }) = _StepDetailDto;

  factory StepDetailDto.fromJson(Map<String, dynamic> json) =>
      _$StepDetailDtoFromJson(json);
}

@freezed
sealed class StepDto with _$StepDto {
  factory StepDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'journeyId') String? journeyId,
    @JsonKey(name: 'media') StepMediaDto? media,
  }) = _StepDto;

  factory StepDto.fromJson(Map<String, dynamic> json) =>
      _$StepDtoFromJson(json);
}

@freezed
sealed class StepMediaDto with _$StepMediaDto {
  factory StepMediaDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'stepId') String? stepId,
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
    @JsonKey(name: 'status') MediaStatusDto? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _StepMediaDto;

  factory StepMediaDto.fromJson(Map<String, dynamic> json) =>
      _$StepMediaDtoFromJson(json);
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
sealed class UpdateStepDto with _$UpdateStepDto {
  factory UpdateStepDto({@JsonKey(name: 'content') required String content}) =
      _UpdateStepDto;

  factory UpdateStepDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateStepDtoFromJson(json);
}

@freezed
sealed class UserDetailDto with _$UserDetailDto {
  factory UserDetailDto({
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'followingStatus') FollowingStatusEnumDto? followingStatus,
  }) = _UserDetailDto;

  factory UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);
}

@freezed
sealed class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'isPrivate') bool? isPrivate,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
sealed class VideoPreSignedUrlDto with _$VideoPreSignedUrlDto {
  factory VideoPreSignedUrlDto({
    @JsonKey(name: 'authorizationSignature') String? authorizationSignature,
    @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'libraryId') int? libraryId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'collectionId') String? collectionId,
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
