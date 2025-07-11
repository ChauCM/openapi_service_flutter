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
    @JsonKey(name: 'notificationType') required int notificationType,
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
  factory CreateCommentInteractionDto({@JsonKey(name: 'type') int? type}) =
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
  factory CreateStepInteractionDto({@JsonKey(name: 'type') int? type}) =
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
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') String? message,
  }) = _FollowingResultDto;

  factory FollowingResultDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingResultDtoFromJson(json);
}

@freezed
sealed class FollowingStatusDto with _$FollowingStatusDto {
  factory FollowingStatusDto({@JsonKey(name: 'status') required int status}) =
      _FollowingStatusDto;

  factory FollowingStatusDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingStatusDtoFromJson(json);
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
sealed class JourneyDto2Dto with _$JourneyDto2Dto {
  factory JourneyDto2Dto({
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
  }) = _JourneyDto2Dto;

  factory JourneyDto2Dto.fromJson(Map<String, dynamic> json) =>
      _$JourneyDto2DtoFromJson(json);
}

@freezed
sealed class JourneyInDetailDto with _$JourneyInDetailDto {
  factory JourneyInDetailDto({
    @JsonKey(name: 'journey') required JourneyDto2Dto journey,
    @JsonKey(name: 'stepsCount') required int stepsCount,
    @JsonKey(name: 'lastStepDate') required DateTime lastStepDate,
    @JsonKey(name: 'stepperCount') int? stepperCount,
    @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
    @JsonKey(name: 'starterCount') int? starterCount,
    @JsonKey(name: 'latestStarters') List<dynamic>? latestStarters,
    @JsonKey(name: 'companionCount') int? companionCount,
    @JsonKey(name: 'latestCompanions') List<dynamic>? latestCompanions,
    @JsonKey(name: 'celebratorCount') int? celebratorCount,
    @JsonKey(name: 'latestCelebrators') List<dynamic>? latestCelebrators,
  }) = _JourneyInDetailDto;

  factory JourneyInDetailDto.fromJson(Map<String, dynamic> json) =>
      _$JourneyInDetailDtoFromJson(json);
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

@freezed
sealed class NotificationDto with _$NotificationDto {
  factory NotificationDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'notificationType') int? notificationType,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser,
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
sealed class ProfileDto with _$ProfileDto {
  factory ProfileDto({
    @JsonKey(name: 'userDetail') required UserDetailDto userDetail,
    @JsonKey(name: 'badgesCount') int? badgesCount,
    @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
    @JsonKey(name: 'supportersCount') int? supportersCount,
    @JsonKey(name: 'supportersUsers') List<dynamic>? supportersUsers,
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
    @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
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
    @JsonKey(name: 'reporter') UserDto2Dto? reporter,
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
    @JsonKey(name: 'notificationType') required int notificationType,
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
    @JsonKey(name: 'media') StepMediaDto2Dto? media,
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
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _StepMediaDto;

  factory StepMediaDto.fromJson(Map<String, dynamic> json) =>
      _$StepMediaDtoFromJson(json);
}

@freezed
sealed class StepMediaDto2Dto with _$StepMediaDto2Dto {
  factory StepMediaDto2Dto({
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
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _StepMediaDto2Dto;

  factory StepMediaDto2Dto.fromJson(Map<String, dynamic> json) =>
      _$StepMediaDto2DtoFromJson(json);
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
    @JsonKey(name: 'followingStatus') int? followingStatus,
  }) = _UserDetailDto;

  factory UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);
}

@freezed
sealed class UserDetailDto2Dto with _$UserDetailDto2Dto {
  factory UserDetailDto2Dto({
    @JsonKey(name: 'user') required UserDto user,
    @JsonKey(name: 'followingStatus') int? followingStatus,
  }) = _UserDetailDto2Dto;

  factory UserDetailDto2Dto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDto2DtoFromJson(json);
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
sealed class UserDto2Dto with _$UserDto2Dto {
  factory UserDto2Dto({
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
  }) = _UserDto2Dto;

