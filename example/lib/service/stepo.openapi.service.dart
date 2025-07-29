// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i1;

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'stepo.openapi.dtos.dart';
import 'package:mime/mime.dart';

class StepoServiceConfig {
  const StepoServiceConfig({
    this.baseUrl = '',
    this.connectTimeout = const Duration(seconds: 60),
    this.receiveTimeout = const Duration(seconds: 60),
    this.interceptors = const [],
    this.onError,
  });

  final String baseUrl;

  final Duration connectTimeout;

  final Duration receiveTimeout;

  final List<Interceptor> interceptors;

  final void Function(
      dynamic error,
      StackTrace stackTrace,
      String endpoint,
      Map<String, dynamic> headers,
      dynamic requestBody,
      dynamic responseBody)? onError;
}

class StepoService {
  StepoService(
    this._dio, {
    StepoServiceConfig? config,
  }) {
    final serviceConfig = config ?? StepoServiceConfig();
    _onError = serviceConfig.onError;
    _dio.options.baseUrl = serviceConfig.baseUrl;
    _dio.options.connectTimeout = serviceConfig.connectTimeout;
    _dio.options.receiveTimeout = serviceConfig.receiveTimeout;
    _dio.interceptors.addAll(serviceConfig.interceptors);
  }

  final Dio _dio;

  late final void Function(
      dynamic error,
      StackTrace stackTrace,
      String endpoint,
      Map<String, dynamic> headers,
      dynamic requestBody,
      dynamic responseBody)? _onError;

