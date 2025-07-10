// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepo.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'type': instance.type,
    };

_$AccountDtoImpl _$$AccountDtoImplFromJson(Map<String, dynamic> json) =>
    _$AccountDtoImpl(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountDtoImplToJson(_$AccountDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_$BulkNotificationDtoImpl _$$BulkNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BulkNotificationDtoImpl(
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

Map<String, dynamic> _$$BulkNotificationDtoImplToJson(
        _$BulkNotificationDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
      'userIds': instance.userIds,
      'relatedEntityId': instance.relatedEntityId,
      'data': instance.data,
      'priority': instance.priority,
    };

_$CreateCommentInteractionDtoImpl _$$CreateCommentInteractionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCommentInteractionDtoImpl(
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateCommentInteractionDtoImplToJson(
        _$CreateCommentInteractionDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$CreateReplyCommentDtoImpl _$$CreateReplyCommentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReplyCommentDtoImpl(
      content: json['content'] as String,
      responseToUserId: json['responseToUserId'] as String?,
      responseToCommentId: json['responseToCommentId'] as String?,
    );

Map<String, dynamic> _$$CreateReplyCommentDtoImplToJson(
        _$CreateReplyCommentDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'responseToUserId': instance.responseToUserId,
      'responseToCommentId': instance.responseToCommentId,
    };

_$CreateStepCommentDtoImpl _$$CreateStepCommentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStepCommentDtoImpl(
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CreateStepCommentDtoImplToJson(
        _$CreateStepCommentDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$CreateStepDtoImpl _$$CreateStepDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateStepDtoImpl(
      content: json['content'] as String,
      journeyId: json['journeyId'] as String,
    );

Map<String, dynamic> _$$CreateStepDtoImplToJson(_$CreateStepDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'journeyId': instance.journeyId,
    };

_$CreateStepInteractionDtoImpl _$$CreateStepInteractionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStepInteractionDtoImpl(
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateStepInteractionDtoImplToJson(
        _$CreateStepInteractionDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$EditUserDtoImpl _$$EditUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$EditUserDtoImpl(
      displayName: json['displayName'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      isPrivate: json['isPrivate'] as bool?,
    );

Map<String, dynamic> _$$EditUserDtoImplToJson(_$EditUserDtoImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'isPrivate': instance.isPrivate,
    };

_$FollowingResultDtoImpl _$$FollowingResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowingResultDtoImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$FollowingResultDtoImplToJson(
        _$FollowingResultDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$FollowingStatusDtoImpl _$$FollowingStatusDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowingStatusDtoImpl(
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$FollowingStatusDtoImplToJson(
        _$FollowingStatusDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$FollowRequestDtoImpl _$$FollowRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowRequestDtoImpl(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$FollowRequestDtoImplToJson(
        _$FollowRequestDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$ImageMetadataDtoImpl _$$ImageMetadataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageMetadataDtoImpl(
      fileName: json['fileName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$$ImageMetadataDtoImplToJson(
        _$ImageMetadataDtoImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_$ImagePresignedUrlDtoImpl _$$ImagePresignedUrlDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ImagePresignedUrlDtoImpl(
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

Map<String, dynamic> _$$ImagePresignedUrlDtoImplToJson(
        _$ImagePresignedUrlDtoImpl instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_$InteractionResultDtoImpl _$$InteractionResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionResultDtoImpl(
      isSteppedWith: json['isSteppedWith'] as bool?,
      isLiked: json['isLiked'] as bool?,
      totalLikes: (json['totalLikes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InteractionResultDtoImplToJson(
        _$InteractionResultDtoImpl instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_$JourneyCreatingDtoImpl _$$JourneyCreatingDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JourneyCreatingDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      firstStepContent: json['firstStepContent'] as String,
    );

Map<String, dynamic> _$$JourneyCreatingDtoImplToJson(
        _$JourneyCreatingDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'firstStepContent': instance.firstStepContent,
    };

_$JourneyDayCalendarDtoImpl _$$JourneyDayCalendarDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JourneyDayCalendarDtoImpl(
      lastStep: StepDto.fromJson(json['lastStep'] as Map<String, dynamic>),
      totalSteps: (json['totalSteps'] as num?)?.toInt() ?? 0,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$JourneyDayCalendarDtoImplToJson(
        _$JourneyDayCalendarDtoImpl instance) =>
    <String, dynamic>{
      'lastStep': instance.lastStep,
      'totalSteps': instance.totalSteps,
      'date': instance.date.toIso8601String(),
    };

_$JourneyDtoImpl _$$JourneyDtoImplFromJson(Map<String, dynamic> json) =>
    _$JourneyDtoImpl(
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

Map<String, dynamic> _$$JourneyDtoImplToJson(_$JourneyDtoImpl instance) =>
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

_$JourneyDto2DtoImpl _$$JourneyDto2DtoImplFromJson(Map<String, dynamic> json) =>
    _$JourneyDto2DtoImpl(
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

Map<String, dynamic> _$$JourneyDto2DtoImplToJson(
        _$JourneyDto2DtoImpl instance) =>
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

_$JourneyInDetailDtoImpl _$$JourneyInDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JourneyInDetailDtoImpl(
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

Map<String, dynamic> _$$JourneyInDetailDtoImplToJson(
        _$JourneyInDetailDtoImpl instance) =>
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

_$NotificationDtoImpl _$$NotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDtoImpl(
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

Map<String, dynamic> _$$NotificationDtoImplToJson(
        _$NotificationDtoImpl instance) =>
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

_$NotificationPagedDtoImpl _$$NotificationPagedDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPagedDtoImpl(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
    );

Map<String, dynamic> _$$NotificationPagedDtoImplToJson(
        _$NotificationPagedDtoImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'unreadCount': instance.unreadCount,
      'hasMore': instance.hasMore,
    };

_$ProfileDtoImpl _$$ProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDtoImpl(
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

Map<String, dynamic> _$$ProfileDtoImplToJson(_$ProfileDtoImpl instance) =>
    <String, dynamic>{
      'userDetail': instance.userDetail,
      'badgesCount': instance.badgesCount,
      'badgesUsers': instance.badgesUsers,
      'supportersCount': instance.supportersCount,
      'supportersUsers': instance.supportersUsers,
      'followersCount': instance.followersCount,
      'followingsCount': instance.followingsCount,
    };

_$ReplyDtoImpl _$$ReplyDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReplyDtoImpl(
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

Map<String, dynamic> _$$ReplyDtoImplToJson(_$ReplyDtoImpl instance) =>
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

_$ReportCreatingDtoImpl _$$ReportCreatingDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportCreatingDtoImpl(
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$ReportCreatingDtoImplToJson(
        _$ReportCreatingDtoImpl instance) =>
    <String, dynamic>{
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reason': instance.reason,
    };

_$ReportDtoImpl _$$ReportDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReportDtoImpl(
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

Map<String, dynamic> _$$ReportDtoImplToJson(_$ReportDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reporter': instance.reporter,
      'reason': instance.reason,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

_$SendNotificationDtoImpl _$$SendNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SendNotificationDtoImpl(
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

Map<String, dynamic> _$$SendNotificationDtoImplToJson(
        _$SendNotificationDtoImpl instance) =>
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

_$StepCommentDtoImpl _$$StepCommentDtoImplFromJson(Map<String, dynamic> json) =>
    _$StepCommentDtoImpl(
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

Map<String, dynamic> _$$StepCommentDtoImplToJson(
        _$StepCommentDtoImpl instance) =>
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

_$StepDetailDtoImpl _$$StepDetailDtoImplFromJson(Map<String, dynamic> json) =>
    _$StepDetailDtoImpl(
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

Map<String, dynamic> _$$StepDetailDtoImplToJson(_$StepDetailDtoImpl instance) =>
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

_$StepDtoImpl _$$StepDtoImplFromJson(Map<String, dynamic> json) =>
    _$StepDtoImpl(
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

Map<String, dynamic> _$$StepDtoImplToJson(_$StepDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'userId': instance.userId,
      'journeyId': instance.journeyId,
      'media': instance.media,
    };

_$StepMediaDtoImpl _$$StepMediaDtoImplFromJson(Map<String, dynamic> json) =>
    _$StepMediaDtoImpl(
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

Map<String, dynamic> _$$StepMediaDtoImplToJson(_$StepMediaDtoImpl instance) =>
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

_$StepMediaDto2DtoImpl _$$StepMediaDto2DtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StepMediaDto2DtoImpl(
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

Map<String, dynamic> _$$StepMediaDto2DtoImplToJson(
        _$StepMediaDto2DtoImpl instance) =>
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

_$UpdateJourneyDtoImpl _$$UpdateJourneyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateJourneyDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UpdateJourneyDtoImplToJson(
        _$UpdateJourneyDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$UpdateStepDtoImpl _$$UpdateStepDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateStepDtoImpl(
      content: json['content'] as String,
    );

Map<String, dynamic> _$$UpdateStepDtoImplToJson(_$UpdateStepDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$UserDetailDtoImpl _$$UserDetailDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailDtoImpl(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      followingStatus: (json['followingStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDetailDtoImplToJson(_$UserDetailDtoImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus': instance.followingStatus,
    };

_$UserDetailDto2DtoImpl _$$UserDetailDto2DtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailDto2DtoImpl(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      followingStatus: (json['followingStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDetailDto2DtoImplToJson(
        _$UserDetailDto2DtoImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus': instance.followingStatus,
    };

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
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

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
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

_$UserDto2DtoImpl _$$UserDto2DtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDto2DtoImpl(
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

Map<String, dynamic> _$$UserDto2DtoImplToJson(_$UserDto2DtoImpl instance) =>
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

_$VideoPreSignedUrlDtoImpl _$$VideoPreSignedUrlDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoPreSignedUrlDtoImpl(
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

Map<String, dynamic> _$$VideoPreSignedUrlDtoImplToJson(
        _$VideoPreSignedUrlDtoImpl instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_$VideoStatusDtoImpl _$$VideoStatusDtoImplFromJson(Map<String, dynamic> json) =>
    _$VideoStatusDtoImpl(
      videoLibraryId: (json['videoLibraryId'] as num?)?.toInt(),
      videoGuid: json['videoGuid'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VideoStatusDtoImplToJson(
        _$VideoStatusDtoImpl instance) =>
    <String, dynamic>{
      'videoLibraryId': instance.videoLibraryId,
      'videoGuid': instance.videoGuid,
      'status': instance.status,
    };

_$ApiV1AccountGetResponseDtoImpl _$$ApiV1AccountGetResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1AccountGetResponseDtoImpl(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiV1AccountGetResponseDtoImplToJson(
        _$ApiV1AccountGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_$ApiV1AccountPutResponseDtoImpl _$$ApiV1AccountPutResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1AccountPutResponseDtoImpl(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiV1AccountPutResponseDtoImplToJson(
        _$ApiV1AccountPutResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_$ApiV1AccountPutRequestDtoImpl _$$ApiV1AccountPutRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1AccountPutRequestDtoImpl(
      displayName: json['displayName'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      isPrivate: json['isPrivate'] as bool?,
    );

Map<String, dynamic> _$$ApiV1AccountPutRequestDtoImplToJson(
        _$ApiV1AccountPutRequestDtoImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'isPrivate': instance.isPrivate,
    };

_$ApiV1AccountAvatarPutResponseDtoImpl
    _$$ApiV1AccountAvatarPutResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1AccountAvatarPutResponseDtoImpl(
          id: json['id'] as String,
          profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ApiV1AccountAvatarPutResponseDtoImplToJson(
        _$ApiV1AccountAvatarPutResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
    };

_$ApiV1UsersIdGetResponseDtoImpl _$$ApiV1UsersIdGetResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1UsersIdGetResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1UsersIdGetResponseDtoImplToJson(
        _$ApiV1UsersIdGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'userDetail': instance.userDetail,
      'badgesCount': instance.badgesCount,
      'badgesUsers': instance.badgesUsers,
      'supportersCount': instance.supportersCount,
      'supportersUsers': instance.supportersUsers,
      'followersCount': instance.followersCount,
      'followingsCount': instance.followingsCount,
    };

_$ApiV1StepsPostResponseDtoImpl _$$ApiV1StepsPostResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1StepsPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsPostResponseDtoImplToJson(
        _$ApiV1StepsPostResponseDtoImpl instance) =>
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

_$ApiV1StepsPostRequestDtoImpl _$$ApiV1StepsPostRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1StepsPostRequestDtoImpl(
      content: json['content'] as String,
      journeyId: json['journeyId'] as String,
    );

Map<String, dynamic> _$$ApiV1StepsPostRequestDtoImplToJson(
        _$ApiV1StepsPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'journeyId': instance.journeyId,
    };

_$ApiV1StepsStepIdGetResponseDtoImpl
    _$$ApiV1StepsStepIdGetResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdGetResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsStepIdGetResponseDtoImplToJson(
        _$ApiV1StepsStepIdGetResponseDtoImpl instance) =>
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

_$ApiV1StepsStepIdPutResponseDtoImpl
    _$$ApiV1StepsStepIdPutResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdPutResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsStepIdPutResponseDtoImplToJson(
        _$ApiV1StepsStepIdPutResponseDtoImpl instance) =>
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

_$ApiV1StepsStepIdPutRequestDtoImpl
    _$$ApiV1StepsStepIdPutRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdPutRequestDtoImpl(
          content: json['content'] as String,
        );

Map<String, dynamic> _$$ApiV1StepsStepIdPutRequestDtoImplToJson(
        _$ApiV1StepsStepIdPutRequestDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl
    _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl(
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

Map<String,
    dynamic> _$$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImplToJson(
        _$ApiV1StepsStepIdMediaUploadRequestsPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_$ApiV1StepsStepIdImagesPutResponseDtoImpl
    _$$ApiV1StepsStepIdImagesPutResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdImagesPutResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsStepIdImagesPutResponseDtoImplToJson(
        _$ApiV1StepsStepIdImagesPutResponseDtoImpl instance) =>
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

_$ApiV1StepsStepIdImagesPutRequestDtoImpl
    _$$ApiV1StepsStepIdImagesPutRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdImagesPutRequestDtoImpl(
          fileName: json['fileName'] as String?,
          fileUrl: json['fileUrl'] as String?,
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
          size: (json['size'] as num?)?.toInt(),
          contentType: json['contentType'] as String?,
        );

Map<String, dynamic> _$$ApiV1StepsStepIdImagesPutRequestDtoImplToJson(
        _$ApiV1StepsStepIdImagesPutRequestDtoImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_$ApiV1StepsStepIdVideoPutResponseDtoImpl
    _$$ApiV1StepsStepIdVideoPutResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdVideoPutResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsStepIdVideoPutResponseDtoImplToJson(
        _$ApiV1StepsStepIdVideoPutResponseDtoImpl instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_$ApiV1ReportsPostResponseDtoImpl _$$ApiV1ReportsPostResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1ReportsPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1ReportsPostResponseDtoImplToJson(
        _$ApiV1ReportsPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reporter': instance.reporter,
      'reason': instance.reason,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

_$ApiV1ReportsPostRequestDtoImpl _$$ApiV1ReportsPostRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1ReportsPostRequestDtoImpl(
      entityType: json['entityType'] as String,
      entityId: json['entityId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$ApiV1ReportsPostRequestDtoImplToJson(
        _$ApiV1ReportsPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'reason': instance.reason,
    };

_$ApiV1NotificationsGetResponseDtoImpl
    _$$ApiV1NotificationsGetResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1NotificationsGetResponseDtoImpl(
          notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => NotificationDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          unreadCount: (json['unreadCount'] as num?)?.toInt(),
          hasMore: json['hasMore'] as bool?,
        );

Map<String, dynamic> _$$ApiV1NotificationsGetResponseDtoImplToJson(
        _$ApiV1NotificationsGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'unreadCount': instance.unreadCount,
      'hasMore': instance.hasMore,
    };

_$ApiV1NotificationsPostResponseDtoImpl
    _$$ApiV1NotificationsPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1NotificationsPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1NotificationsPostResponseDtoImplToJson(
        _$ApiV1NotificationsPostResponseDtoImpl instance) =>
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

_$ApiV1NotificationsPostRequestDtoImpl
    _$$ApiV1NotificationsPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1NotificationsPostRequestDtoImpl(
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

Map<String, dynamic> _$$ApiV1NotificationsPostRequestDtoImplToJson(
        _$ApiV1NotificationsPostRequestDtoImpl instance) =>
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

_$ApiV1NotificationsBulkPostRequestDtoImpl
    _$$ApiV1NotificationsBulkPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1NotificationsBulkPostRequestDtoImpl(
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

Map<String, dynamic> _$$ApiV1NotificationsBulkPostRequestDtoImplToJson(
        _$ApiV1NotificationsBulkPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationType': instance.notificationType,
      'userIds': instance.userIds,
      'relatedEntityId': instance.relatedEntityId,
      'data': instance.data,
      'priority': instance.priority,
    };

_$ApiV1MediaUploadsPostResponseDtoImpl
    _$$ApiV1MediaUploadsPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1MediaUploadsPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1MediaUploadsPostResponseDtoImplToJson(
        _$ApiV1MediaUploadsPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'headers': instance.headers,
    };

_$ApiV1MediaImagesPostResponseDtoImpl
    _$$ApiV1MediaImagesPostResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1MediaImagesPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1MediaImagesPostResponseDtoImplToJson(
        _$ApiV1MediaImagesPostResponseDtoImpl instance) =>
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

_$ApiV1MediaImagesPostRequestDtoImpl
    _$$ApiV1MediaImagesPostRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1MediaImagesPostRequestDtoImpl(
          fileName: json['fileName'] as String?,
          fileUrl: json['fileUrl'] as String?,
          width: (json['width'] as num?)?.toInt(),
          height: (json['height'] as num?)?.toInt(),
          size: (json['size'] as num?)?.toInt(),
          contentType: json['contentType'] as String?,
        );

Map<String, dynamic> _$$ApiV1MediaImagesPostRequestDtoImplToJson(
        _$ApiV1MediaImagesPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'contentType': instance.contentType,
    };

_$ApiV1MediaVideosPostResponseDtoImpl
    _$$ApiV1MediaVideosPostResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1MediaVideosPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1MediaVideosPostResponseDtoImplToJson(
        _$ApiV1MediaVideosPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'authorizationSignature': instance.authorizationSignature,
      'authorizationExpire': instance.authorizationExpire,
      'videoGuid': instance.videoGuid,
      'libraryId': instance.libraryId,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'media': instance.media,
    };

_$ApiV1MediaMediaIdGetResponseDtoImpl
    _$$ApiV1MediaMediaIdGetResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1MediaMediaIdGetResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1MediaMediaIdGetResponseDtoImplToJson(
        _$ApiV1MediaMediaIdGetResponseDtoImpl instance) =>
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

_$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl
    _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl(
          videoLibraryId: (json['videoLibraryId'] as num?)?.toInt(),
          videoGuid: json['videoGuid'] as String?,
          status: (json['status'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1WebhooksVideoUpdatesPostRequestDtoImplToJson(
        _$ApiV1WebhooksVideoUpdatesPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'videoLibraryId': instance.videoLibraryId,
      'videoGuid': instance.videoGuid,
      'status': instance.status,
    };

_$ApiV1JourneysIdGetResponseDtoImpl
    _$$ApiV1JourneysIdGetResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1JourneysIdGetResponseDtoImpl(
          journey:
              JourneyDto2Dto.fromJson(json['journey'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$ApiV1JourneysIdGetResponseDtoImplToJson(
        _$ApiV1JourneysIdGetResponseDtoImpl instance) =>
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

_$ApiV1JourneysIdPutResponseDtoImpl
    _$$ApiV1JourneysIdPutResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$ApiV1JourneysIdPutResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1JourneysIdPutResponseDtoImplToJson(
        _$ApiV1JourneysIdPutResponseDtoImpl instance) =>
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

_$ApiV1JourneysIdPutRequestDtoImpl _$$ApiV1JourneysIdPutRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1JourneysIdPutRequestDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ApiV1JourneysIdPutRequestDtoImplToJson(
        _$ApiV1JourneysIdPutRequestDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$ApiV1JourneysPostResponseDtoImpl _$$ApiV1JourneysPostResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1JourneysPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1JourneysPostResponseDtoImplToJson(
        _$ApiV1JourneysPostResponseDtoImpl instance) =>
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

_$ApiV1JourneysPostRequestDtoImpl _$$ApiV1JourneysPostRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiV1JourneysPostRequestDtoImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      firstStepContent: json['firstStepContent'] as String,
    );

Map<String, dynamic> _$$ApiV1JourneysPostRequestDtoImplToJson(
        _$ApiV1JourneysPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'firstStepContent': instance.firstStepContent,
    };

_$ApiV1JourneysIdClosePostResponseDtoImpl
    _$$ApiV1JourneysIdClosePostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1JourneysIdClosePostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1JourneysIdClosePostResponseDtoImplToJson(
        _$ApiV1JourneysIdClosePostResponseDtoImpl instance) =>
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

_$ApiV1JourneysIdReopenPostResponseDtoImpl
    _$$ApiV1JourneysIdReopenPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1JourneysIdReopenPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1JourneysIdReopenPostResponseDtoImplToJson(
        _$ApiV1JourneysIdReopenPostResponseDtoImpl instance) =>
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

_$ApiV1StepsStepIdHeartsPostResponseDtoImpl
    _$$ApiV1StepsStepIdHeartsPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdHeartsPostResponseDtoImpl(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdHeartsPostResponseDtoImplToJson(
        _$ApiV1StepsStepIdHeartsPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_$ApiV1StepsStepIdHeartsPostRequestDtoImpl
    _$$ApiV1StepsStepIdHeartsPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdHeartsPostRequestDtoImpl(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdHeartsPostRequestDtoImplToJson(
        _$ApiV1StepsStepIdHeartsPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl
    _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdHeartsDeleteResponseDtoImplToJson(
        _$ApiV1StepsStepIdHeartsDeleteResponseDtoImpl instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_$ApiV1StepsStepIdSharesPostResponseDtoImpl
    _$$ApiV1StepsStepIdSharesPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdSharesPostResponseDtoImpl(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdSharesPostResponseDtoImplToJson(
        _$ApiV1StepsStepIdSharesPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_$ApiV1StepsStepIdSharesPostRequestDtoImpl
    _$$ApiV1StepsStepIdSharesPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdSharesPostRequestDtoImpl(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdSharesPostRequestDtoImplToJson(
        _$ApiV1StepsStepIdSharesPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$ApiV1StepsStepIdInteractionsGetResponseDtoImpl
    _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl(
          isSteppedWith: json['isSteppedWith'] as bool?,
          isLiked: json['isLiked'] as bool?,
          totalLikes: (json['totalLikes'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ApiV1StepsStepIdInteractionsGetResponseDtoImplToJson(
        _$ApiV1StepsStepIdInteractionsGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'isSteppedWith': instance.isSteppedWith,
      'isLiked': instance.isLiked,
      'totalLikes': instance.totalLikes,
    };

_$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl
    _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl(
          type: (json['type'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImplToJson(
            _$ApiV1StepsCommentsCommentIdHeartsPostRequestDtoImpl instance) =>
        <String, dynamic>{
          'type': instance.type,
        };

_$ApiV1FollowingsFollowPostResponseDtoImpl
    _$$ApiV1FollowingsFollowPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsFollowPostResponseDtoImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ApiV1FollowingsFollowPostResponseDtoImplToJson(
        _$ApiV1FollowingsFollowPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ApiV1FollowingsFollowPostRequestDtoImpl
    _$$ApiV1FollowingsFollowPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsFollowPostRequestDtoImpl(
          userId: json['userId'] as String,
        );

Map<String, dynamic> _$$ApiV1FollowingsFollowPostRequestDtoImplToJson(
        _$ApiV1FollowingsFollowPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$ApiV1FollowingsUnfollowDeleteResponseDtoImpl
    _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ApiV1FollowingsUnfollowDeleteResponseDtoImplToJson(
        _$ApiV1FollowingsUnfollowDeleteResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ApiV1FollowingsUnfollowDeleteRequestDtoImpl
    _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl(
          userId: json['userId'] as String,
        );

Map<String, dynamic> _$$ApiV1FollowingsUnfollowDeleteRequestDtoImplToJson(
        _$ApiV1FollowingsUnfollowDeleteRequestDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$ApiV1FollowingsUserIdRejectPostResponseDtoImpl
    _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ApiV1FollowingsUserIdRejectPostResponseDtoImplToJson(
        _$ApiV1FollowingsUserIdRejectPostResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$ApiV1FollowingsStatusUserIdGetResponseDtoImpl
    _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl(
          status: (json['status'] as num).toInt(),
        );

Map<String, dynamic> _$$ApiV1FollowingsStatusUserIdGetResponseDtoImplToJson(
        _$ApiV1FollowingsStatusUserIdGetResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl
    _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl(
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

Map<String,
    dynamic> _$$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImplToJson(
        _$ApiV1CommentsParentCommentIdRepliesPostResponseDtoImpl instance) =>
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

_$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl
    _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl(
          content: json['content'] as String,
          responseToUserId: json['responseToUserId'] as String?,
          responseToCommentId: json['responseToCommentId'] as String?,
        );

Map<String, dynamic>
    _$$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImplToJson(
            _$ApiV1CommentsParentCommentIdRepliesPostRequestDtoImpl instance) =>
        <String, dynamic>{
          'content': instance.content,
          'responseToUserId': instance.responseToUserId,
          'responseToCommentId': instance.responseToCommentId,
        };

_$ApiV1StepsStepIdCommentsPostResponseDtoImpl
    _$$ApiV1StepsStepIdCommentsPostResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdCommentsPostResponseDtoImpl(
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

Map<String, dynamic> _$$ApiV1StepsStepIdCommentsPostResponseDtoImplToJson(
        _$ApiV1StepsStepIdCommentsPostResponseDtoImpl instance) =>
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

_$ApiV1StepsStepIdCommentsPostRequestDtoImpl
    _$$ApiV1StepsStepIdCommentsPostRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ApiV1StepsStepIdCommentsPostRequestDtoImpl(
          content: json['content'] as String,
        );

Map<String, dynamic> _$$ApiV1StepsStepIdCommentsPostRequestDtoImplToJson(
        _$ApiV1StepsStepIdCommentsPostRequestDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
