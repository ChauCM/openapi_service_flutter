// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepo_json_311.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiError _$ApiErrorFromJson(Map<String, dynamic> json) => _ApiError(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ApiErrorToJson(_ApiError instance) => <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'type': instance.type,
    };

_AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) => _AccountDto(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountDtoToJson(_AccountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_BulkNotificationDto _$BulkNotificationDtoFromJson(Map<String, dynamic> json) =>
    _BulkNotificationDto(
      title: json['title'] as String,
      body: json['body'] as String,
      notificationType:
          $enumDecode(_$NotificationTypeDtoEnumMap, json['notificationType']),
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      relatedEntityId: json['relatedEntityId'] as String?,
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BulkNotificationDtoToJson(
        _BulkNotificationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType':
          _$NotificationTypeDtoEnumMap[instance.notificationType]!,
      'userIds': instance.userIds,
      'relatedEntityId': instance.relatedEntityId,
      'data': instance.data,
      'priority': instance.priority,
    };

const _$NotificationTypeDtoEnumMap = {
  NotificationTypeDto.global: 'Global',
  NotificationTypeDto.userSpecific: 'UserSpecific',
  NotificationTypeDto.stepComment: 'StepComment',
  NotificationTypeDto.commentReply: 'CommentReply',
  NotificationTypeDto.newFollower: 'NewFollower',
  NotificationTypeDto.journeyUpdate: 'JourneyUpdate',
  NotificationTypeDto.stepInteraction: 'StepInteraction',
  NotificationTypeDto.stepWithInteraction: 'StepWithInteraction',
  NotificationTypeDto.systemAlert: 'SystemAlert',
};

_CreateCommentInteractionDto _$CreateCommentInteractionDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateCommentInteractionDto(
      type: $enumDecodeNullable(_$InteractionTypeDtoEnumMap, json['type']),
    );

Map<String, dynamic> _$CreateCommentInteractionDtoToJson(
        _CreateCommentInteractionDto instance) =>
    <String, dynamic>{
      'type': _$InteractionTypeDtoEnumMap[instance.type],
    };

const _$InteractionTypeDtoEnumMap = {
  InteractionTypeDto.heart: 'Heart',
  InteractionTypeDto.share: 'Share',
  InteractionTypeDto.comment: 'Comment',
};

_CreateReplyCommentDto _$CreateReplyCommentDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateReplyCommentDto(
      content: json['content'] as String,
      responseToUserId: json['responseToUserId'] as String?,
      responseToCommentId: json['responseToCommentId'] as String?,
    );

Map<String, dynamic> _$CreateReplyCommentDtoToJson(
        _CreateReplyCommentDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'responseToUserId': instance.responseToUserId,
      'responseToCommentId': instance.responseToCommentId,
    };

_CreateStepCommentDto _$CreateStepCommentDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateStepCommentDto(
      content: json['content'] as String,
    );

Map<String, dynamic> _$CreateStepCommentDtoToJson(
        _CreateStepCommentDto instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_CreateStepDto _$CreateStepDtoFromJson(Map<String, dynamic> json) =>
    _CreateStepDto(
      content: json['content'] as String,
      journeyId: json['journeyId'] as String,
    );

Map<String, dynamic> _$CreateStepDtoToJson(_CreateStepDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'journeyId': instance.journeyId,
    };

_CreateStepInteractionDto _$CreateStepInteractionDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateStepInteractionDto(
      type: $enumDecodeNullable(_$InteractionTypeDtoEnumMap, json['type']),
    );

Map<String, dynamic> _$CreateStepInteractionDtoToJson(
        _CreateStepInteractionDto instance) =>
    <String, dynamic>{
      'type': _$InteractionTypeDtoEnumMap[instance.type],
    };

_EditUserDto _$EditUserDtoFromJson(Map<String, dynamic> json) => _EditUserDto(
      displayName: json['displayName'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      isPrivate: json['isPrivate'] as bool?,
    );

Map<String, dynamic> _$EditUserDtoToJson(_EditUserDto instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'isPrivate': instance.isPrivate,
    };

_FollowingResultDto _$FollowingResultDtoFromJson(Map<String, dynamic> json) =>
    _FollowingResultDto(
      status: $enumDecode(_$FollowingStatusEnumDtoEnumMap, json['status']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FollowingResultDtoToJson(_FollowingResultDto instance) =>
    <String, dynamic>{
      'status': _$FollowingStatusEnumDtoEnumMap[instance.status]!,
      'message': instance.message,
    };

const _$FollowingStatusEnumDtoEnumMap = {
  FollowingStatusEnumDto.notFollowing: 'NotFollowing',
  FollowingStatusEnumDto.following: 'Following',
  FollowingStatusEnumDto.requested: 'Requested',
};

_FollowingStatusDto _$FollowingStatusDtoFromJson(Map<String, dynamic> json) =>
    _FollowingStatusDto(
      status: $enumDecode(_$FollowingStatusEnumDtoEnumMap, json['status']),
    );

Map<String, dynamic> _$FollowingStatusDtoToJson(_FollowingStatusDto instance) =>
    <String, dynamic>{
      'status': _$FollowingStatusEnumDtoEnumMap[instance.status]!,
    };

_ImageMetadataDto _$ImageMetadataDtoFromJson(Map<String, dynamic> json) =>
    _ImageMetadataDto(
      fileName: json['fileName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$ImageMetadataDtoToJson(_ImageMetadataDto instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_ImagePresignedUrlDto _$ImagePresignedUrlDtoFromJson(
        Map<String, dynamic> json) =>
    _ImagePresignedUrlDto(
      uploadUrl: json['uploadUrl'] as String?,
      fileUrl: json['fileUrl'] as String?,
      fileName: json['fileName'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$ImagePresignedUrlDtoToJson(
        _ImagePresignedUrlDto instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_InteractionResultDto _$InteractionResultDtoFromJson(
        Map<String, dynamic> json) =>
    _InteractionResultDto(
      isSteppedWith: json['isSteppedWith'] as bool?,
      isLiked: json['isLiked'] as bool?,
      totalLikes: (json['totalLikes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InteractionResultDtoToJson(
        _InteractionResultDto instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_JourneyCreatingDto _$JourneyCreatingDtoFromJson(Map<String, dynamic> json) =>
    _JourneyCreatingDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      firstStepContent: json['firstStepContent'] as String,
    );

Map<String, dynamic> _$JourneyCreatingDtoToJson(_JourneyCreatingDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'firstStepContent': instance.firstStepContent,
    };

_JourneyDayCalendarDto _$JourneyDayCalendarDtoFromJson(
        Map<String, dynamic> json) =>
    _JourneyDayCalendarDto(
      lastStep: StepDto.fromJson(json['lastStep'] as Map<String, dynamic>),
      totalSteps: (json['totalSteps'] as num?)?.toInt() ?? 0,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$JourneyDayCalendarDtoToJson(
        _JourneyDayCalendarDto instance) =>
    <String, dynamic>{
      'lastStep': instance.lastStep,
      'totalSteps': instance.totalSteps,
      'date': instance.date.toIso8601String(),
    };

_JourneyDto _$JourneyDtoFromJson(Map<String, dynamic> json) => _JourneyDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      status: json['status'] as String?,
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      userId: json['userId'] as String?,
      firstStepId: json['firstStepId'] as String?,
      finalStepId: json['finalStepId'] as String?,
    );

Map<String, dynamic> _$JourneyDtoToJson(_JourneyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'status': instance.status,
      'completedDate': instance.completedDate?.toIso8601String(),
      'userId': instance.userId,
      'firstStepId': instance.firstStepId,
      'finalStepId': instance.finalStepId,
    };

_JourneyInDetailDto _$JourneyInDetailDtoFromJson(Map<String, dynamic> json) =>
    _JourneyInDetailDto(
      journey: JourneyDto.fromJson(json['journey'] as Map<String, dynamic>),
      stepsCount: (json['stepsCount'] as num).toInt(),
      lastStepDate: DateTime.parse(json['lastStepDate'] as String),
      stepperCount: (json['stepperCount'] as num?)?.toInt(),
      latestSteppers: (json['latestSteppers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      starterCount: (json['starterCount'] as num?)?.toInt(),
      latestStarters: (json['latestStarters'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      companionCount: (json['companionCount'] as num?)?.toInt(),
      latestCompanions: (json['latestCompanions'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      celebratorCount: (json['celebratorCount'] as num?)?.toInt(),
      latestCelebrators: (json['latestCelebrators'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JourneyInDetailDtoToJson(_JourneyInDetailDto instance) =>
    <String, dynamic>{
      'journey': instance.journey,
      'stepsCount': instance.stepsCount,
      'lastStepDate': instance.lastStepDate.toIso8601String(),
      'stepperCount': instance.stepperCount,
      'latestSteppers': instance.latestSteppers,
      'starterCount': instance.starterCount,
      'latestStarters': instance.latestStarters,
      'companionCount': instance.companionCount,
      'latestCompanions': instance.latestCompanions,
      'celebratorCount': instance.celebratorCount,
      'latestCelebrators': instance.latestCelebrators,
    };

_JourneyInProfileDto _$JourneyInProfileDtoFromJson(Map<String, dynamic> json) =>
    _JourneyInProfileDto(
      journey: JourneyDto.fromJson(json['journey'] as Map<String, dynamic>),
      stepsCount: (json['stepsCount'] as num).toInt(),
      thumbnailSteps: (json['thumbnailSteps'] as List<dynamic>)
          .map((e) => StepMediaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JourneyInProfileDtoToJson(
        _JourneyInProfileDto instance) =>
    <String, dynamic>{
      'journey': instance.journey,
      'stepsCount': instance.stepsCount,
      'thumbnailSteps': instance.thumbnailSteps,
    };

_LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => _LoginDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDtoToJson(_LoginDto instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _LoginResponseDto(
      token: json['token'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$LoginResponseDtoToJson(_LoginResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'uid': instance.uid,
    };

_NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    _NotificationDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      notificationType: $enumDecodeNullable(
          _$NotificationTypeDtoEnumMap, json['notificationType']),
      isRead: json['isRead'] as bool?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      priority: (json['priority'] as num?)?.toInt(),
      relatedEntityId: json['relatedEntityId'] as String?,
      sourceUser: json['sourceUser'] == null
          ? null
          : UserDetailDto.fromJson(json['sourceUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationDtoToJson(_NotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'notificationType':
          _$NotificationTypeDtoEnumMap[instance.notificationType],
      'isRead': instance.isRead,
      'createdDate': instance.createdDate?.toIso8601String(),
      'data': instance.data,
      'priority': instance.priority,
      'relatedEntityId': instance.relatedEntityId,
      'sourceUser': instance.sourceUser,
    };

_NotificationPagedDto _$NotificationPagedDtoFromJson(
        Map<String, dynamic> json) =>
    _NotificationPagedDto(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
    );

Map<String, dynamic> _$NotificationPagedDtoToJson(
        _NotificationPagedDto instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'unreadCount': instance.unreadCount,
      'hasMore': instance.hasMore,
    };

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
      userDetail:
          UserDetailDto.fromJson(json['userDetail'] as Map<String, dynamic>),
      badgesCount: (json['badgesCount'] as num?)?.toInt(),
      badgesUsers: (json['badgesUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportersCount: (json['supportersCount'] as num?)?.toInt(),
      supportersUsers: (json['supportersUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      followersCount: (json['followersCount'] as num?)?.toInt(),
      followingsCount: (json['followingsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'userDetail': instance.userDetail,
      'badgesCount': instance.badgesCount,
      'badgesUsers': instance.badgesUsers,
      'supportersCount': instance.supportersCount,
      'supportersUsers': instance.supportersUsers,
      'followersCount': instance.followersCount,
      'followingsCount': instance.followingsCount,
    };

_ReplyDto _$ReplyDtoFromJson(Map<String, dynamic> json) => _ReplyDto(
      id: json['id'] as String?,
      content: json['content'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.parse(json['deletedDate'] as String),
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      parentCommentId: json['parentCommentId'] as String?,
      responseToUser: json['responseToUser'] == null
          ? null
          : UserDto.fromJson(json['responseToUser'] as Map<String, dynamic>),
      responseToCommentId: json['responseToCommentId'] as String?,
      heartCount: (json['heartCount'] as num?)?.toInt(),
      heartedByUser: json['heartedByUser'] as bool?,
    );

Map<String, dynamic> _$ReplyDtoToJson(_ReplyDto instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'deletedDate': instance.deletedDate?.toIso8601String(),
      'user': instance.user,
      'parentCommentId': instance.parentCommentId,
      'responseToUser': instance.responseToUser,
      'responseToCommentId': instance.responseToCommentId,
      'heartCount': instance.heartCount,
      'heartedByUser': instance.heartedByUser,
    };

_ReportCreatingDto _$ReportCreatingDtoFromJson(Map<String, dynamic> json) =>
    _ReportCreatingDto(
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$ReportCreatingDtoToJson(_ReportCreatingDto instance) =>
    <String, dynamic>{
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reason': instance.reason,
    };

_ReportDto _$ReportDtoFromJson(Map<String, dynamic> json) => _ReportDto(
      id: json['id'] as String?,
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String?,
      reporter: json['reporter'] == null
          ? null
          : UserDto.fromJson(json['reporter'] as Map<String, dynamic>),
      reason: json['reason'] as String,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$ReportDtoToJson(_ReportDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reporter': instance.reporter,
      'reason': instance.reason,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

_SendNotificationDto _$SendNotificationDtoFromJson(Map<String, dynamic> json) =>
    _SendNotificationDto(
      title: json['title'] as String,
      body: json['body'] as String,
      notificationType:
          $enumDecode(_$NotificationTypeDtoEnumMap, json['notificationType']),
      targetUserId: json['targetUserId'] as String?,
      relatedEntityId: json['relatedEntityId'] as String?,
      scheduledFor: json['scheduledFor'] == null
          ? null
          : DateTime.parse(json['scheduledFor'] as String),
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SendNotificationDtoToJson(
        _SendNotificationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType':
          _$NotificationTypeDtoEnumMap[instance.notificationType]!,
      'targetUserId': instance.targetUserId,
      'relatedEntityId': instance.relatedEntityId,
      'scheduledFor': instance.scheduledFor?.toIso8601String(),
      'data': instance.data,
      'priority': instance.priority,
    };

_StepCommentDto _$StepCommentDtoFromJson(Map<String, dynamic> json) =>
    _StepCommentDto(
      id: json['id'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      stepId: json['stepId'] as String?,
      heartCount: (json['heartCount'] as num?)?.toInt(),
      heartedByUser: json['heartedByUser'] as bool?,
      replyCount: (json['replyCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StepCommentDtoToJson(_StepCommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'user': instance.user,
      'stepId': instance.stepId,
      'heartCount': instance.heartCount,
      'heartedByUser': instance.heartedByUser,
      'replyCount': instance.replyCount,
    };

_StepDetailDto _$StepDetailDtoFromJson(Map<String, dynamic> json) =>
    _StepDetailDto(
      id: json['id'] as String,
      content: json['content'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      userId: json['userId'] as String?,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      journeyId: json['journeyId'] as String?,
      journey: json['journey'] == null
          ? null
          : JourneyDto.fromJson(json['journey'] as Map<String, dynamic>),
      hearts: (json['hearts'] as num?)?.toInt(),
      heartedByUser: json['heartedByUser'] as bool?,
      shares: (json['shares'] as num?)?.toInt(),
      sharedByUser: json['sharedByUser'] as bool?,
      comments: (json['comments'] as num?)?.toInt(),
      commentedByUser: json['commentedByUser'] as bool?,
      userSteppedWithInteractions:
          (json['userSteppedWithInteractions'] as num?)?.toInt(),
      othersStepWith: (json['othersStepWith'] as num?)?.toInt(),
      othersStepWithUsers: (json['othersStepWithUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepTypeString: json['stepTypeString'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => StepMediaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StepDetailDtoToJson(_StepDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'journeyId': instance.journeyId,
      'journey': instance.journey,
      'hearts': instance.hearts,
      'heartedByUser': instance.heartedByUser,
      'shares': instance.shares,
      'sharedByUser': instance.sharedByUser,
      'comments': instance.comments,
      'commentedByUser': instance.commentedByUser,
      'userSteppedWithInteractions': instance.userSteppedWithInteractions,
      'othersStepWith': instance.othersStepWith,
      'othersStepWithUsers': instance.othersStepWithUsers,
      'stepTypeString': instance.stepTypeString,
      'media': instance.media,
    };

_StepDto _$StepDtoFromJson(Map<String, dynamic> json) => _StepDto(
      id: json['id'] as String,
      content: json['content'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      userId: json['userId'] as String?,
      journeyId: json['journeyId'] as String?,
      media: json['media'] == null
          ? null
          : StepMediaDto.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StepDtoToJson(_StepDto instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'userId': instance.userId,
      'journeyId': instance.journeyId,
      'media': instance.media,
    };

_StepMediaDto _$StepMediaDtoFromJson(Map<String, dynamic> json) =>
    _StepMediaDto(
      id: json['id'] as String?,
      stepId: json['stepId'] as String?,
      mediaType: json['mediaType'] as String?,
      originalUrl: json['originalUrl'] as String?,
      largeUrl: json['largeUrl'] as String?,
      mediumUrl: json['mediumUrl'] as String?,
      smallUrl: json['smallUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      videoThumbnailUrl: json['videoThumbnailUrl'] as String?,
      bunnyVideoId: json['bunnyVideoId'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      duration: json['duration'] as num?,
      status: $enumDecodeNullable(_$MediaStatusDtoEnumMap, json['status']),
      isVideo: json['isVideo'] as bool?,
      isImage: json['isImage'] as bool?,
    );

Map<String, dynamic> _$StepMediaDtoToJson(_StepMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stepId': instance.stepId,
      'mediaType': instance.mediaType,
      'originalUrl': instance.originalUrl,
      'largeUrl': instance.largeUrl,
      'mediumUrl': instance.mediumUrl,
      'smallUrl': instance.smallUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoThumbnailUrl': instance.videoThumbnailUrl,
      'bunnyVideoId': instance.bunnyVideoId,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'duration': instance.duration,
      'status': _$MediaStatusDtoEnumMap[instance.status],
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
    };

const _$MediaStatusDtoEnumMap = {
  MediaStatusDto.pending: 'Pending',
  MediaStatusDto.processing: 'Processing',
  MediaStatusDto.completed: 'Completed',
  MediaStatusDto.failed: 'Failed',
};

_UpdateJourneyDto _$UpdateJourneyDtoFromJson(Map<String, dynamic> json) =>
    _UpdateJourneyDto(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateJourneyDtoToJson(_UpdateJourneyDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_UpdateStepDto _$UpdateStepDtoFromJson(Map<String, dynamic> json) =>
    _UpdateStepDto(
      content: json['content'] as String,
    );

Map<String, dynamic> _$UpdateStepDtoToJson(_UpdateStepDto instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_UserDetailDto _$UserDetailDtoFromJson(Map<String, dynamic> json) =>
    _UserDetailDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      followingStatus: $enumDecodeNullable(
          _$FollowingStatusEnumDtoEnumMap, json['followingStatus']),
    );

Map<String, dynamic> _$UserDetailDtoToJson(_UserDetailDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus':
          _$FollowingStatusEnumDtoEnumMap[instance.followingStatus],
    };

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: json['id'] as String,
      displayName: json['displayName'] as String?,
      username: json['username'] as String?,
      description: json['description'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      age: (json['age'] as num?)?.toInt(),
      isPrivate: json['isPrivate'] as bool?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'profilePictureUrl': instance.profilePictureUrl,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'age': instance.age,
      'isPrivate': instance.isPrivate,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_VideoPreSignedUrlDto _$VideoPreSignedUrlDtoFromJson(
        Map<String, dynamic> json) =>
    _VideoPreSignedUrlDto(
      authorizationSignature: json['authorizationSignature'] as String?,
      authorizationExpire: (json['authorizationExpire'] as num?)?.toInt(),
      videoGuid: json['videoGuid'] as String?,
      libraryId: (json['libraryId'] as num?)?.toInt(),
      title: json['title'] as String?,
      collectionId: json['collectionId'] as String?,
      media: json['media'] == null
          ? null
          : StepMediaDto.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoPreSignedUrlDtoToJson(
        _VideoPreSignedUrlDto instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_VideoStatusDto _$VideoStatusDtoFromJson(Map<String, dynamic> json) =>
    _VideoStatusDto(
      videoLibraryId: (json['videoLibraryId'] as num?)?.toInt(),
      videoGuid: json['videoGuid'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VideoStatusDtoToJson(_VideoStatusDto instance) =>
    <String, dynamic>{
      'videoLibraryId': instance.videoLibraryId,
      'videoGuid': instance.videoGuid,
      'status': instance.status,
    };