  /// get: /api/v1/account
  Future<Either<ApiError, AccountDto>> apiV1AccountGet() async {
    try {
      final response = await _dio.get('/api/v1/account');
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account',
      ));
    }
  }

  /// put: /api/v1/account
  Future<Either<ApiError, AccountDto>> apiV1AccountPut(EditUserDto body) async {
    try {
      final response = await _dio.put(
        '/api/v1/account',
        data: body.toJson(),
      );
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account',
      ));
    }
  }

  /// delete: /api/v1/account
  Future<Either<ApiError, void>> apiV1AccountDelete() async {
    try {
      final _ = await _dio.delete('/api/v1/account');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account',
      ));
    }
  }

  /// post: /api/v1/account/avatar
  Future<Either<ApiError, AccountDto>> apiV1AccountAvatarPost(
    _i1.File file, {
    void Function(int sent, int total)? onProgress,
  }) async {
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        '/api/v1/account/avatar',
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
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/avatar',
      ));
    }
  }

  /// get: /api/v1/account/journeys
  Future<Either<ApiError, List<JourneyInProfileDto>>> apiV1AccountJourneysGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/journeys',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyInProfileDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/journeys',
      ));
    }
  }

  /// get: /api/v1/account/steps
  Future<Either<ApiError, List<StepDetailDto>>> apiV1AccountStepsGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/steps',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/steps',
      ));
    }
  }

  /// post: /api/v1/auth/login
  Future<Either<ApiError, LoginResponseDto>> apiV1AuthLoginPost(
      LoginDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/auth/login',
        data: body.toJson(),
      );
      final result = LoginResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/auth/login',
      ));
    }
  }

  /// get: /api/v1/users/{id}
  Future<Either<ApiError, ProfileDto>> apiV1UsersIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/users/$id');
      final result = ProfileDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$id',
      ));
    }
  }

  /// get: /api/v1/users/{id}/journeys
  Future<Either<ApiError, List<JourneyInProfileDto>>> apiV1UsersIdJourneysGet({
    required String id,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/users/$id/journeys',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyInProfileDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$id/journeys',
      ));
    }
  }

  /// get: /api/v1/users/{id}/steps
  Future<Either<ApiError, List<StepDetailDto>>> apiV1UsersIdStepsGet({
    required String id,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/users/$id/steps',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$id/steps',
      ));
    }
  }

  /// Create a new step for a journey
  /// post: /api/v1/steps
  Future<Either<ApiError, StepDetailDto>> apiV1StepsPost(
      CreateStepDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps',
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps',
      ));
    }
  }

  /// Get step details by ID
  /// get: /api/v1/steps/{stepId}
  Future<Either<ApiError, StepDetailDto>> apiV1StepsStepIdGet(
      {required String stepId}) async {
    try {
      final response = await _dio.get('/api/v1/steps/$stepId');
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId',
      ));
    }
  }

  /// Update step details
  /// put: /api/v1/steps/{stepId}
  Future<Either<ApiError, StepDetailDto>> apiV1StepsStepIdPut(
    UpdateStepDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/steps/$stepId',
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId',
      ));
    }
  }

  /// Delete a step
  /// delete: /api/v1/steps/{stepId}
  Future<Either<ApiError, void>> apiV1StepsStepIdDelete(
      {required String stepId}) async {
    try {
      final _ = await _dio.delete('/api/v1/steps/$stepId');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId',
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
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        '/api/v1/steps/$stepId/images',
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
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/images',
      ));
    }
  }

  /// Get video upload URL for a step
  /// put: /api/v1/steps/{stepId}/video
  Future<Either<ApiError, VideoPreSignedUrlDto>> apiV1StepsStepIdVideoPut(
      {required String stepId}) async {
    try {
      final response = await _dio.put('/api/v1/steps/$stepId/video');
      final result = VideoPreSignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/video',
      ));
    }
  }

  /// Get reports for content moderation
  /// get: /api/v1/reports
  Future<Either<ApiError, List<ReportDto>>> apiV1ReportsGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/reports',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => ReportDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/reports',
      ));
    }
  }

  /// Create a report for inappropriate content
  /// post: /api/v1/reports
  Future<Either<ApiError, ReportDto>> apiV1ReportsPost(
      ReportCreatingDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/reports',
        data: body.toJson(),
      );
      final result = ReportDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/reports',
      ));
    }
  }

  /// Send test notification (Admin only)
  /// post: /api/v1/admin/notifications/test-send
  Future<Either<ApiError, TestNotificationResultDto>>
      apiV1AdminNotificationsTestSendPost(TestNotificationDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/admin/notifications/test-send',
        data: body.toJson(),
      );
      final result = TestNotificationResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/admin/notifications/test-send',
      ));
    }
  }

  /// Register device token for secure notifications
  /// post: /api/v1/notifications/devices/register
  Future<Either<ApiError, DeviceTokenDto>>
      apiV1NotificationsDevicesRegisterPost(RegisterDeviceDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/notifications/devices/register',
        data: body.toJson(),
      );
      final result = DeviceTokenDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/devices/register',
      ));
    }
  }

  /// Unregister device token
  /// delete: /api/v1/notifications/devices/{token}
  Future<Either<ApiError, void>> apiV1NotificationsDevicesTokenDelete(
      {required String token}) async {
    try {
      final _ = await _dio.delete('/api/v1/notifications/devices/$token');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/devices/$token',
      ));
    }
  }

  /// Get user's registered devices
  /// get: /api/v1/notifications/devices
  Future<Either<ApiError, List<DeviceTokenDto>>>
      apiV1NotificationsDevicesGet() async {
    try {
      final response = await _dio.get('/api/v1/notifications/devices');
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map(
              (item) => DeviceTokenDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/devices',
      ));
    }
  }

  /// Validate and cleanup invalid tokens
  /// post: /api/v1/notifications/devices/validate
  Future<Either<ApiError, TokenValidationResultDto>>
      apiV1NotificationsDevicesValidatePost() async {
    try {
      final response =
          await _dio.post('/api/v1/notifications/devices/validate');
      final result = TokenValidationResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/devices/validate',
      ));
    }
  }

  /// Get user notification preferences
  /// get: /api/v1/notifications/preferences
  Future<Either<ApiError, NotificationPreferencesDto>>
      apiV1NotificationsPreferencesGet() async {
    try {
      final response = await _dio.get('/api/v1/notifications/preferences');
      final result = NotificationPreferencesDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/preferences',
      ));
    }
  }

  /// Update user notification preferences
  /// put: /api/v1/notifications/preferences
  Future<Either<ApiError, NotificationPreferencesDto>>
      apiV1NotificationsPreferencesPut(UpdatePreferencesDto body) async {
    try {
      final response = await _dio.put(
        '/api/v1/notifications/preferences',
        data: body.toJson(),
      );
      final result = NotificationPreferencesDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/preferences',
      ));
    }
  }

  /// Get user notifications with pagination
  /// get: /api/v1/notifications
  Future<Either<ApiError, NotificationPagedDto>> apiV1NotificationsGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/notifications',
        queryParameters: queryParams,
      );
      final result = NotificationPagedDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications',
      ));
    }
  }

  /// Get unread notifications count
  /// get: /api/v1/notifications/summary
  Future<Either<ApiError, int>> apiV1NotificationsSummaryGet() async {
    try {
      final response = await _dio.get('/api/v1/notifications/summary');
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/summary',
      ));
    }
  }

  /// Mark notification as read
  /// put: /api/v1/notifications/{notificationId}/read
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdReadPut(
      {required String notificationId}) async {
    try {
      final _ = await _dio.put('/api/v1/notifications/$notificationId/read');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/$notificationId/read',
      ));
    }
  }

  /// Mark all notifications as read
  /// put: /api/v1/notifications/read-status
  Future<Either<ApiError, void>> apiV1NotificationsReadStatusPut() async {
    try {
      final _ = await _dio.put('/api/v1/notifications/read-status');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/read-status',
      ));
    }
  }

  /// Delete a notification
  /// delete: /api/v1/notifications/{notificationId}
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdDelete(
      {required String notificationId}) async {
    try {
      final _ = await _dio.delete('/api/v1/notifications/$notificationId');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/notifications/$notificationId',
      ));
    }
  }

  /// Remove a comment by moderation
  /// delete: /api/v1/moderation/comments/{commentId}
  Future<Either<ApiError, void>> apiV1ModerationCommentsCommentIdDelete(
    RemoveContentDto body, {
    required String commentId,
  }) async {
    try {
      final _ = await _dio.delete(
        '/api/v1/moderation/comments/$commentId',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/comments/$commentId',
      ));
    }
  }

  /// Remove a step by moderation
  /// delete: /api/v1/moderation/steps/{stepId}
  Future<Either<ApiError, void>> apiV1ModerationStepsStepIdDelete(
    RemoveContentDto body, {
    required String stepId,
  }) async {
    try {
      final _ = await _dio.delete(
        '/api/v1/moderation/steps/$stepId',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/steps/$stepId',
      ));
    }
  }

  /// Remove a journey by moderation
  /// delete: /api/v1/moderation/journeys/{journeyId}
  Future<Either<ApiError, void>> apiV1ModerationJourneysJourneyIdDelete(
    RemoveContentDto body, {
    required String journeyId,
  }) async {
    try {
      final _ = await _dio.delete(
        '/api/v1/moderation/journeys/$journeyId',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/journeys/$journeyId',
      ));
    }
  }

  /// Ban a user
  /// post: /api/v1/moderation/users/{userId}/ban
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdBanPost(
    BanUserDto body, {
    required String userId,
  }) async {
    try {
      final _ = await _dio.post(
        '/api/v1/moderation/users/$userId/ban',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/$userId/ban',
      ));
    }
  }

  /// Unban a user
  /// post: /api/v1/moderation/users/{userId}/unban
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdUnbanPost(
      {required String userId}) async {
    try {
      final _ = await _dio.post('/api/v1/moderation/users/$userId/unban');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/$userId/unban',
      ));
    }
  }

  /// Update user status
  /// put: /api/v1/moderation/users/{userId}/status
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdStatusPut(
    UpdateUserStatusDto body, {
    required String userId,
  }) async {
    try {
      final _ = await _dio.put(
        '/api/v1/moderation/users/$userId/status',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/$userId/status',
      ));
    }
  }

  /// Get user moderation details
  /// get: /api/v1/moderation/users/{userId}
  Future<Either<ApiError, void>> apiV1ModerationUsersUserIdGet(
      {required String userId}) async {
    try {
      final _ = await _dio.get('/api/v1/moderation/users/$userId');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/$userId',
      ));
    }
  }

  /// Get list of banned users
  /// get: /api/v1/moderation/users/banned
  Future<Either<ApiError, void>> apiV1ModerationUsersBannedGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/moderation/users/banned',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/banned',
      ));
    }
  }

  /// Get list of shadow banned users
  /// get: /api/v1/moderation/users/shadow-banned
  Future<Either<ApiError, void>> apiV1ModerationUsersShadowBannedGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/moderation/users/shadow-banned',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/moderation/users/shadow-banned',
      ));
    }
  }

  /// post: /api/v1/media/videos
  Future<Either<ApiError, VideoPreSignedUrlDto>> apiV1MediaVideosPost(
      {String? stepId}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (stepId != null) queryParams['stepId'] = stepId;

      final response = await _dio.post(
        '/api/v1/media/videos',
        queryParameters: queryParams,
      );
      final result = VideoPreSignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/media/videos',
      ));
    }
  }

  /// get: /api/v1/media/{mediaId}
  Future<Either<ApiError, StepMediaDto>> apiV1MediaMediaIdGet(
      {required String mediaId}) async {
    try {
      final response = await _dio.get('/api/v1/media/$mediaId');
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/media/$mediaId',
      ));
    }
  }

  /// post: /api/v1/webhooks/video-updates
  Future<Either<ApiError, void>> apiV1WebhooksVideoUpdatesPost(
      VideoStatusDto body) async {
    try {
      final _ = await _dio.post(
        '/api/v1/webhooks/video-updates',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/webhooks/video-updates',
      ));
    }
  }

  /// post: /api/v1/video-jobs
  Future<Either<ApiError, void>> apiV1VideoJobsPost() async {
    try {
      final _ = await _dio.post('/api/v1/video-jobs');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/video-jobs',
      ));
    }
  }

  /// Follow a journey for step notifications
  /// post: /api/v1/journeys/{journeyId}/follow
  Future<Either<ApiError, bool>> apiV1JourneysJourneyIdFollowPost(
      {required String journeyId}) async {
    try {
      final response = await _dio.post('/api/v1/journeys/$journeyId/follow');
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$journeyId/follow',
      ));
    }
  }

  /// Unfollow a journey
  /// delete: /api/v1/journeys/{journeyId}/follow
  Future<Either<ApiError, bool>> apiV1JourneysJourneyIdFollowDelete(
      {required String journeyId}) async {
    try {
      final response = await _dio.delete('/api/v1/journeys/$journeyId/follow');
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$journeyId/follow',
      ));
    }
  }

  /// Get journey details by ID
  /// get: /api/v1/journeys/{id}
  Future<Either<ApiError, JourneyInDetailDto>> apiV1JourneysIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/journeys/$id');
      final result = JourneyInDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$id',
      ));
    }
  }

  /// Update journey details
  /// put: /api/v1/journeys/{id}
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdPut(
    UpdateJourneyDto body, {
    required String id,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/journeys/$id',
        data: body.toJson(),
      );
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$id',
      ));
    }
  }

  /// Delete a journey
  /// delete: /api/v1/journeys/{id}
  Future<Either<ApiError, void>> apiV1JourneysIdDelete(
      {required String id}) async {
    try {
      final _ = await _dio.delete('/api/v1/journeys/$id');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$id',
      ));
    }
  }

  /// Create a new journey
  /// post: /api/v1/journeys
  Future<Either<ApiError, StepDetailDto>> apiV1JourneysPost(
      JourneyCreatingDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/journeys',
        data: body.toJson(),
      );
      final result = StepDetailDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys',
      ));
    }
  }

  /// Close a journey
  /// post: /api/v1/journeys/{id}/close
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdClosePost({
    required String id,
    String? finalStepId,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (finalStepId != null) queryParams['finalStepId'] = finalStepId;

      final response = await _dio.post(
        '/api/v1/journeys/$id/close',
        queryParameters: queryParams,
      );
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$id/close',
      ));
    }
  }

  /// Reopen a closed journey
  /// post: /api/v1/journeys/{id}/reopen
  Future<Either<ApiError, JourneyDto>> apiV1JourneysIdReopenPost(
      {required String id}) async {
    try {
      final response = await _dio.post('/api/v1/journeys/$id/reopen');
      final result = JourneyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$id/reopen',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/journeys/$journeyId/steps-detail',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$journeyId/steps-detail',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/journeys/$journeyId/steps',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$journeyId/steps',
      ));
    }
  }

  /// Get calendar view of journey steps
  /// get: /api/v1/journeys/{journeyId}/calendar
  Future<Either<ApiError, List<JourneyDayCalendarDto>>>
      apiV1JourneysJourneyIdCalendarGet({required String journeyId}) async {
    try {
      final response = await _dio.get('/api/v1/journeys/$journeyId/calendar');
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              JourneyDayCalendarDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/$journeyId/calendar',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/journeys/newer-steps/$stepId',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/newer-steps/$stepId',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/journeys/older-steps/$stepId',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/journeys/older-steps/$stepId',
      ));
    }
  }

  /// post: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdHeartsPost(
    CreateStepInteractionDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/hearts',
        data: body.toJson(),
      );
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/hearts',
      ));
    }
  }

  /// delete: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdHeartsDelete(
      {required String stepId}) async {
    try {
      final response = await _dio.delete('/api/v1/steps/$stepId/hearts');
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/hearts',
      ));
    }
  }

  /// post: /api/v1/steps/{stepId}/shares
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdSharesPost(
    CreateStepInteractionDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/shares',
        data: body.toJson(),
      );
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/shares',
      ));
    }
  }

  /// get: /api/v1/steps/{stepId}/interactions
  Future<Either<ApiError, InteractionResultDto>>
      apiV1StepsStepIdInteractionsGet({required String stepId}) async {
    try {
      final response = await _dio.get('/api/v1/steps/$stepId/interactions');
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/interactions',
      ));
    }
  }

  /// post: /api/v1/steps/comments/{commentId}/hearts
  Future<Either<ApiError, bool>> apiV1StepsCommentsCommentIdHeartsPost(
    CreateCommentInteractionDto body, {
    required String commentId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/comments/$commentId/hearts',
        data: body.toJson(),
      );
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/comments/$commentId/hearts',
      ));
    }
  }

  /// delete: /api/v1/steps/comments/{commentId}/hearts
  Future<Either<ApiError, bool>> apiV1StepsCommentsCommentIdHeartsDelete(
      {required String commentId}) async {
    try {
      final response =
          await _dio.delete('/api/v1/steps/comments/$commentId/hearts');
      final result = (response.data as bool);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/comments/$commentId/hearts',
      ));
    }
  }

  /// Get my followers list
  /// get: /api/v1/account/followers
  Future<Either<ApiError, List<UserDetailDto>>> apiV1AccountFollowersGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/followers',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/followers',
      ));
    }
  }

  /// Get my followings list
  /// get: /api/v1/account/followings
  Future<Either<ApiError, List<UserDetailDto>>> apiV1AccountFollowingsGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/followings',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/followings',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/follow-requests/incoming',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              FollowRequestDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/follow-requests/incoming',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/account/follow-requests/outgoing',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              FollowRequestDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/follow-requests/outgoing',
      ));
    }
  }

  /// Accept a follow request
  /// post: /api/v1/account/follow-requests/{requesterId}/accept
  Future<Either<ApiError, FollowRequestResultDto>>
      apiV1AccountFollowRequestsRequesterIdAcceptPost(
          {required String requesterId}) async {
    try {
      final response = await _dio
          .post('/api/v1/account/follow-requests/$requesterId/accept');
      final result = FollowRequestResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/follow-requests/$requesterId/accept',
      ));
    }
  }

  /// Reject a follow request
  /// delete: /api/v1/account/follow-requests/{requesterId}/reject
  Future<Either<ApiError, FollowRequestResultDto>>
      apiV1AccountFollowRequestsRequesterIdRejectDelete(
          {required String requesterId}) async {
    try {
      final response = await _dio
          .delete('/api/v1/account/follow-requests/$requesterId/reject');
      final result = FollowRequestResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/account/follow-requests/$requesterId/reject',
      ));
    }
  }

  /// Follow a user
  /// post: /api/v1/users/{userId}/follow
  Future<Either<ApiError, FollowingResultDto>> apiV1UsersUserIdFollowPost(
      {required String userId}) async {
    try {
      final response = await _dio.post('/api/v1/users/$userId/follow');
      final result = FollowingResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/follow',
      ));
    }
  }

  /// Unfollow a user
  /// delete: /api/v1/users/{userId}/follow
  Future<Either<ApiError, FollowingResultDto>> apiV1UsersUserIdFollowDelete(
      {required String userId}) async {
    try {
      final response = await _dio.delete('/api/v1/users/$userId/follow');
      final result = FollowingResultDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/follow',
      ));
    }
  }

  /// Get following status with a user
  /// get: /api/v1/users/{userId}/follow-status
  Future<Either<ApiError, FollowingStatusDto>> apiV1UsersUserIdFollowStatusGet(
      {required String userId}) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/follow-status');
      final result = FollowingStatusDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/follow-status',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/users/$userId/followers',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/followers',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/users/$userId/followings',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => UserDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/followings',
      ));
    }
  }

  /// Get user's followers count
  /// get: /api/v1/users/{userId}/followers/count
  Future<Either<ApiError, int>> apiV1UsersUserIdFollowersCountGet(
      {required String userId}) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/followers/count');
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/followers/count',
      ));
    }
  }

  /// Get user's followings count
  /// get: /api/v1/users/{userId}/followings/count
  Future<Either<ApiError, int>> apiV1UsersUserIdFollowingsCountGet(
      {required String userId}) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/followings/count');
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/users/$userId/followings/count',
      ));
    }
  }

  /// get: /api/v1/feed
  Future<Either<ApiError, List<StepDetailDto>>> apiV1FeedGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/feed',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/feed',
      ));
    }
  }

  /// get: /api/v1/feed/metrics
  Future<Either<ApiError, FeedMetricsDto>> apiV1FeedMetricsGet() async {
    try {
      final response = await _dio.get('/api/v1/feed/metrics');
      final result = FeedMetricsDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/feed/metrics',
      ));
    }
  }

  /// get: /api/v1/feed/hot
  Future<Either<ApiError, List<StepDetailDto>>> apiV1FeedHotGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/feed/hot',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/feed/hot',
      ));
    }
  }

  /// get: /api/v1/feed/following
  Future<Either<ApiError, List<StepDetailDto>>> apiV1FeedFollowingGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/feed/following',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => StepDetailDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/feed/following',
      ));
    }
  }

  /// Delete a comment
  /// delete: /api/v1/comments/{commentId}
  Future<Either<ApiError, void>> apiV1CommentsCommentIdDelete(
      {required String commentId}) async {
    try {
      final _ = await _dio.delete('/api/v1/comments/$commentId');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/comments/$commentId',
      ));
    }
  }

  /// Create a reply to a comment
  /// post: /api/v1/comments/{parentCommentId}/replies
  Future<Either<ApiError, ReplyDto>> apiV1CommentsParentCommentIdRepliesPost(
    CreateReplyCommentDto body, {
    required String parentCommentId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/comments/$parentCommentId/replies',
        data: body.toJson(),
      );
      final result = ReplyDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/comments/$parentCommentId/replies',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/comments/$commentId/replies',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => ReplyDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/comments/$commentId/replies',
      ));
    }
  }

  /// get: /api/v1/steps/{stepId}/comments
  Future<Either<ApiError, List<StepCommentDto>>> apiV1StepsStepIdCommentsGet({
    required String stepId,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/steps/$stepId/comments',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map(
              (item) => StepCommentDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/comments',
      ));
    }
  }

  /// post: /api/v1/steps/{stepId}/comments
  Future<Either<ApiError, StepCommentDto>> apiV1StepsStepIdCommentsPost(
    CreateStepCommentDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/comments',
        data: body.toJson(),
      );
      final result = StepCommentDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/steps/$stepId/comments',
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
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;
      if (type != null) queryParams['type'] = type;
      if (status != null) queryParams['status'] = status;

      final response = await _dio.get(
        '/api/v1/admin/feedback',
        queryParameters: queryParams,
      );
      final result = PageResponseOfAppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/admin/feedback',
      ));
    }
  }

  /// Update feedback status and add admin response
  /// put: /api/v1/admin/feedback/{id}/status
  Future<Either<ApiError, AppFeedbackDto>> apiV1AdminFeedbackIdStatusPut(
    UpdateFeedbackStatusDto body, {
    required String id,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/admin/feedback/$id/status',
        data: body.toJson(),
      );
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/admin/feedback/$id/status',
      ));
    }
  }

  /// Submit app feedback or bug report
  /// post: /api/v1/appfeedback
  Future<Either<ApiError, AppFeedbackDto>> apiV1AppfeedbackPost(
      CreateAppFeedbackDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/appfeedback',
        data: body.toJson(),
      );
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/appfeedback',
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
    try {
      final length = await file.length();
      final mime = lookupMimeType(file.path) ?? 'application/octet-stream';

      final response = await _dio.post(
        '/api/v1/appfeedback/$feedbackId/image',
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
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/appfeedback/$feedbackId/image',
      ));
    }
  }

  /// Get feedback by ID
  /// get: /api/v1/appfeedback/{id}
  Future<Either<ApiError, AppFeedbackDto>> apiV1AppfeedbackIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/appfeedback/$id');
      final result = AppFeedbackDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/appfeedback/$id',
      ));
    }
  }

  /// Delete user's own feedback
  /// delete: /api/v1/appfeedback/{id}
  Future<Either<ApiError, void>> apiV1AppfeedbackIdDelete(
      {required String id}) async {
    try {
      final _ = await _dio.delete('/api/v1/appfeedback/$id');
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/appfeedback/$id',
      ));
    }
  }

  /// Get current user's feedback submissions
  /// get: /api/v1/appfeedback/my-feedback
  Future<Either<ApiError, List<AppFeedbackDto>>>
      apiV1AppfeedbackMyFeedbackGet() async {
    try {
      final response = await _dio.get('/api/v1/appfeedback/my-feedback');
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map(
              (item) => AppFeedbackDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      return Left(_handleError(
        e,
        stackTrace,
        '/api/v1/appfeedback/my-feedback',
      ));
    }
  }

  ApiError _handleError(
    dynamic error,
    StackTrace stackTrace,
    String endpoint,
  ) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode ?? 0;

      final errorType = switch (statusCode) {
        401 => 'authentication_error',
        403 => 'authorization_error',
        404 => 'not_found_error',
        408 => 'timeout_error',
        422 => 'validation_error',
        429 => 'rate_limit_error',
        >= 500 => 'server_error',
        _ => error.type.name,
      };

      String message = error.message ?? 'An error occurred';
      if (response?.data case final data?) {
        message = _extractErrorMessage(data) ?? message;
      }

// Call onError callback if provided
      if (_onError != null) {
        try {
          final headers = response?.headers.map ?? <String, dynamic>{};
          final requestData = error.requestOptions.data;
          final responseData = response?.data;
          _onError(
              error, stackTrace, endpoint, headers, requestData, responseData);
        } catch (_) {
          // Ignore errors in callback to prevent recursive issues
        }
      }

      return ApiError(
        message: message,
        statusCode: statusCode,
        type: errorType,
      );
    }

// Call onError callback for unknown errors
    if (_onError != null) {
      try {
        _onError(error, stackTrace, endpoint, <String, dynamic>{}, null, null);
      } catch (_) {
        // Ignore errors in callback to prevent recursive issues
      }
    }

    return ApiError(
      message: error.toString(),
      type: 'unknown_error',
    );
  }

  String? _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      // Try common error message fields
      return data['message'] ??
          data['error'] ??
          data['detail'] ??
          data['error_description'];
    }

    if (data is String) {
      return data;
    }

    return null;
  }

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
