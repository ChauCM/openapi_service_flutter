// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i1;

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'stepo.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';
import 'package:mime/mime.dart';

class StepoService {
  StepoService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// get: /api/v1/account
  Future<Either<ApiError, AccountDto>> apiV1AccountGet() async {
    final endpoint = '/api/v1/account';
    try {
      final response = await _dio.get(endpoint);
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/account
  Future<Either<ApiError, AccountDto>> apiV1AccountPut(EditUserDto body) async {
    final endpoint = '/api/v1/account';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// delete: /api/v1/account
  Future<Either<ApiError, void>> apiV1AccountDelete() async {
    final endpoint = '/api/v1/account';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/account/avatar
  Future<Either<ApiError, AccountDto>> apiV1AccountAvatarPost(
    _i1.File file, {
    void Function(int sent, int total)? onProgress,
  }) async {
    final endpoint = '/api/v1/account/avatar';
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        endpoint,
        data: file.openRead(),
        onSendProgress: onProgress,
        options: Options(headers: <String, dynamic>{
          'Content-Length': length.toString(),
          'Content-Type': mime,
        }),
      );
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: file,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/auth/login
  Future<Either<ApiError, LoginResponseDto>> apiV1AuthLoginPost(
      LoginDto body) async {
    final endpoint = '/api/v1/auth/login';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = LoginResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/users/{id}
  Future<Either<ApiError, ProfileDto>> apiV1UsersIdGet(
      {required String id}) async {
    final endpoint = '/api/v1/users/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = ProfileDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/users/{id}/badges-earned
  Future<Either<ApiError, BadgesEarnedDetailDto>> apiV1UsersIdBadgesEarnedGet(
      {required String id}) async {
    final endpoint = '/api/v1/users/$id/badges-earned';
    try {
      final response = await _dio.get(endpoint);
      final result = BadgesEarnedDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/users/{id}/support-received
  Future<Either<ApiError, SupportReceivedDetailDto>>
      apiV1UsersIdSupportReceivedGet({required String id}) async {
    final endpoint = '/api/v1/users/$id/support-received';
    try {
      final response = await _dio.get(endpoint);
      final result = SupportReceivedDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create a new step for a journey
  /// post: /api/v1/steps
  Future<Either<ApiError, StepDetailDto>> apiV1StepsPost(
      CreateStepDto body) async {
    final endpoint = '/api/v1/steps';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get step details by ID
  /// get: /api/v1/steps/{stepId}
  Future<Either<ApiError, StepDetailDto>> apiV1StepsStepIdGet(
      {required String stepId}) async {
    final endpoint = '/api/v1/steps/$stepId';
    try {
      final response = await _dio.get(endpoint);
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Update step details
  /// put: /api/v1/steps/{stepId}
  Future<Either<ApiError, StepDetailDto>> apiV1StepsStepIdPut(
    UpdateStepDto body, {
    required String stepId,
  }) async {
    final endpoint = '/api/v1/steps/$stepId';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete a step
  /// delete: /api/v1/steps/{stepId}
  Future<Either<ApiError, void>> apiV1StepsStepIdDelete(
      {required String stepId}) async {
    final endpoint = '/api/v1/steps/$stepId';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get steps for a specific user
  /// get: /api/v1/users/{userId}/steps
  Future<Either<ApiError, List<StepDetailDto>>> apiV1UsersUserIdStepsGet({
    required String userId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/users/$userId/steps';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get current user's steps
  /// get: /api/v1/account/steps
  Future<Either<ApiError, List<StepDetailDto>>> apiV1AccountStepsGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/steps';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get reports for content moderation
  /// get: /api/v1/reports
  Future<Either<ApiError, List<ReportDto>>> apiV1ReportsGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/reports';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => ReportDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create a report for inappropriate content
  /// post: /api/v1/reports
  Future<Either<ApiError, ReportDto>> apiV1ReportsPost(
      ReportCreatingDto body) async {
    final endpoint = '/api/v1/reports';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = ReportDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Send test notification (Admin only)
  /// post: /api/v1/admin/notifications/test-send
  Future<Either<ApiError, TestNotificationResultDto>>
      apiV1AdminNotificationsTestSendPost(TestNotificationDto body) async {
    final endpoint = '/api/v1/admin/notifications/test-send';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = TestNotificationResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user notification preferences
  /// get: /api/v1/notifications/preferences
  Future<Either<ApiError, NotificationPreferencesDto>>
      apiV1NotificationsPreferencesGet() async {
    final endpoint = '/api/v1/notifications/preferences';
    try {
      final response = await _dio.get(endpoint);
      final result = NotificationPreferencesDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Update user notification preferences
  /// put: /api/v1/notifications/preferences
  Future<Either<ApiError, NotificationPreferencesDto>>
      apiV1NotificationsPreferencesPut(UpdatePreferencesDto body) async {
    final endpoint = '/api/v1/notifications/preferences';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = NotificationPreferencesDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user notifications with pagination
  /// get: /api/v1/notifications
  Future<Either<ApiError, NotificationPagedDto>> apiV1NotificationsGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/notifications';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = NotificationPagedDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get unread notifications count
  /// get: /api/v1/notifications/summary
  Future<Either<ApiError, int>> apiV1NotificationsSummaryGet() async {
    final endpoint = '/api/v1/notifications/summary';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Mark notification as read
  /// put: /api/v1/notifications/{notificationId}/read
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdReadPut(
      {required String notificationId}) async {
    final endpoint = '/api/v1/notifications/$notificationId/read';
    try {
      final _ = await _dio.put(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Mark all notifications as read
  /// put: /api/v1/notifications/read-status
  Future<Either<ApiError, void>> apiV1NotificationsReadStatusPut() async {
    final endpoint = '/api/v1/notifications/read-status';
    try {
      final _ = await _dio.put(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete a notification
  /// delete: /api/v1/notifications/{notificationId}
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdDelete(
      {required String notificationId}) async {
    final endpoint = '/api/v1/notifications/$notificationId';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Remove a comment by moderation
  /// delete: /api/v1/moderation/comments/{commentId}
  Future<Either<ApiError, void>> apiV1ModerationCommentsCommentIdDelete(
    RemoveContentDto body, {
    required String commentId,
  }) async {
    final endpoint = '/api/v1/moderation/comments/$commentId';
    try {
      final _ = await _dio.delete(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Remove a step by moderation
  /// delete: /api/v1/moderation/steps/{stepId}
  Future<Either<ApiError, void>> apiV1ModerationStepsStepIdDelete(
    RemoveContentDto body, {
    required String stepId,
  }) async {
    final endpoint = '/api/v1/moderation/steps/$stepId';
    try {
      final _ = await _dio.delete(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Remove a journey by moderation
  /// delete: /api/v1/moderation/journeys/{journeyId}
  Future<Either<ApiError, void>> apiV1ModerationJourneysJourneyIdDelete(
    RemoveContentDto body, {
    required String journeyId,
  }) async {
    final endpoint = '/api/v1/moderation/journeys/$journeyId';
    try {
      final _ = await _dio.delete(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Ban a user
  /// post: /api/v1/moderation/users/{userId}/ban
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdBanPost(
    BanUserDto body, {
    required String userId,
  }) async {
    final endpoint = '/api/v1/moderation/users/$userId/ban';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Unban a user
  /// post: /api/v1/moderation/users/{userId}/unban
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdUnbanPost(
      {required String userId}) async {
    final endpoint = '/api/v1/moderation/users/$userId/unban';
    try {
      final _ = await _dio.post(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Update user status
  /// put: /api/v1/moderation/users/{userId}/status
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdStatusPut(
    UpdateUserStatusDto body, {
    required String userId,
  }) async {
    final endpoint = '/api/v1/moderation/users/$userId/status';
    try {
      final _ = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user moderation details
  /// get: /api/v1/moderation/users/{userId}
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdGet(
      {required String userId}) async {
    final endpoint = '/api/v1/moderation/users/$userId';
    try {
      final _ = await _dio.get(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get list of banned users
  /// get: /api/v1/moderation/users/banned
  Future<Either<ApiError, void>> apiV1ModerationUsersBannedGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/moderation/users/banned';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get list of shadow banned users
  /// get: /api/v1/moderation/users/shadow-banned
  Future<Either<ApiError, void>> apiV1ModerationUsersShadowBannedGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/moderation/users/shadow-banned';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/media/videos
  Future<Either<ApiError, VideoPreSignedUrlDto>> apiV1MediaVideosPost(
      {String? stepId}) async {
    final endpoint = '/api/v1/media/videos';
    final queryParams = <String, dynamic>{};
    try {
      if (stepId != null) queryParams['stepId'] = stepId;

      final response = await _dio.post(
        endpoint,
        queryParameters: queryParams,
      );
      final result = VideoPreSignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/media/{mediaId}
  Future<Either<ApiError, StepMediaDto>> apiV1MediaMediaIdGet(
      {required String mediaId}) async {
    final endpoint = '/api/v1/media/$mediaId';
    try {
      final response = await _dio.get(endpoint);
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Upload an image for a step
  /// post: /api/v1/steps/{stepId}/images
  Future<Either<ApiError, StepMediaDto>> apiV1StepsStepIdImagesPost(
    _i1.File file, {
    required String stepId,
    void Function(int sent, int total)? onProgress,
  }) async {
    final endpoint = '/api/v1/steps/$stepId/images';
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        endpoint,
        data: file.openRead(),
        onSendProgress: onProgress,
        options: Options(headers: <String, dynamic>{
          'Content-Length': length.toString(),
          'Content-Type': mime,
        }),
      );
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: file,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get video upload URL for a step
  /// put: /api/v1/steps/{stepId}/video
  Future<Either<ApiError, VideoPreSignedUrlDto>> apiV1StepsStepIdVideoPut(
      {required String stepId}) async {
    final endpoint = '/api/v1/steps/$stepId/video';
    try {
      final response = await _dio.put(endpoint);
      final result = VideoPreSignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/webhooks/video-updates
  Future<Either<ApiError, void>> apiV1WebhooksVideoUpdatesPost(
      VideoStatusDto body) async {
    final endpoint = '/api/v1/webhooks/video-updates';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/video-jobs
  Future<Either<ApiError, void>> apiV1VideoJobsPost() async {
    final endpoint = '/api/v1/video-jobs';
    try {
      final _ = await _dio.post(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get journey details by ID
  /// get: /api/v1/journeys/{id}
  Future<Either<ApiError, JourneyInDetailDto>> apiV1JourneysIdGet(
      {required String id}) async {
    final endpoint = '/api/v1/journeys/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = JourneyInDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Update journey details
  /// put: /api/v1/journeys/{id}
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdPut(
    UpdateJourneyDto body, {
    required String id,
  }) async {
    final endpoint = '/api/v1/journeys/$id';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete a journey
  /// delete: /api/v1/journeys/{id}
  Future<Either<ApiError, void>> apiV1JourneysIdDelete(
      {required String id}) async {
    final endpoint = '/api/v1/journeys/$id';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create a new journey
  /// post: /api/v1/journeys
  Future<Either<ApiError, StepDetailDto>> apiV1JourneysPost(
      JourneyCreatingDto body) async {
    final endpoint = '/api/v1/journeys';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Close a journey
  /// post: /api/v1/journeys/{id}/close
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdClosePost({
    required String id,
    String? finalStepId,
  }) async {
    final endpoint = '/api/v1/journeys/$id/close';
    final queryParams = <String, dynamic>{};
    try {
      if (finalStepId != null) queryParams['finalStepId'] = finalStepId;

      final response = await _dio.post(
        endpoint,
        queryParameters: queryParams,
      );
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Reopen a closed journey
  /// post: /api/v1/journeys/{id}/reopen
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdReopenPost(
      {required String id}) async {
    final endpoint = '/api/v1/journeys/$id/reopen';
    try {
      final response = await _dio.post(endpoint);
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get detailed steps for a journey (authenticated view)
  /// get: /api/v1/journeys/{journeyId}/steps-detail
  Future<Either<ApiError, List<StepDetailDto>>>
      apiV1JourneysJourneyIdStepsDetailGet({
    required String journeyId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/journeys/$journeyId/steps-detail';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get steps for a journey (public view)
  /// get: /api/v1/journeys/{journeyId}/steps
  Future<Either<ApiError, List<StepDetailDto>>> apiV1JourneysJourneyIdStepsGet({
    required String journeyId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/journeys/$journeyId/steps';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get calendar view of journey steps
  /// get: /api/v1/journeys/{journeyId}/calendar
  Future<Either<ApiError, List<JourneyDayCalendarDto>>>
      apiV1JourneysJourneyIdCalendarGet({required String journeyId}) async {
    final endpoint = '/api/v1/journeys/$journeyId/calendar';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyDayCalendarDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get steps newer than the specified step within its journey
  /// get: /api/v1/journeys/newer-steps/{stepId}
  Future<Either<ApiError, List<StepDetailDto>>>
      apiV1JourneysNewerStepsStepIdGet({
    required String stepId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/journeys/newer-steps/$stepId';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get steps older than the specified step within its journey
  /// get: /api/v1/journeys/older-steps/{stepId}
  Future<Either<ApiError, List<StepDetailDto>>>
      apiV1JourneysOlderStepsStepIdGet({
    required String stepId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/journeys/older-steps/$stepId';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get journeys for a specific user
  /// get: /api/v1/users/{userId}/journeys
  Future<Either<ApiError, List<JourneyInProfileDto>>>
      apiV1UsersUserIdJourneysGet({
    required String userId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/users/$userId/journeys';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyInProfileDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get current user's journeys
  /// get: /api/v1/account/journeys
  Future<Either<ApiError, List<JourneyInProfileDto>>> apiV1AccountJourneysGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/journeys';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyInProfileDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Follow a journey for step notifications
  /// post: /api/v1/journeys/{journeyId}/follow
  Future<Either<ApiError, bool>> apiV1JourneysJourneyIdFollowPost(
      {required String journeyId}) async {
    final endpoint = '/api/v1/journeys/$journeyId/follow';
    try {
      final response = await _dio.post(endpoint);
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Unfollow a journey
  /// delete: /api/v1/journeys/{journeyId}/follow
  Future<Either<ApiError, bool>> apiV1JourneysJourneyIdFollowDelete(
      {required String journeyId}) async {
    final endpoint = '/api/v1/journeys/$journeyId/follow';
    try {
      final response = await _dio.delete(endpoint);
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdHeartsPost(
    CreateStepInteractionDto body, {
    required String stepId,
  }) async {
    final endpoint = '/api/v1/steps/$stepId/hearts';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// delete: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdHeartsDelete(
      {required String stepId}) async {
    final endpoint = '/api/v1/steps/$stepId/hearts';
    try {
      final response = await _dio.delete(endpoint);
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/steps/{stepId}/shares
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdSharesPost(
    CreateStepInteractionDto body, {
    required String stepId,
  }) async {
    final endpoint = '/api/v1/steps/$stepId/shares';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/steps/{stepId}/interactions
  Future<Either<ApiError, InteractionResultDto>>
      apiV1StepsStepIdInteractionsGet({required String stepId}) async {
    final endpoint = '/api/v1/steps/$stepId/interactions';
    try {
      final response = await _dio.get(endpoint);
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/steps/comments/{commentId}/hearts
  Future<Either<ApiError, bool>> apiV1StepsCommentsCommentIdHeartsPost(
    CreateCommentInteractionDto body, {
    required String commentId,
  }) async {
    final endpoint = '/api/v1/steps/comments/$commentId/hearts';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// delete: /api/v1/steps/comments/{commentId}/hearts
  Future<Either<ApiError, bool>> apiV1StepsCommentsCommentIdHeartsDelete(
      {required String commentId}) async {
    final endpoint = '/api/v1/steps/comments/$commentId/hearts';
    try {
      final response = await _dio.delete(endpoint);
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get my followers list
  /// get: /api/v1/account/followers
  Future<Either<ApiError, List<UserDetailDto>>> apiV1AccountFollowersGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/followers';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get my followings list
  /// get: /api/v1/account/followings
  Future<Either<ApiError, List<UserDetailDto>>> apiV1AccountFollowingsGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/followings';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get incoming follow requests
  /// get: /api/v1/account/follow-requests/incoming
  Future<Either<ApiError, List<FollowRequestDto>>>
      apiV1AccountFollowRequestsIncomingGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/follow-requests/incoming';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              FollowRequestDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get outgoing follow requests
  /// get: /api/v1/account/follow-requests/outgoing
  Future<Either<ApiError, List<FollowRequestDto>>>
      apiV1AccountFollowRequestsOutgoingGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/account/follow-requests/outgoing';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              FollowRequestDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Accept a follow request
  /// post: /api/v1/account/follow-requests/{requesterId}/accept
  Future<Either<ApiError, void>>
      apiV1AccountFollowRequestsRequesterIdAcceptPost(
          {required String requesterId}) async {
    final endpoint = '/api/v1/account/follow-requests/$requesterId/accept';
    try {
      final _ = await _dio.post(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Reject a follow request
  /// delete: /api/v1/account/follow-requests/{requesterId}/reject
  Future<Either<ApiError, void>>
      apiV1AccountFollowRequestsRequesterIdRejectDelete(
          {required String requesterId}) async {
    final endpoint = '/api/v1/account/follow-requests/$requesterId/reject';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Remove a follower (make someone unfollow you)
  /// delete: /api/v1/account/followers/{followerId}/remove
  Future<Either<ApiError, void>> apiV1AccountFollowersFollowerIdRemoveDelete(
      {required String followerId}) async {
    final endpoint = '/api/v1/account/followers/$followerId/remove';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Follow a user
  /// post: /api/v1/users/{userId}/follow
  Future<Either<ApiError, void>> apiV1UsersUserIdFollowPost(
      {required String userId}) async {
    final endpoint = '/api/v1/users/$userId/follow';
    try {
      final _ = await _dio.post(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Unfollow a user
  /// delete: /api/v1/users/{userId}/follow
  Future<Either<ApiError, void>> apiV1UsersUserIdFollowDelete(
      {required String userId}) async {
    final endpoint = '/api/v1/users/$userId/follow';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get following status with a user
  /// get: /api/v1/users/{userId}/follow-status
  Future<Either<ApiError, FollowingStatusDto>> apiV1UsersUserIdFollowStatusGet(
      {required String userId}) async {
    final endpoint = '/api/v1/users/$userId/follow-status';
    try {
      final response = await _dio.get(endpoint);
      final result = FollowingStatusDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user's followers list
  /// get: /api/v1/users/{userId}/followers
  Future<Either<ApiError, List<UserDetailDto>>> apiV1UsersUserIdFollowersGet({
    required String userId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/users/$userId/followers';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user's followings list
  /// get: /api/v1/users/{userId}/followings
  Future<Either<ApiError, List<UserDetailDto>>> apiV1UsersUserIdFollowingsGet({
    required String userId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/users/$userId/followings';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user's followers count
  /// get: /api/v1/users/{userId}/followers/count
  Future<Either<ApiError, int>> apiV1UsersUserIdFollowersCountGet(
      {required String userId}) async {
    final endpoint = '/api/v1/users/$userId/followers/count';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user's followings count
  /// get: /api/v1/users/{userId}/followings/count
  Future<Either<ApiError, int>> apiV1UsersUserIdFollowingsCountGet(
      {required String userId}) async {
    final endpoint = '/api/v1/users/$userId/followings/count';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get user's personalized feed with following and discovery content
  /// get: /api/v1/feed
  Future<Either<ApiError, List<StepDetailDto>>> apiV1FeedGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/feed';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete a comment
  /// delete: /api/v1/comments/{commentId}
  Future<Either<ApiError, void>> apiV1CommentsCommentIdDelete(
      {required String commentId}) async {
    final endpoint = '/api/v1/comments/$commentId';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create a reply to a comment
  /// post: /api/v1/comments/{parentCommentId}/replies
  Future<Either<ApiError, ReplyDto>> apiV1CommentsParentCommentIdRepliesPost(
    CreateReplyCommentDto body, {
    required String parentCommentId,
  }) async {
    final endpoint = '/api/v1/comments/$parentCommentId/replies';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = ReplyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get replies for a comment
  /// get: /api/v1/comments/{commentId}/replies
  Future<Either<ApiError, List<ReplyDto>>> apiV1CommentsCommentIdRepliesGet({
    required String commentId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/comments/$commentId/replies';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => ReplyDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get comments for a step
  /// get: /api/v1/steps/{stepId}/comments
  Future<Either<ApiError, List<StepCommentDto>>> apiV1StepsStepIdCommentsGet({
    required String stepId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/steps/$stepId/comments';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map(
              (item) => StepCommentDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Create a comment on a step
  /// post: /api/v1/steps/{stepId}/comments
  Future<Either<ApiError, StepCommentDto>> apiV1StepsStepIdCommentsPost(
    CreateStepCommentDto body, {
    required String stepId,
  }) async {
    final endpoint = '/api/v1/steps/$stepId/comments';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = StepCommentDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get all feedback submissions for admin review
  /// get: /api/v1/admin/feedback
  Future<Either<ApiError, PageResponseOfAppFeedbackDto>> apiV1AdminFeedbackGet({
    int? page,
    int? pageSize,
    String? type,
    String? status,
  }) async {
    final endpoint = '/api/v1/admin/feedback';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;
      if (type != null) queryParams['type'] = type;
      if (status != null) queryParams['status'] = status;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PageResponseOfAppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Update feedback status and add admin response
  /// put: /api/v1/admin/feedback/{id}/status
  Future<Either<ApiError, AppFeedbackDto>> apiV1AdminFeedbackIdStatusPut(
    UpdateFeedbackStatusDto body, {
    required String id,
  }) async {
    final endpoint = '/api/v1/admin/feedback/$id/status';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Submit app feedback or bug report
  /// post: /api/v1/appfeedback
  Future<Either<ApiError, AppFeedbackDto>> apiV1AppfeedbackPost(
      CreateAppFeedbackDto body) async {
    final endpoint = '/api/v1/appfeedback';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Upload an image for feedback
  /// post: /api/v1/appfeedback/{feedbackId}/image
  Future<Either<ApiError, AppFeedbackDto>> apiV1AppfeedbackFeedbackIdImagePost(
    _i1.File file, {
    required String feedbackId,
    void Function(int sent, int total)? onProgress,
  }) async {
    final endpoint = '/api/v1/appfeedback/$feedbackId/image';
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        endpoint,
        data: file.openRead(),
        onSendProgress: onProgress,
        options: Options(headers: <String, dynamic>{
          'Content-Length': length.toString(),
          'Content-Type': mime,
        }),
      );
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: endpoint,
        requestBody: file,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get feedback by ID
  /// get: /api/v1/appfeedback/{id}
  Future<Either<ApiError, AppFeedbackDto>> apiV1AppfeedbackIdGet(
      {required String id}) async {
    final endpoint = '/api/v1/appfeedback/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Delete user's own feedback
  /// delete: /api/v1/appfeedback/{id}
  Future<Either<ApiError, void>> apiV1AppfeedbackIdDelete(
      {required String id}) async {
    final endpoint = '/api/v1/appfeedback/$id';
    try {
      final _ = await _dio.delete(endpoint);
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// Get current user's feedback submissions
  /// get: /api/v1/appfeedback/my-feedback
  Future<Either<ApiError, List<AppFeedbackDto>>>
      apiV1AppfeedbackMyFeedbackGet() async {
    final endpoint = '/api/v1/appfeedback/my-feedback';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map(
              (item) => AppFeedbackDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