  factory UserDto2Dto.fromJson(Map<String, dynamic> json) =>
      _$UserDto2DtoFromJson(json);
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

@freezed
sealed class ApiV1AccountGetResponseDto with _$ApiV1AccountGetResponseDto {
  factory ApiV1AccountGetResponseDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'profile') required ProfileDto profile,
  }) = _ApiV1AccountGetResponseDto;

  factory ApiV1AccountGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1AccountGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1AccountPutResponseDto with _$ApiV1AccountPutResponseDto {
  factory ApiV1AccountPutResponseDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'profile') required ProfileDto profile,
  }) = _ApiV1AccountPutResponseDto;

  factory ApiV1AccountPutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1AccountPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1AccountPutRequestDto with _$ApiV1AccountPutRequestDto {
  factory ApiV1AccountPutRequestDto({
    @JsonKey(name: 'displayName') required String displayName,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'isPrivate') bool? isPrivate,
  }) = _ApiV1AccountPutRequestDto;

  factory ApiV1AccountPutRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1AccountPutRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1AccountAvatarPutResponseDto
    with _$ApiV1AccountAvatarPutResponseDto {
  factory ApiV1AccountAvatarPutResponseDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'profile') required ProfileDto profile,
  }) = _ApiV1AccountAvatarPutResponseDto;

  factory ApiV1AccountAvatarPutResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1AccountAvatarPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1AuthLoginPostResponseDto
    with _$ApiV1AuthLoginPostResponseDto {
  factory ApiV1AuthLoginPostResponseDto({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'uid') String? uid,
  }) = _ApiV1AuthLoginPostResponseDto;

  factory ApiV1AuthLoginPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1AuthLoginPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1AuthLoginPostRequestDto with _$ApiV1AuthLoginPostRequestDto {
  factory ApiV1AuthLoginPostRequestDto({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _ApiV1AuthLoginPostRequestDto;

  factory ApiV1AuthLoginPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1AuthLoginPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1UsersIdGetResponseDto with _$ApiV1UsersIdGetResponseDto {
  factory ApiV1UsersIdGetResponseDto({
    @JsonKey(name: 'userDetail') required UserDetailDto userDetail,
    @JsonKey(name: 'badgesCount') int? badgesCount,
    @JsonKey(name: 'badgesUsers') List<UserDto>? badgesUsers,
    @JsonKey(name: 'supportersCount') int? supportersCount,
    @JsonKey(name: 'supportersUsers') List<dynamic>? supportersUsers,
    @JsonKey(name: 'followersCount') int? followersCount,
    @JsonKey(name: 'followingsCount') int? followingsCount,
  }) = _ApiV1UsersIdGetResponseDto;

  factory ApiV1UsersIdGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1UsersIdGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsPostResponseDto with _$ApiV1StepsPostResponseDto {
  factory ApiV1StepsPostResponseDto({
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
  }) = _ApiV1StepsPostResponseDto;

  factory ApiV1StepsPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1StepsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsPostRequestDto with _$ApiV1StepsPostRequestDto {
  factory ApiV1StepsPostRequestDto({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'journeyId') required String journeyId,
  }) = _ApiV1StepsPostRequestDto;

  factory ApiV1StepsPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1StepsPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdGetResponseDto
    with _$ApiV1StepsStepIdGetResponseDto {
  factory ApiV1StepsStepIdGetResponseDto({
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
  }) = _ApiV1StepsStepIdGetResponseDto;

  factory ApiV1StepsStepIdGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdPutResponseDto
    with _$ApiV1StepsStepIdPutResponseDto {
  factory ApiV1StepsStepIdPutResponseDto({
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
  }) = _ApiV1StepsStepIdPutResponseDto;

  factory ApiV1StepsStepIdPutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdPutRequestDto
    with _$ApiV1StepsStepIdPutRequestDto {
  factory ApiV1StepsStepIdPutRequestDto(
          {@JsonKey(name: 'content') required String content}) =
      _ApiV1StepsStepIdPutRequestDto;

  factory ApiV1StepsStepIdPutRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdPutRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
    with _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDto {
  factory ApiV1StepsStepIdMediaUploadRequestsPostResponseDto({
    @JsonKey(name: 'uploadUrl') String? uploadUrl,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'expiresAt') DateTime? expiresAt,
    @JsonKey(name: 'headers') Map<String, String>? headers,
  }) = _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto;

  factory ApiV1StepsStepIdMediaUploadRequestsPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdImagesPutResponseDto
    with _$ApiV1StepsStepIdImagesPutResponseDto {
  factory ApiV1StepsStepIdImagesPutResponseDto({
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
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _ApiV1StepsStepIdImagesPutResponseDto;

  factory ApiV1StepsStepIdImagesPutResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdImagesPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdImagesPutRequestDto
    with _$ApiV1StepsStepIdImagesPutRequestDto {
  factory ApiV1StepsStepIdImagesPutRequestDto({
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'contentType') String? contentType,
  }) = _ApiV1StepsStepIdImagesPutRequestDto;

  factory ApiV1StepsStepIdImagesPutRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdImagesPutRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdVideoPutResponseDto
    with _$ApiV1StepsStepIdVideoPutResponseDto {
  factory ApiV1StepsStepIdVideoPutResponseDto({
    @JsonKey(name: 'authorizationSignature') String? authorizationSignature,
    @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'libraryId') int? libraryId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'collectionId') String? collectionId,
    @JsonKey(name: 'media') StepMediaDto? media,
  }) = _ApiV1StepsStepIdVideoPutResponseDto;

  factory ApiV1StepsStepIdVideoPutResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdVideoPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1ReportsPostResponseDto with _$ApiV1ReportsPostResponseDto {
  factory ApiV1ReportsPostResponseDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'entityType') required String entityType,
    @JsonKey(name: 'entityId') String? entityId,
    @JsonKey(name: 'reporter') UserDto2Dto? reporter,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
  }) = _ApiV1ReportsPostResponseDto;

  factory ApiV1ReportsPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1ReportsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1ReportsPostRequestDto with _$ApiV1ReportsPostRequestDto {
  factory ApiV1ReportsPostRequestDto({
    @JsonKey(name: 'entityType') required String entityType,
    @JsonKey(name: 'entityId') required String entityId,
    @JsonKey(name: 'reason') required String reason,
  }) = _ApiV1ReportsPostRequestDto;

  factory ApiV1ReportsPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1ReportsPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1NotificationsGetResponseDto
    with _$ApiV1NotificationsGetResponseDto {
  factory ApiV1NotificationsGetResponseDto({
    @JsonKey(name: 'notifications') List<NotificationDto>? notifications,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'unreadCount') int? unreadCount,
    @JsonKey(name: 'hasMore') bool? hasMore,
  }) = _ApiV1NotificationsGetResponseDto;

  factory ApiV1NotificationsGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1NotificationsGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1NotificationsPostResponseDto
    with _$ApiV1NotificationsPostResponseDto {
  factory ApiV1NotificationsPostResponseDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'notificationType') int? notificationType,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'sourceUser') UserDetailDto2Dto? sourceUser,
  }) = _ApiV1NotificationsPostResponseDto;

  factory ApiV1NotificationsPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1NotificationsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1NotificationsPostRequestDto
    with _$ApiV1NotificationsPostRequestDto {
  factory ApiV1NotificationsPostRequestDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'notificationType') required int notificationType,
    @JsonKey(name: 'targetUserId') String? targetUserId,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'scheduledFor') DateTime? scheduledFor,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
  }) = _ApiV1NotificationsPostRequestDto;

  factory ApiV1NotificationsPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1NotificationsPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1NotificationsBulkPostRequestDto
    with _$ApiV1NotificationsBulkPostRequestDto {
  factory ApiV1NotificationsBulkPostRequestDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'notificationType') required int notificationType,
    @JsonKey(name: 'userIds') required List<String> userIds,
    @JsonKey(name: 'relatedEntityId') String? relatedEntityId,
    @JsonKey(name: 'data') Map<String, String>? data,
    @JsonKey(name: 'priority') int? priority,
  }) = _ApiV1NotificationsBulkPostRequestDto;

  factory ApiV1NotificationsBulkPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1NotificationsBulkPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1MediaUploadsPostResponseDto
    with _$ApiV1MediaUploadsPostResponseDto {
  factory ApiV1MediaUploadsPostResponseDto({
    @JsonKey(name: 'uploadUrl') String? uploadUrl,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'expiresAt') DateTime? expiresAt,
    @JsonKey(name: 'headers') Map<String, String>? headers,
  }) = _ApiV1MediaUploadsPostResponseDto;

  factory ApiV1MediaUploadsPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1MediaUploadsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1MediaImagesPostResponseDto
    with _$ApiV1MediaImagesPostResponseDto {
  factory ApiV1MediaImagesPostResponseDto({
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
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _ApiV1MediaImagesPostResponseDto;

  factory ApiV1MediaImagesPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1MediaImagesPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1MediaImagesPostRequestDto
    with _$ApiV1MediaImagesPostRequestDto {
  factory ApiV1MediaImagesPostRequestDto({
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'contentType') String? contentType,
  }) = _ApiV1MediaImagesPostRequestDto;

  factory ApiV1MediaImagesPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1MediaImagesPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1MediaVideosPostResponseDto
    with _$ApiV1MediaVideosPostResponseDto {
  factory ApiV1MediaVideosPostResponseDto({
    @JsonKey(name: 'authorizationSignature') String? authorizationSignature,
    @JsonKey(name: 'authorizationExpire') int? authorizationExpire,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'libraryId') int? libraryId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'collectionId') String? collectionId,
    @JsonKey(name: 'media') StepMediaDto? media,
  }) = _ApiV1MediaVideosPostResponseDto;

  factory ApiV1MediaVideosPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1MediaVideosPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1MediaMediaIdGetResponseDto
    with _$ApiV1MediaMediaIdGetResponseDto {
  factory ApiV1MediaMediaIdGetResponseDto({
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
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'isVideo') bool? isVideo,
    @JsonKey(name: 'isImage') bool? isImage,
  }) = _ApiV1MediaMediaIdGetResponseDto;

  factory ApiV1MediaMediaIdGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1MediaMediaIdGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1WebhooksVideoUpdatesPostRequestDto
    with _$ApiV1WebhooksVideoUpdatesPostRequestDto {
  factory ApiV1WebhooksVideoUpdatesPostRequestDto({
    @JsonKey(name: 'videoLibraryId') int? videoLibraryId,
    @JsonKey(name: 'videoGuid') String? videoGuid,
    @JsonKey(name: 'status') int? status,
  }) = _ApiV1WebhooksVideoUpdatesPostRequestDto;

  factory ApiV1WebhooksVideoUpdatesPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1WebhooksVideoUpdatesPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysIdGetResponseDto
    with _$ApiV1JourneysIdGetResponseDto {
  factory ApiV1JourneysIdGetResponseDto({
    @JsonKey(name: 'journey') required JourneyDto2Dto journey,
    @JsonKey(name: 'stepsCount') required int stepsCount,
    @JsonKey(name: 'lastStepDate') required DateTime lastStepDate,
    @JsonKey(name: 'stepperCount') int? stepperCount,
    @JsonKey(name: 'latestSteppers') List<UserDto>? latestSteppers,
    @JsonKey(name: 'starterCount') int? starterCount,
    @JsonKey(name: 'latestStarters') List<dynamic>? latestStarters,
    @JsonKey(name: 'companionCount') int? companionCount,
    @JsonKey(name: 'latestCompanions') List<dynamic>? latestCompanions,
    @JsonKey(name: 'celebratorCount') int? celebratorCount,
    @JsonKey(name: 'latestCelebrators') List<dynamic>? latestCelebrators,
  }) = _ApiV1JourneysIdGetResponseDto;

  factory ApiV1JourneysIdGetResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1JourneysIdGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysIdPutResponseDto
    with _$ApiV1JourneysIdPutResponseDto {
  factory ApiV1JourneysIdPutResponseDto({
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
  }) = _ApiV1JourneysIdPutResponseDto;

  factory ApiV1JourneysIdPutResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1JourneysIdPutResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysIdPutRequestDto with _$ApiV1JourneysIdPutRequestDto {
  factory ApiV1JourneysIdPutRequestDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
  }) = _ApiV1JourneysIdPutRequestDto;

  factory ApiV1JourneysIdPutRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1JourneysIdPutRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysPostResponseDto with _$ApiV1JourneysPostResponseDto {
  factory ApiV1JourneysPostResponseDto({
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
  }) = _ApiV1JourneysPostResponseDto;

  factory ApiV1JourneysPostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1JourneysPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysPostRequestDto with _$ApiV1JourneysPostRequestDto {
  factory ApiV1JourneysPostRequestDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'firstStepContent') required String firstStepContent,
  }) = _ApiV1JourneysPostRequestDto;

  factory ApiV1JourneysPostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiV1JourneysPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysIdClosePostResponseDto
    with _$ApiV1JourneysIdClosePostResponseDto {
  factory ApiV1JourneysIdClosePostResponseDto({
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
  }) = _ApiV1JourneysIdClosePostResponseDto;

  factory ApiV1JourneysIdClosePostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1JourneysIdClosePostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1JourneysIdReopenPostResponseDto
    with _$ApiV1JourneysIdReopenPostResponseDto {
  factory ApiV1JourneysIdReopenPostResponseDto({
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
  }) = _ApiV1JourneysIdReopenPostResponseDto;

  factory ApiV1JourneysIdReopenPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1JourneysIdReopenPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdHeartsPostResponseDto
    with _$ApiV1StepsStepIdHeartsPostResponseDto {
  factory ApiV1StepsStepIdHeartsPostResponseDto({
    @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
    @JsonKey(name: 'isLiked') bool? isLiked,
    @JsonKey(name: 'totalLikes') int? totalLikes,
  }) = _ApiV1StepsStepIdHeartsPostResponseDto;

  factory ApiV1StepsStepIdHeartsPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdHeartsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdHeartsPostRequestDto
    with _$ApiV1StepsStepIdHeartsPostRequestDto {
  factory ApiV1StepsStepIdHeartsPostRequestDto(
          {@JsonKey(name: 'type') int? type}) =
      _ApiV1StepsStepIdHeartsPostRequestDto;

  factory ApiV1StepsStepIdHeartsPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdHeartsPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdHeartsDeleteResponseDto
    with _$ApiV1StepsStepIdHeartsDeleteResponseDto {
  factory ApiV1StepsStepIdHeartsDeleteResponseDto({
    @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
    @JsonKey(name: 'isLiked') bool? isLiked,
    @JsonKey(name: 'totalLikes') int? totalLikes,
  }) = _ApiV1StepsStepIdHeartsDeleteResponseDto;

  factory ApiV1StepsStepIdHeartsDeleteResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdHeartsDeleteResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdSharesPostResponseDto
    with _$ApiV1StepsStepIdSharesPostResponseDto {
  factory ApiV1StepsStepIdSharesPostResponseDto({
    @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
    @JsonKey(name: 'isLiked') bool? isLiked,
    @JsonKey(name: 'totalLikes') int? totalLikes,
  }) = _ApiV1StepsStepIdSharesPostResponseDto;

  factory ApiV1StepsStepIdSharesPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdSharesPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdSharesPostRequestDto
    with _$ApiV1StepsStepIdSharesPostRequestDto {
  factory ApiV1StepsStepIdSharesPostRequestDto(
          {@JsonKey(name: 'type') int? type}) =
      _ApiV1StepsStepIdSharesPostRequestDto;

  factory ApiV1StepsStepIdSharesPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdSharesPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdInteractionsGetResponseDto
    with _$ApiV1StepsStepIdInteractionsGetResponseDto {
  factory ApiV1StepsStepIdInteractionsGetResponseDto({
    @JsonKey(name: 'isSteppedWith') bool? isSteppedWith,
    @JsonKey(name: 'isLiked') bool? isLiked,
    @JsonKey(name: 'totalLikes') int? totalLikes,
  }) = _ApiV1StepsStepIdInteractionsGetResponseDto;

  factory ApiV1StepsStepIdInteractionsGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdInteractionsGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsCommentsCommentIdHeartsPostRequestDto
    with _$ApiV1StepsCommentsCommentIdHeartsPostRequestDto {
  factory ApiV1StepsCommentsCommentIdHeartsPostRequestDto(
          {@JsonKey(name: 'type') int? type}) =
      _ApiV1StepsCommentsCommentIdHeartsPostRequestDto;

  factory ApiV1StepsCommentsCommentIdHeartsPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1UsersUserIdFollowPostResponseDto
    with _$ApiV1UsersUserIdFollowPostResponseDto {
  factory ApiV1UsersUserIdFollowPostResponseDto({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') String? message,
  }) = _ApiV1UsersUserIdFollowPostResponseDto;

  factory ApiV1UsersUserIdFollowPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1UsersUserIdFollowPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1UsersUserIdFollowDeleteResponseDto
    with _$ApiV1UsersUserIdFollowDeleteResponseDto {
  factory ApiV1UsersUserIdFollowDeleteResponseDto({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') String? message,
  }) = _ApiV1UsersUserIdFollowDeleteResponseDto;

  factory ApiV1UsersUserIdFollowDeleteResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1UsersUserIdFollowDeleteResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1UsersUserIdRejectFollowPostResponseDto
    with _$ApiV1UsersUserIdRejectFollowPostResponseDto {
  factory ApiV1UsersUserIdRejectFollowPostResponseDto({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') String? message,
  }) = _ApiV1UsersUserIdRejectFollowPostResponseDto;

  factory ApiV1UsersUserIdRejectFollowPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1UsersUserIdRejectFollowPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1UsersUserIdFollowStatusGetResponseDto
    with _$ApiV1UsersUserIdFollowStatusGetResponseDto {
  factory ApiV1UsersUserIdFollowStatusGetResponseDto(
          {@JsonKey(name: 'status') required int status}) =
      _ApiV1UsersUserIdFollowStatusGetResponseDto;

  factory ApiV1UsersUserIdFollowStatusGetResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1UsersUserIdFollowStatusGetResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1CommentsParentCommentIdRepliesPostResponseDto
    with _$ApiV1CommentsParentCommentIdRepliesPostResponseDto {
  factory ApiV1CommentsParentCommentIdRepliesPostResponseDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdated') DateTime? lastUpdated,
    @JsonKey(name: 'deletedDate') DateTime? deletedDate,
    @JsonKey(name: 'user') UserDto? user,
    @JsonKey(name: 'parentCommentId') String? parentCommentId,
    @JsonKey(name: 'responseToUser') UserDto2Dto? responseToUser,
    @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
    @JsonKey(name: 'heartCount') int? heartCount,
    @JsonKey(name: 'heartedByUser') bool? heartedByUser,
  }) = _ApiV1CommentsParentCommentIdRepliesPostResponseDto;

  factory ApiV1CommentsParentCommentIdRepliesPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1CommentsParentCommentIdRepliesPostRequestDto
    with _$ApiV1CommentsParentCommentIdRepliesPostRequestDto {
  factory ApiV1CommentsParentCommentIdRepliesPostRequestDto({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'responseToUserId') String? responseToUserId,
    @JsonKey(name: 'responseToCommentId') String? responseToCommentId,
  }) = _ApiV1CommentsParentCommentIdRepliesPostRequestDto;

  factory ApiV1CommentsParentCommentIdRepliesPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdCommentsPostResponseDto
    with _$ApiV1StepsStepIdCommentsPostResponseDto {
  factory ApiV1StepsStepIdCommentsPostResponseDto({
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
  }) = _ApiV1StepsStepIdCommentsPostResponseDto;

  factory ApiV1StepsStepIdCommentsPostResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdCommentsPostResponseDtoFromJson(json);
}

@freezed
sealed class ApiV1StepsStepIdCommentsPostRequestDto
    with _$ApiV1StepsStepIdCommentsPostRequestDto {
  factory ApiV1StepsStepIdCommentsPostRequestDto(
          {@JsonKey(name: 'content') required String content}) =
      _ApiV1StepsStepIdCommentsPostRequestDto;

  factory ApiV1StepsStepIdCommentsPostRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1StepsStepIdCommentsPostRequestDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
