// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepo.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) => _AccountDto(
      id: json['id'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$UserRoleDtoEnumMap, json['role']),
    );

Map<String, dynamic> _$AccountDtoToJson(_AccountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'role': _$UserRoleDtoEnumMap[instance.role],
    };

const _$UserRoleDtoEnumMap = {
  UserRoleDto.moderator: 'Moderator',
  UserRoleDto.admin: 'Admin',
  UserRoleDto.superAdmin: 'SuperAdmin',
};

_AppFeedbackDto _$AppFeedbackDtoFromJson(Map<String, dynamic> json) =>
    _AppFeedbackDto(
      id: json['id'] as String,
      content: json['content'] as String,
      feedbackType: $enumDecode(_$FeedbackTypeDtoEnumMap, json['feedbackType']),
      status: $enumDecode(_$FeedbackStatusDtoEnumMap, json['status']),
      imageUrl: json['imageUrl'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      appVersion: json['appVersion'] as String?,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      createdDate: DateTime.parse(json['createdDate'] as String),
      adminResponse: json['adminResponse'] as String?,
      adminUserId: json['adminUserId'] as String?,
      respondedDate: json['respondedDate'] == null
          ? null
          : DateTime.parse(json['respondedDate'] as String),
    );

Map<String, dynamic> _$AppFeedbackDtoToJson(_AppFeedbackDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'feedbackType': _$FeedbackTypeDtoEnumMap[instance.feedbackType]!,
      'status': _$FeedbackStatusDtoEnumMap[instance.status]!,
      'imageUrl': instance.imageUrl,
      'deviceInfo': instance.deviceInfo,
      'appVersion': instance.appVersion,
      'user': instance.user,
      'createdDate': instance.createdDate.toIso8601String(),
      'adminResponse': instance.adminResponse,
      'adminUserId': instance.adminUserId,
      'respondedDate': instance.respondedDate?.toIso8601String(),
    };

const _$FeedbackTypeDtoEnumMap = {
  FeedbackTypeDto.bugReport: 'BugReport',
  FeedbackTypeDto.featureRequest: 'FeatureRequest',
  FeedbackTypeDto.generalFeedback: 'GeneralFeedback',
  FeedbackTypeDto.uiUxIssue: 'UiUxIssue',
  FeedbackTypeDto.performance: 'Performance',
  FeedbackTypeDto.other: 'Other',
};

const _$FeedbackStatusDtoEnumMap = {
  FeedbackStatusDto.open: 'Open',
  FeedbackStatusDto.inProgress: 'InProgress',
  FeedbackStatusDto.resolved: 'Resolved',
  FeedbackStatusDto.closed: 'Closed',
  FeedbackStatusDto.duplicate: 'Duplicate',
};

_BadgesEarnedDetailDto _$BadgesEarnedDetailDtoFromJson(
        Map<String, dynamic> json) =>
    _BadgesEarnedDetailDto(
      totalBadgesEarned: (json['totalBadgesEarned'] as num?)?.toInt() ?? 0,
      companionsCount: (json['companionsCount'] as num?)?.toInt() ?? 0,
      companionUsers: (json['companionUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      startersCount: (json['startersCount'] as num?)?.toInt() ?? 0,
      starterUsers: (json['starterUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      celebratorsCount: (json['celebratorsCount'] as num?)?.toInt() ?? 0,
      celebratorUsers: (json['celebratorUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepWithCount: (json['stepWithCount'] as num?)?.toInt() ?? 0,
      stepWithUsers: (json['stepWithUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      topSupportedUsers: (json['topSupportedUsers'] as List<dynamic>?)
          ?.map((e) => TopSupportUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BadgesEarnedDetailDtoToJson(
        _BadgesEarnedDetailDto instance) =>
    <String, dynamic>{
      'totalBadgesEarned': instance.totalBadgesEarned,
      'companionsCount': instance.companionsCount,
      'companionUsers': instance.companionUsers,
      'startersCount': instance.startersCount,
      'starterUsers': instance.starterUsers,
      'celebratorsCount': instance.celebratorsCount,
      'celebratorUsers': instance.celebratorUsers,
      'stepWithCount': instance.stepWithCount,
      'stepWithUsers': instance.stepWithUsers,
      'topSupportedUsers': instance.topSupportedUsers,
    };

_BanUserDto _$BanUserDtoFromJson(Map<String, dynamic> json) => _BanUserDto(
      reason: json['reason'] as String,
      isShadowBan: json['isShadowBan'] as bool? ?? false,
      additionalNotes: json['additionalNotes'] as String?,
    );

Map<String, dynamic> _$BanUserDtoToJson(_BanUserDto instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'isShadowBan': instance.isShadowBan,
      'additionalNotes': instance.additionalNotes,
    };

_CreateAppFeedbackDto _$CreateAppFeedbackDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateAppFeedbackDto(
      content: json['content'] as String,
      feedbackType: $enumDecode(_$FeedbackTypeDtoEnumMap, json['feedbackType']),
      deviceInfo: json['deviceInfo'] as String?,
      appVersion: json['appVersion'] as String?,
    );

Map<String, dynamic> _$CreateAppFeedbackDtoToJson(
        _CreateAppFeedbackDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'feedbackType': _$FeedbackTypeDtoEnumMap[instance.feedbackType]!,
      'deviceInfo': instance.deviceInfo,
      'appVersion': instance.appVersion,
    };

_CreateCommentInteractionDto _$CreateCommentInteractionDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateCommentInteractionDto(
      type: $enumDecodeNullable(_$InteractionTypeDtoEnumMap, json['type']) ??
          InteractionTypeDto.heart,
    );

Map<String, dynamic> _$CreateCommentInteractionDtoToJson(
        _CreateCommentInteractionDto instance) =>
    <String, dynamic>{
      'type': _$InteractionTypeDtoEnumMap[instance.type]!,
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
      isFinalStep: json['isFinalStep'] as bool? ?? false,
    );

Map<String, dynamic> _$CreateStepDtoToJson(_CreateStepDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'journeyId': instance.journeyId,
      'isFinalStep': instance.isFinalStep,
    };

_CreateStepInteractionDto _$CreateStepInteractionDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateStepInteractionDto(
      type: $enumDecodeNullable(_$InteractionTypeDtoEnumMap, json['type']) ??
          InteractionTypeDto.heart,
    );

Map<String, dynamic> _$CreateStepInteractionDtoToJson(
        _CreateStepInteractionDto instance) =>
    <String, dynamic>{
      'type': _$InteractionTypeDtoEnumMap[instance.type]!,
    };

_EditUserDto _$EditUserDtoFromJson(Map<String, dynamic> json) => _EditUserDto(
      displayName: json['displayName'] as String,
      username: json['username'] as String,
      description: json['description'] as String? ?? '',
      isPrivate: json['isPrivate'] as bool? ?? false,
    );

Map<String, dynamic> _$EditUserDtoToJson(_EditUserDto instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'username': instance.username,
      'description': instance.description,
      'isPrivate': instance.isPrivate,
    };

_FollowingStatusDto _$FollowingStatusDtoFromJson(Map<String, dynamic> json) =>
    _FollowingStatusDto(
      status: $enumDecode(_$FollowingStatusEnumDtoEnumMap, json['status']),
    );

Map<String, dynamic> _$FollowingStatusDtoToJson(_FollowingStatusDto instance) =>
    <String, dynamic>{
      'status': _$FollowingStatusEnumDtoEnumMap[instance.status]!,
    };

const _$FollowingStatusEnumDtoEnumMap = {
  FollowingStatusEnumDto.notFollowing: 'NotFollowing',
  FollowingStatusEnumDto.following: 'Following',
  FollowingStatusEnumDto.requested: 'Requested',
};

_FollowRequestDto _$FollowRequestDtoFromJson(Map<String, dynamic> json) =>
    _FollowRequestDto(
      requesterId: json['requesterId'] as String,
      requester:
          UserDetailDto.fromJson(json['requester'] as Map<String, dynamic>),
      requestDate: DateTime.parse(json['requestDate'] as String),
    );

Map<String, dynamic> _$FollowRequestDtoToJson(_FollowRequestDto instance) =>
    <String, dynamic>{
      'requesterId': instance.requesterId,
      'requester': instance.requester,
      'requestDate': instance.requestDate.toIso8601String(),
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
      id: json['id'] as String,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      status: json['status'] as String? ?? 'Open',
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      userId: json['userId'] as String? ?? '',
      firstStepId: json['firstStepId'] as String?,
      finalStepId: json['finalStepId'] as String?,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isUnavailable: json['isUnavailable'] as bool? ?? false,
      unavailableReason: json['unavailableReason'] as String? ?? '',
    );

Map<String, dynamic> _$JourneyDtoToJson(_JourneyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'status': instance.status,
      'completedDate': instance.completedDate?.toIso8601String(),
      'userId': instance.userId,
      'firstStepId': instance.firstStepId,
      'finalStepId': instance.finalStepId,
      'isDeleted': instance.isDeleted,
      'isUnavailable': instance.isUnavailable,
      'unavailableReason': instance.unavailableReason,
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
      companionProgress: json['companionProgress'] as num? ?? 0,
      companionProgressMessage: json['companionProgressMessage'] as String?,
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
      'companionProgress': instance.companionProgress,
      'companionProgressMessage': instance.companionProgressMessage,
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
      token: json['token'] as String? ?? '',
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$LoginResponseDtoToJson(_LoginResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'uid': instance.uid,
    };

_NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    _NotificationDto(
      id: json['id'] as String?,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
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

const _$NotificationTypeDtoEnumMap = {
  NotificationTypeDto.stepWithHeart: 'StepWithHeart',
  NotificationTypeDto.stepWithShare: 'StepWithShare',
  NotificationTypeDto.stepWithComment: 'StepWithComment',
  NotificationTypeDto.regularHeart: 'RegularHeart',
  NotificationTypeDto.regularShare: 'RegularShare',
  NotificationTypeDto.regularComment: 'RegularComment',
  NotificationTypeDto.commentReply: 'CommentReply',
  NotificationTypeDto.commentMention: 'CommentMention',
  NotificationTypeDto.newFollower: 'NewFollower',
  NotificationTypeDto.followRequestAccepted: 'FollowRequestAccepted',
  NotificationTypeDto.journeyAchievement: 'JourneyAchievement',
  NotificationTypeDto.journeyFirstStep: 'JourneyFirstStep',
  NotificationTypeDto.newStepAlert: 'NewStepAlert',
  NotificationTypeDto.systemAnnouncement: 'SystemAnnouncement',
  NotificationTypeDto.systemMaintenance: 'SystemMaintenance',
  NotificationTypeDto.systemUpdate: 'SystemUpdate',
  NotificationTypeDto.moderationAlert: 'ModerationAlert',
  NotificationTypeDto.accountWarning: 'AccountWarning',
  NotificationTypeDto.securityAlert: 'SecurityAlert',
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

_NotificationPreferencesDto _$NotificationPreferencesDtoFromJson(
        Map<String, dynamic> json) =>
    _NotificationPreferencesDto(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      pushNotifications: json['pushNotifications'] as bool?,
      mentions: json['mentions'] as bool?,
      oldStepNotifications: json['oldStepNotifications'] as bool?,
      trendingStepSuggestions: json['trendingStepSuggestions'] as bool?,
      trendingJourneySuggestions: json['trendingJourneySuggestions'] as bool?,
      followSuggestions: json['followSuggestions'] as bool?,
    );

Map<String, dynamic> _$NotificationPreferencesDtoToJson(
        _NotificationPreferencesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'pushNotifications': instance.pushNotifications,
      'mentions': instance.mentions,
      'oldStepNotifications': instance.oldStepNotifications,
      'trendingStepSuggestions': instance.trendingStepSuggestions,
      'trendingJourneySuggestions': instance.trendingJourneySuggestions,
      'followSuggestions': instance.followSuggestions,
    };

_PageResponseOfAppFeedbackDto _$PageResponseOfAppFeedbackDtoFromJson(
        Map<String, dynamic> json) =>
    _PageResponseOfAppFeedbackDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => AppFeedbackDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
    );

Map<String, dynamic> _$PageResponseOfAppFeedbackDtoToJson(
        _PageResponseOfAppFeedbackDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
      userDetail:
          UserDetailDto.fromJson(json['userDetail'] as Map<String, dynamic>),
      badgesEarned: (json['badgesEarned'] as num?)?.toInt() ?? 0,
      latestSupportedUsers: (json['latestSupportedUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportReceived: (json['supportReceived'] as num?)?.toInt() ?? 0,
      latestSupporters: (json['latestSupporters'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      followersCount: (json['followersCount'] as num?)?.toInt() ?? 0,
      followingsCount: (json['followingsCount'] as num?)?.toInt() ?? 0,
      hasPendingFollowRequestToMe:
          json['hasPendingFollowRequestToMe'] as bool? ?? false,
    );

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'userDetail': instance.userDetail,
      'badgesEarned': instance.badgesEarned,
      'latestSupportedUsers': instance.latestSupportedUsers,
      'supportReceived': instance.supportReceived,
      'latestSupporters': instance.latestSupporters,
      'followersCount': instance.followersCount,
      'followingsCount': instance.followingsCount,
      'hasPendingFollowRequestToMe': instance.hasPendingFollowRequestToMe,
    };

_RemoveContentDto _$RemoveContentDtoFromJson(Map<String, dynamic> json) =>
    _RemoveContentDto(
      reason: json['reason'] as String,
      additionalNotes: json['additionalNotes'] as String?,
    );

Map<String, dynamic> _$RemoveContentDtoToJson(_RemoveContentDto instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'additionalNotes': instance.additionalNotes,
    };

_ReplyDto _$ReplyDtoFromJson(Map<String, dynamic> json) => _ReplyDto(
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.parse(json['deletedDate'] as String),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      parentCommentId: json['parentCommentId'] as String,
      responseToUser: json['responseToUser'] == null
          ? null
          : UserDto.fromJson(json['responseToUser'] as Map<String, dynamic>),
      responseToCommentId: json['responseToCommentId'] as String?,
      heartCount: (json['heartCount'] as num?)?.toInt() ?? 0,
      heartedByUser: json['heartedByUser'] as bool? ?? false,
    );

Map<String, dynamic> _$ReplyDtoToJson(_ReplyDto instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
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
      entityId: json['entityId'] as String? ?? '',
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

_StepCommentDto _$StepCommentDtoFromJson(Map<String, dynamic> json) =>
    _StepCommentDto(
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.parse(json['deletedDate'] as String),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      stepId: json['stepId'] as String,
      heartCount: (json['heartCount'] as num?)?.toInt() ?? 0,
      heartedByUser: json['heartedByUser'] as bool? ?? false,
      replyCount: (json['replyCount'] as num?)?.toInt() ?? 0,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isUnavailable: json['isUnavailable'] as bool? ?? false,
      unavailableReason: json['unavailableReason'] as String? ?? '',
    );

Map<String, dynamic> _$StepCommentDtoToJson(_StepCommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'deletedDate': instance.deletedDate?.toIso8601String(),
      'user': instance.user,
      'stepId': instance.stepId,
      'heartCount': instance.heartCount,
      'heartedByUser': instance.heartedByUser,
      'replyCount': instance.replyCount,
      'isDeleted': instance.isDeleted,
      'isUnavailable': instance.isUnavailable,
      'unavailableReason': instance.unavailableReason,
    };

_StepDetailDto _$StepDetailDtoFromJson(Map<String, dynamic> json) =>
    _StepDetailDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      journey: JourneyDto.fromJson(json['journey'] as Map<String, dynamic>),
      hearts: (json['hearts'] as num?)?.toInt() ?? 0,
      heartedByUser: json['heartedByUser'] as bool? ?? false,
      shares: (json['shares'] as num?)?.toInt() ?? 0,
      sharedByUser: json['sharedByUser'] as bool? ?? false,
      comments: (json['comments'] as num?)?.toInt() ?? 0,
      commentedByUser: json['commentedByUser'] as bool? ?? false,
      userSteppedWithInteractions:
          (json['userSteppedWithInteractions'] as num?)?.toInt() ?? 0,
      othersStepWith: (json['othersStepWith'] as num?)?.toInt() ?? 0,
      othersStepWithUsers: (json['othersStepWithUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepType: $enumDecodeNullable(_$StepTypeDtoEnumMap, json['stepType']),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => StepMediaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      userId: json['userId'] as String,
      journeyId: json['journeyId'] as String,
      stepWithWindowHours: json['stepWithWindowHours'] as num,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isUnavailable: json['isUnavailable'] as bool? ?? false,
      unavailableReason: json['unavailableReason'] as String? ?? '',
    );

Map<String, dynamic> _$StepDetailDtoToJson(_StepDetailDto instance) =>
    <String, dynamic>{
      'user': instance.user,
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
      'stepType': _$StepTypeDtoEnumMap[instance.stepType],
      'media': instance.media,
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'userId': instance.userId,
      'journeyId': instance.journeyId,
      'stepWithWindowHours': instance.stepWithWindowHours,
      'isDeleted': instance.isDeleted,
      'isUnavailable': instance.isUnavailable,
      'unavailableReason': instance.unavailableReason,
    };

const _$StepTypeDtoEnumMap = {
  StepTypeDto.firstStep: 'FirstStep',
  StepTypeDto.finalStep: 'FinalStep',
  StepTypeDto.regularStep: 'RegularStep',
};

_StepDto _$StepDtoFromJson(Map<String, dynamic> json) => _StepDto(
      id: json['id'] as String,
      content: json['content'] as String? ?? '',
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      userId: json['userId'] as String,
      journeyId: json['journeyId'] as String,
      stepWithWindowHours: json['stepWithWindowHours'] as num,
      media: json['media'] == null
          ? null
          : StepMediaDto.fromJson(json['media'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool? ?? false,
      isUnavailable: json['isUnavailable'] as bool? ?? false,
      unavailableReason: json['unavailableReason'] as String? ?? '',
    );

Map<String, dynamic> _$StepDtoToJson(_StepDto instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'userId': instance.userId,
      'journeyId': instance.journeyId,
      'stepWithWindowHours': instance.stepWithWindowHours,
      'media': instance.media,
      'isDeleted': instance.isDeleted,
      'isUnavailable': instance.isUnavailable,
      'unavailableReason': instance.unavailableReason,
    };

_StepMediaDto _$StepMediaDtoFromJson(Map<String, dynamic> json) =>
    _StepMediaDto(
      id: json['id'] as String?,
      stepId: json['stepId'] as String?,
      mediaType: json['mediaType'] as String? ?? '',
      originalUrl: json['originalUrl'] as String? ?? '',
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

_SupportReceivedDetailDto _$SupportReceivedDetailDtoFromJson(
        Map<String, dynamic> json) =>
    _SupportReceivedDetailDto(
      totalSupportReceived:
          (json['totalSupportReceived'] as num?)?.toInt() ?? 0,
      companionsCount: (json['companionsCount'] as num?)?.toInt() ?? 0,
      companionUsers: (json['companionUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      startersCount: (json['startersCount'] as num?)?.toInt() ?? 0,
      starterUsers: (json['starterUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      celebratorsCount: (json['celebratorsCount'] as num?)?.toInt() ?? 0,
      celebratorUsers: (json['celebratorUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepWithCount: (json['stepWithCount'] as num?)?.toInt() ?? 0,
      stepWithUsers: (json['stepWithUsers'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      topActiveSupporters: (json['topActiveSupporters'] as List<dynamic>?)
          ?.map((e) => TopSupportUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SupportReceivedDetailDtoToJson(
        _SupportReceivedDetailDto instance) =>
    <String, dynamic>{
      'totalSupportReceived': instance.totalSupportReceived,
      'companionsCount': instance.companionsCount,
      'companionUsers': instance.companionUsers,
      'startersCount': instance.startersCount,
      'starterUsers': instance.starterUsers,
      'celebratorsCount': instance.celebratorsCount,
      'celebratorUsers': instance.celebratorUsers,
      'stepWithCount': instance.stepWithCount,
      'stepWithUsers': instance.stepWithUsers,
      'topActiveSupporters': instance.topActiveSupporters,
    };

_TestNotificationDto _$TestNotificationDtoFromJson(Map<String, dynamic> json) =>
    _TestNotificationDto(
      title: json['title'] as String?,
      body: json['body'] as String?,
      userId: json['userId'] as String?,
      topic: json['topic'] as String?,
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TestNotificationDtoToJson(
        _TestNotificationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
      'topic': instance.topic,
      'data': instance.data,
      'priority': instance.priority,
    };

_TestNotificationResultDto _$TestNotificationResultDtoFromJson(
        Map<String, dynamic> json) =>
    _TestNotificationResultDto(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TestNotificationResultDtoToJson(
        _TestNotificationResultDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };

_TopSupportUserDto _$TopSupportUserDtoFromJson(Map<String, dynamic> json) =>
    _TopSupportUserDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      companionsGiven: (json['companionsGiven'] as num?)?.toInt() ?? 0,
      startersGiven: (json['startersGiven'] as num?)?.toInt() ?? 0,
      celebratorsGiven: (json['celebratorsGiven'] as num?)?.toInt() ?? 0,
      stepWithGiven: (json['stepWithGiven'] as num?)?.toInt() ?? 0,
      totalSupport: (json['totalSupport'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TopSupportUserDtoToJson(_TopSupportUserDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'companionsGiven': instance.companionsGiven,
      'startersGiven': instance.startersGiven,
      'celebratorsGiven': instance.celebratorsGiven,
      'stepWithGiven': instance.stepWithGiven,
      'totalSupport': instance.totalSupport,
    };

_UpdateFeedbackStatusDto _$UpdateFeedbackStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdateFeedbackStatusDto(
      status: $enumDecode(_$FeedbackStatusDtoEnumMap, json['status']),
      adminResponse: json['adminResponse'] as String?,
    );

Map<String, dynamic> _$UpdateFeedbackStatusDtoToJson(
        _UpdateFeedbackStatusDto instance) =>
    <String, dynamic>{
      'status': _$FeedbackStatusDtoEnumMap[instance.status]!,
      'adminResponse': instance.adminResponse,
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

_UpdatePreferencesDto _$UpdatePreferencesDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdatePreferencesDto(
      pushNotifications: json['pushNotifications'] as bool?,
      mentions: json['mentions'] as bool?,
      oldStepNotifications: json['oldStepNotifications'] as bool?,
      trendingStepSuggestions: json['trendingStepSuggestions'] as bool?,
      trendingJourneySuggestions: json['trendingJourneySuggestions'] as bool?,
      followSuggestions: json['followSuggestions'] as bool?,
    );

Map<String, dynamic> _$UpdatePreferencesDtoToJson(
        _UpdatePreferencesDto instance) =>
    <String, dynamic>{
      'pushNotifications': instance.pushNotifications,
      'mentions': instance.mentions,
      'oldStepNotifications': instance.oldStepNotifications,
      'trendingStepSuggestions': instance.trendingStepSuggestions,
      'trendingJourneySuggestions': instance.trendingJourneySuggestions,
      'followSuggestions': instance.followSuggestions,
    };

_UpdateStepDto _$UpdateStepDtoFromJson(Map<String, dynamic> json) =>
    _UpdateStepDto(
      content: json['content'] as String,
    );

Map<String, dynamic> _$UpdateStepDtoToJson(_UpdateStepDto instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_UpdateUserStatusDto _$UpdateUserStatusDtoFromJson(Map<String, dynamic> json) =>
    _UpdateUserStatusDto(
      status: $enumDecode(_$UserStatusDtoEnumMap, json['status']),
      reason: json['reason'] as String?,
      additionalNotes: json['additionalNotes'] as String?,
    );

Map<String, dynamic> _$UpdateUserStatusDtoToJson(
        _UpdateUserStatusDto instance) =>
    <String, dynamic>{
      'status': _$UserStatusDtoEnumMap[instance.status]!,
      'reason': instance.reason,
      'additionalNotes': instance.additionalNotes,
    };

const _$UserStatusDtoEnumMap = {
  UserStatusDto.active: 'Active',
  UserStatusDto.shadowBanned: 'ShadowBanned',
  UserStatusDto.hardBanned: 'HardBanned',
  UserStatusDto.deactivated: 'Deactivated',
};

_UserDetailDto _$UserDetailDtoFromJson(Map<String, dynamic> json) =>
    _UserDetailDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      followingStatus: $enumDecodeNullable(
              _$FollowingStatusEnumDtoEnumMap, json['followingStatus']) ??
          FollowingStatusEnumDto.notFollowing,
      isFollowingMe: json['isFollowingMe'] as bool? ?? false,
    );

Map<String, dynamic> _$UserDetailDtoToJson(_UserDetailDto instance) =>
    <String, dynamic>{
      'user': instance.user,
      'followingStatus':
          _$FollowingStatusEnumDtoEnumMap[instance.followingStatus]!,
      'isFollowingMe': instance.isFollowingMe,
    };

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: json['id'] as String,
      displayName: json['displayName'] as String? ?? '',
      username: json['username'] as String? ?? '',
      description: json['description'] as String? ?? '',
      profilePictureUrl: json['profilePictureUrl'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      age: (json['age'] as num?)?.toInt(),
      isPrivate: json['isPrivate'] as bool? ?? false,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      status: $enumDecodeNullable(_$UserStatusDtoEnumMap, json['status']) ??
          UserStatusDto.active,
      isRestricted: json['isRestricted'] as bool? ?? false,
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
      'status': _$UserStatusDtoEnumMap[instance.status]!,
      'isRestricted': instance.isRestricted,
    };

_VideoPreSignedUrlDto _$VideoPreSignedUrlDtoFromJson(
        Map<String, dynamic> json) =>
    _VideoPreSignedUrlDto(
      authorizationSignature: json['authorizationSignature'] as String? ?? '',
      authorizationExpire: (json['authorizationExpire'] as num?)?.toInt(),
      videoGuid: json['videoGuid'] as String?,
      libraryId: (json['libraryId'] as num?)?.toInt(),
      title: json['title'] as String? ?? '',
      collectionId: json['collectionId'] as String? ?? '',
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
