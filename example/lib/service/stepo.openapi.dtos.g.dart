// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepo.openapi.dtos.dart';

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
      notificationType: (json['notificationType'] as num).toInt(),
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
      'notificationType': instance.notificationType,
      'userIds': instance.userIds,
      'relatedEntityId': instance.relatedEntityId,
      'data': instance.data,
      'priority': instance.priority,
    };

_CreateCommentInteractionDto _$CreateCommentInteractionDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateCommentInteractionDto(
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateCommentInteractionDtoToJson(
        _CreateCommentInteractionDto instance) =>
    <String, dynamic>{
      'type': instance.type,
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
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateStepInteractionDtoToJson(
        _CreateStepInteractionDto instance) =>
    <String, dynamic>{
      'type': instance.type,
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
      status: (json['status'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FollowingResultDtoToJson(_FollowingResultDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_FollowingStatusDto _$FollowingStatusDtoFromJson(Map<String, dynamic> json) =>
    _FollowingStatusDto(
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$FollowingStatusDtoToJson(_FollowingStatusDto instance) =>
    <String, dynamic>{
      'status': instance.status,
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

_JourneyDto2Dto _$JourneyDto2DtoFromJson(Map<String, dynamic> json) =>
    _JourneyDto2Dto(
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

Map<String, dynamic> _$JourneyDto2DtoToJson(_JourneyDto2Dto instance) =>
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
      journey: JourneyDto2Dto.fromJson(json['journey'] as Map<String, dynamic>),
      stepsCount: (json['stepsCount'] as num).toInt(),
      lastStepDate: DateTime.parse(json['lastStepDate'] as String),
      stepperCount: (json['stepperCount'] as num?)?.toInt(),
      latestSteppers: (json['latestSteppers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      starterCount: (json['starterCount'] as num?)?.toInt(),
      latestStarters: json['latestStarters'] as List<dynamic>?,
      companionCount: (json['companionCount'] as num?)?.toInt(),
      latestCompanions: json['latestCompanions'] as List<dynamic>?,
      celebratorCount: (json['celebratorCount'] as num?)?.toInt(),
      latestCelebrators: json['latestCelebrators'] as List<dynamic>?,
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
      notificationType: (json['notificationType'] as num?)?.toInt(),
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
          : UserDetailDto2Dto.fromJson(
              json['sourceUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationDtoToJson(_NotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
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
      supportersUsers: json['supportersUsers'] as List<dynamic>?,
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
          : UserDto2Dto.fromJson(
              json['responseToUser'] as Map<String, dynamic>),
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
          : UserDto2Dto.fromJson(json['reporter'] as Map<String, dynamic>),
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
      notificationType: (json['notificationType'] as num).toInt(),
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
      'notificationType': instance.notificationType,
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
          : StepMediaDto2Dto.fromJson(json['media'] as Map<String, dynamic>),
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
      status: (json['status'] as num?)?.toInt(),
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
      'status': instance.status,
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
    };

_StepMediaDto2Dto _$StepMediaDto2DtoFromJson(Map<String, dynamic> json) =>
    _StepMediaDto2Dto(
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
      status: (json['status'] as num?)?.toInt(),
      isVideo: json['isVideo'] as bool?,
      isImage: json['isImage'] as bool?,
    );

Map<String, dynamic> _$StepMediaDto2DtoToJson(_StepMediaDto2Dto instance) =>
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
      'status': instance.status,
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
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
      followingStatus: (json['followingStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserDetailDtoToJson(_UserDetailDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus': instance.followingStatus,
    };

_UserDetailDto2Dto _$UserDetailDto2DtoFromJson(Map<String, dynamic> json) =>
    _UserDetailDto2Dto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      followingStatus: (json['followingStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserDetailDto2DtoToJson(_UserDetailDto2Dto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus': instance.followingStatus,
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

_UserDto2Dto _$UserDto2DtoFromJson(Map<String, dynamic> json) => _UserDto2Dto(
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

Map<String, dynamic> _$UserDto2DtoToJson(_UserDto2Dto instance) =>
    <String, dynamic>{
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

_ApiV1AccountGetResponseDto _$ApiV1AccountGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AccountGetResponseDto(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiV1AccountGetResponseDtoToJson(
        _ApiV1AccountGetResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_ApiV1AccountPutResponseDto _$ApiV1AccountPutResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AccountPutResponseDto(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiV1AccountPutResponseDtoToJson(
        _ApiV1AccountPutResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_ApiV1AccountPutRequestDto _$ApiV1AccountPutRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AccountPutRequestDto(
      displayName: json['displayName'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      isPrivate: json['isPrivate'] as bool?,
    );

Map<String, dynamic> _$ApiV1AccountPutRequestDtoToJson(
        _ApiV1AccountPutRequestDto instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'isPrivate': instance.isPrivate,
    };

_ApiV1AccountAvatarPutResponseDto _$ApiV1AccountAvatarPutResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AccountAvatarPutResponseDto(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiV1AccountAvatarPutResponseDtoToJson(
        _ApiV1AccountAvatarPutResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_ApiV1AuthLoginPostResponseDto _$ApiV1AuthLoginPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AuthLoginPostResponseDto(
      token: json['token'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ApiV1AuthLoginPostResponseDtoToJson(
        _ApiV1AuthLoginPostResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'uid': instance.uid,
    };

_ApiV1AuthLoginPostRequestDto _$ApiV1AuthLoginPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1AuthLoginPostRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ApiV1AuthLoginPostRequestDtoToJson(
        _ApiV1AuthLoginPostRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_ApiV1UsersIdGetResponseDto _$ApiV1UsersIdGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1UsersIdGetResponseDto(
      userDetail:
          UserDetailDto.fromJson(json['userDetail'] as Map<String, dynamic>),
      badgesCount: (json['badgesCount'] as num?)?.toInt(),
      badgesUsers: (json['badgesUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportersCount: (json['supportersCount'] as num?)?.toInt(),
      supportersUsers: json['supportersUsers'] as List<dynamic>?,
      followersCount: (json['followersCount'] as num?)?.toInt(),
      followingsCount: (json['followingsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiV1UsersIdGetResponseDtoToJson(
        _ApiV1UsersIdGetResponseDto instance) =>
    <String, dynamic>{
      'userDetail': instance.userDetail,
      'badgesCount': instance.badgesCount,
      'badgesUsers': instance.badgesUsers,
      'supportersCount': instance.supportersCount,
      'supportersUsers': instance.supportersUsers,
      'followersCount': instance.followersCount,
      'followingsCount': instance.followingsCount,
    };

_ApiV1StepsPostResponseDto _$ApiV1StepsPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1StepsPostResponseDto(
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

Map<String, dynamic> _$ApiV1StepsPostResponseDtoToJson(
        _ApiV1StepsPostResponseDto instance) =>
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

_ApiV1StepsPostRequestDto _$ApiV1StepsPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1StepsPostRequestDto(
      content: json['content'] as String,
      journeyId: json['journeyId'] as String,
    );

Map<String, dynamic> _$ApiV1StepsPostRequestDtoToJson(
        _ApiV1StepsPostRequestDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'journeyId': instance.journeyId,
    };

_ApiV1StepsStepIdGetResponseDto _$ApiV1StepsStepIdGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1StepsStepIdGetResponseDto(
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

Map<String, dynamic> _$ApiV1StepsStepIdGetResponseDtoToJson(
        _ApiV1StepsStepIdGetResponseDto instance) =>
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

_ApiV1StepsStepIdPutResponseDto _$ApiV1StepsStepIdPutResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1StepsStepIdPutResponseDto(
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

Map<String, dynamic> _$ApiV1StepsStepIdPutResponseDtoToJson(
        _ApiV1StepsStepIdPutResponseDto instance) =>
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

_ApiV1StepsStepIdPutRequestDto _$ApiV1StepsStepIdPutRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1StepsStepIdPutRequestDto(
      content: json['content'] as String,
    );

Map<String, dynamic> _$ApiV1StepsStepIdPutRequestDtoToJson(
        _ApiV1StepsStepIdPutRequestDto instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_ApiV1StepsStepIdMediaUploadRequestsPostResponseDto
    _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto(
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

Map<String, dynamic> _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoToJson(
        _ApiV1StepsStepIdMediaUploadRequestsPostResponseDto instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_ApiV1StepsStepIdImagesPutResponseDto
    _$ApiV1StepsStepIdImagesPutResponseDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1StepsStepIdImagesPutResponseDto(
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
          status: (json['status'] as num?)?.toInt(),
          isVideo: json['isVideo'] as bool?,
          isImage: json['isImage'] as bool?,
        );

Map<String, dynamic> _$ApiV1StepsStepIdImagesPutResponseDtoToJson(
        _ApiV1StepsStepIdImagesPutResponseDto instance) =>
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
      'status': instance.status,
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
    };

_ApiV1StepsStepIdImagesPutRequestDto
    _$ApiV1StepsStepIdImagesPutRequestDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1StepsStepIdImagesPutRequestDto(
          fileName: json['fileName'] as String?,
          fileUrl: json['fileUrl'] as String?,
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
          size: (json['size'] as num?)?.toInt(),
          contentType: json['contentType'] as String?,
        );

Map<String, dynamic> _$ApiV1StepsStepIdImagesPutRequestDtoToJson(
        _ApiV1StepsStepIdImagesPutRequestDto instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_ApiV1StepsStepIdVideoPutResponseDto
    _$ApiV1StepsStepIdVideoPutResponseDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1StepsStepIdVideoPutResponseDto(
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

Map<String, dynamic> _$ApiV1StepsStepIdVideoPutResponseDtoToJson(
        _ApiV1StepsStepIdVideoPutResponseDto instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_ApiV1ReportsPostResponseDto _$ApiV1ReportsPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1ReportsPostResponseDto(
      id: json['id'] as String?,
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String?,
      reporter: json['reporter'] == null
          ? null
          : UserDto2Dto.fromJson(json['reporter'] as Map<String, dynamic>),
      reason: json['reason'] as String,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$ApiV1ReportsPostResponseDtoToJson(
        _ApiV1ReportsPostResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reporter': instance.reporter,
      'reason': instance.reason,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

_ApiV1ReportsPostRequestDto _$ApiV1ReportsPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1ReportsPostRequestDto(
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$ApiV1ReportsPostRequestDtoToJson(
        _ApiV1ReportsPostRequestDto instance) =>
    <String, dynamic>{
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reason': instance.reason,
    };

_ApiV1NotificationsGetResponseDto _$ApiV1NotificationsGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1NotificationsGetResponseDto(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
    );

Map<String, dynamic> _$ApiV1NotificationsGetResponseDtoToJson(
        _ApiV1NotificationsGetResponseDto instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'unreadCount': instance.unreadCount,
      'hasMore': instance.hasMore,
    };

_ApiV1NotificationsPostResponseDto _$ApiV1NotificationsPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1NotificationsPostResponseDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      notificationType: (json['notificationType'] as num?)?.toInt(),
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
          : UserDetailDto2Dto.fromJson(
              json['sourceUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiV1NotificationsPostResponseDtoToJson(
        _ApiV1NotificationsPostResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
      'isRead': instance.isRead,
      'createdDate': instance.createdDate?.toIso8601String(),
      'data': instance.data,
      'priority': instance.priority,
      'relatedEntityId': instance.relatedEntityId,
      'sourceUser': instance.sourceUser,
    };

_ApiV1NotificationsPostRequestDto _$ApiV1NotificationsPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1NotificationsPostRequestDto(
      title: json['title'] as String,
      body: json['body'] as String,
      notificationType: (json['notificationType'] as num).toInt(),
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

Map<String, dynamic> _$ApiV1NotificationsPostRequestDtoToJson(
        _ApiV1NotificationsPostRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
      'targetUserId': instance.targetUserId,
      'relatedEntityId': instance.relatedEntityId,
      'scheduledFor': instance.scheduledFor?.toIso8601String(),
      'data': instance.data,
      'priority': instance.priority,
    };

_ApiV1NotificationsBulkPostRequestDto
    _$ApiV1NotificationsBulkPostRequestDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1NotificationsBulkPostRequestDto(
          title: json['title'] as String,
          body: json['body'] as String,
          notificationType: (json['notificationType'] as num).toInt(),
          userIds: (json['userIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          relatedEntityId: json['relatedEntityId'] as String?,
          data: (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          priority: (json['priority'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1NotificationsBulkPostRequestDtoToJson(
        _ApiV1NotificationsBulkPostRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
      'userIds': instance.userIds,
      'relatedEntityId': instance.relatedEntityId,
      'data': instance.data,
      'priority': instance.priority,
    };

_ApiV1MediaUploadsPostResponseDto _$ApiV1MediaUploadsPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1MediaUploadsPostResponseDto(
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

Map<String, dynamic> _$ApiV1MediaUploadsPostResponseDtoToJson(
        _ApiV1MediaUploadsPostResponseDto instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_ApiV1MediaImagesPostResponseDto _$ApiV1MediaImagesPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1MediaImagesPostResponseDto(
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
      status: (json['status'] as num?)?.toInt(),
      isVideo: json['isVideo'] as bool?,
      isImage: json['isImage'] as bool?,
    );

Map<String, dynamic> _$ApiV1MediaImagesPostResponseDtoToJson(
        _ApiV1MediaImagesPostResponseDto instance) =>
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
      'status': instance.status,
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
    };

_ApiV1MediaImagesPostRequestDto _$ApiV1MediaImagesPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1MediaImagesPostRequestDto(
      fileName: json['fileName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$ApiV1MediaImagesPostRequestDtoToJson(
        _ApiV1MediaImagesPostRequestDto instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_ApiV1MediaVideosPostResponseDto _$ApiV1MediaVideosPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1MediaVideosPostResponseDto(
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

Map<String, dynamic> _$ApiV1MediaVideosPostResponseDtoToJson(
        _ApiV1MediaVideosPostResponseDto instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_ApiV1MediaMediaIdGetResponseDto _$ApiV1MediaMediaIdGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1MediaMediaIdGetResponseDto(
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
      status: (json['status'] as num?)?.toInt(),
      isVideo: json['isVideo'] as bool?,
      isImage: json['isImage'] as bool?,
    );

Map<String, dynamic> _$ApiV1MediaMediaIdGetResponseDtoToJson(
        _ApiV1MediaMediaIdGetResponseDto instance) =>
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
      'status': instance.status,
      'isVideo': instance.isVideo,
      'isImage': instance.isImage,
    };

_ApiV1WebhooksVideoUpdatesPostRequestDto
    _$ApiV1WebhooksVideoUpdatesPostRequestDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1WebhooksVideoUpdatesPostRequestDto(
          videoLibraryId: (json['videoLibraryId'] as num?)?.toInt(),
          videoGuid: json['videoGuid'] as String?,
          status: (json['status'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1WebhooksVideoUpdatesPostRequestDtoToJson(
        _ApiV1WebhooksVideoUpdatesPostRequestDto instance) =>
    <String, dynamic>{
      'videoLibraryId': instance.videoLibraryId,
      'videoGuid': instance.videoGuid,
      'status': instance.status,
    };

_ApiV1JourneysIdGetResponseDto _$ApiV1JourneysIdGetResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1JourneysIdGetResponseDto(
      journey: JourneyDto2Dto.fromJson(json['journey'] as Map<String, dynamic>),
      stepsCount: (json['stepsCount'] as num).toInt(),
      lastStepDate: DateTime.parse(json['lastStepDate'] as String),
      stepperCount: (json['stepperCount'] as num?)?.toInt(),
      latestSteppers: (json['latestSteppers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      starterCount: (json['starterCount'] as num?)?.toInt(),
      latestStarters: json['latestStarters'] as List<dynamic>?,
      companionCount: (json['companionCount'] as num?)?.toInt(),
      latestCompanions: json['latestCompanions'] as List<dynamic>?,
      celebratorCount: (json['celebratorCount'] as num?)?.toInt(),
      latestCelebrators: json['latestCelebrators'] as List<dynamic>?,
    );

Map<String, dynamic> _$ApiV1JourneysIdGetResponseDtoToJson(
        _ApiV1JourneysIdGetResponseDto instance) =>
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

_ApiV1JourneysIdPutResponseDto _$ApiV1JourneysIdPutResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1JourneysIdPutResponseDto(
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

Map<String, dynamic> _$ApiV1JourneysIdPutResponseDtoToJson(
        _ApiV1JourneysIdPutResponseDto instance) =>
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

_ApiV1JourneysIdPutRequestDto _$ApiV1JourneysIdPutRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1JourneysIdPutRequestDto(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ApiV1JourneysIdPutRequestDtoToJson(
        _ApiV1JourneysIdPutRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_ApiV1JourneysPostResponseDto _$ApiV1JourneysPostResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1JourneysPostResponseDto(
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

Map<String, dynamic> _$ApiV1JourneysPostResponseDtoToJson(
        _ApiV1JourneysPostResponseDto instance) =>
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

_ApiV1JourneysPostRequestDto _$ApiV1JourneysPostRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _ApiV1JourneysPostRequestDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      firstStepContent: json['firstStepContent'] as String,
    );

Map<String, dynamic> _$ApiV1JourneysPostRequestDtoToJson(
        _ApiV1JourneysPostRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'firstStepContent': instance.firstStepContent,
    };

_ApiV1JourneysIdClosePostResponseDto
    _$ApiV1JourneysIdClosePostResponseDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1JourneysIdClosePostResponseDto(
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

Map<String, dynamic> _$ApiV1JourneysIdClosePostResponseDtoToJson(
        _ApiV1JourneysIdClosePostResponseDto instance) =>
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

_ApiV1JourneysIdReopenPostResponseDto
    _$ApiV1JourneysIdReopenPostResponseDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1JourneysIdReopenPostResponseDto(
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

Map<String, dynamic> _$ApiV1JourneysIdReopenPostResponseDtoToJson(
        _ApiV1JourneysIdReopenPostResponseDto instance) =>
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

_ApiV1StepsStepIdHeartsPostResponseDto
    _$ApiV1StepsStepIdHeartsPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdHeartsPostResponseDto(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdHeartsPostResponseDtoToJson(
        _ApiV1StepsStepIdHeartsPostResponseDto instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_ApiV1StepsStepIdHeartsPostRequestDto
    _$ApiV1StepsStepIdHeartsPostRequestDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1StepsStepIdHeartsPostRequestDto(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdHeartsPostRequestDtoToJson(
        _ApiV1StepsStepIdHeartsPostRequestDto instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_ApiV1StepsStepIdHeartsDeleteResponseDto
    _$ApiV1StepsStepIdHeartsDeleteResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdHeartsDeleteResponseDto(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdHeartsDeleteResponseDtoToJson(
        _ApiV1StepsStepIdHeartsDeleteResponseDto instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_ApiV1StepsStepIdSharesPostResponseDto
    _$ApiV1StepsStepIdSharesPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdSharesPostResponseDto(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdSharesPostResponseDtoToJson(
        _ApiV1StepsStepIdSharesPostResponseDto instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_ApiV1StepsStepIdSharesPostRequestDto
    _$ApiV1StepsStepIdSharesPostRequestDtoFromJson(Map<String, dynamic> json) =>
        _ApiV1StepsStepIdSharesPostRequestDto(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdSharesPostRequestDtoToJson(
        _ApiV1StepsStepIdSharesPostRequestDto instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_ApiV1StepsStepIdInteractionsGetResponseDto
    _$ApiV1StepsStepIdInteractionsGetResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdInteractionsGetResponseDto(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsStepIdInteractionsGetResponseDtoToJson(
        _ApiV1StepsStepIdInteractionsGetResponseDto instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_ApiV1StepsCommentsCommentIdHeartsPostRequestDto
    _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsCommentsCommentIdHeartsPostRequestDto(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoToJson(
        _ApiV1StepsCommentsCommentIdHeartsPostRequestDto instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_ApiV1UsersUserIdFollowPostResponseDto
    _$ApiV1UsersUserIdFollowPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1UsersUserIdFollowPostResponseDto(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$ApiV1UsersUserIdFollowPostResponseDtoToJson(
        _ApiV1UsersUserIdFollowPostResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_ApiV1UsersUserIdFollowDeleteResponseDto
    _$ApiV1UsersUserIdFollowDeleteResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1UsersUserIdFollowDeleteResponseDto(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$ApiV1UsersUserIdFollowDeleteResponseDtoToJson(
        _ApiV1UsersUserIdFollowDeleteResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_ApiV1UsersUserIdRejectFollowPostResponseDto
    _$ApiV1UsersUserIdRejectFollowPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1UsersUserIdRejectFollowPostResponseDto(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$ApiV1UsersUserIdRejectFollowPostResponseDtoToJson(
        _ApiV1UsersUserIdRejectFollowPostResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_ApiV1UsersUserIdFollowStatusGetResponseDto
    _$ApiV1UsersUserIdFollowStatusGetResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1UsersUserIdFollowStatusGetResponseDto(
          status: (json['status'] as num).toInt(),
        );

Map<String, dynamic> _$ApiV1UsersUserIdFollowStatusGetResponseDtoToJson(
        _ApiV1UsersUserIdFollowStatusGetResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_ApiV1CommentsParentCommentIdRepliesPostResponseDto
    _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1CommentsParentCommentIdRepliesPostResponseDto(
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
              : UserDto2Dto.fromJson(
                  json['responseToUser'] as Map<String, dynamic>),
          responseToCommentId: json['responseToCommentId'] as String?,
          heartCount: (json['heartCount'] as num?)?.toInt(),
          heartedByUser: json['heartedByUser'] as bool?,
        );

Map<String, dynamic> _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoToJson(
        _ApiV1CommentsParentCommentIdRepliesPostResponseDto instance) =>
    <String, dynamic>{
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

_ApiV1CommentsParentCommentIdRepliesPostRequestDto
    _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1CommentsParentCommentIdRepliesPostRequestDto(
          content: json['content'] as String,
          responseToUserId: json['responseToUserId'] as String?,
          responseToCommentId: json['responseToCommentId'] as String?,
        );

Map<String, dynamic> _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoToJson(
        _ApiV1CommentsParentCommentIdRepliesPostRequestDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'responseToUserId': instance.responseToUserId,
      'responseToCommentId': instance.responseToCommentId,
    };

_ApiV1StepsStepIdCommentsPostResponseDto
    _$ApiV1StepsStepIdCommentsPostResponseDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdCommentsPostResponseDto(
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

Map<String, dynamic> _$ApiV1StepsStepIdCommentsPostResponseDtoToJson(
        _ApiV1StepsStepIdCommentsPostResponseDto instance) =>
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

_ApiV1StepsStepIdCommentsPostRequestDto
    _$ApiV1StepsStepIdCommentsPostRequestDtoFromJson(
            Map<String, dynamic> json) =>
        _ApiV1StepsStepIdCommentsPostRequestDto(
          content: json['content'] as String,
        );

Map<String, dynamic> _$ApiV1StepsStepIdCommentsPostRequestDtoToJson(
        _ApiV1StepsStepIdCommentsPostRequestDto instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
