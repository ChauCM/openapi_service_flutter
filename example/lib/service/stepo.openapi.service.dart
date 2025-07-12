// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'stepo.openapi.dtos.dart';

class StepoService {
  StepoService(this._dio) {
    _dio.options.connectTimeout = Duration(seconds: 60);
    _dio.options.receiveTimeout = Duration(seconds: 60);
  }

  final Dio _dio;

  /// get: /api/v1/account
  Future<Either<ApiError, AccountDto>> apiV1AccountGet() async {
    try {
      final response = await _dio.get('/api/v1/account');
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// delete: /api/v1/account
  Future<Either<ApiError, void>> apiV1AccountDelete() async {
    try {
      final _ = await _dio.delete('/api/v1/account');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/account/avatar/upload-url
  Future<Either<ApiError, String>> apiV1AccountAvatarUploadUrlGet({
    String? fileName,
    String? contentType,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (fileName != null) queryParams['fileName'] = fileName;
      if (contentType != null) queryParams['contentType'] = contentType;

      final response = await _dio.get(
        '/api/v1/account/avatar/upload-url',
        queryParameters: queryParams,
      );
      final result = (response.data as String);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// put: /api/v1/account/avatar
  Future<Either<ApiError, AccountDto>> apiV1AccountAvatarPut(
      String body) async {
    try {
      final response = await _dio.put(
        '/api/v1/account/avatar',
        data: body,
      );
      final result = AccountDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/account/journeys
  Future<Either<ApiError, void>> apiV1AccountJourneysGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/account/journeys',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/account/steps
  Future<Either<ApiError, void>> apiV1AccountStepsGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/account/steps',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/account/feed
  Future<Either<ApiError, void>> apiV1AccountFeedGet({
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/account/feed',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/users/{id}
  Future<Either<ApiError, ProfileDto>> apiV1UsersIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/users/$id');
      final result = ProfileDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/users/{id}/journeys
  Future<Either<ApiError, void>> apiV1UsersIdJourneysGet({
    required String id,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/users/$id/journeys',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/users/{id}/steps
  Future<Either<ApiError, void>> apiV1UsersIdStepsGet({
    required String id,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['pageSize'] = pageSize;

      final _ = await _dio.get(
        '/api/v1/users/$id/steps',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Delete a step
  /// delete: /api/v1/steps/{stepId}
  Future<Either<ApiError, void>> apiV1StepsStepIdDelete(
      {required String stepId}) async {
    try {
      final _ = await _dio.delete('/api/v1/steps/$stepId');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Create image upload request for a step
  /// post: /api/v1/steps/{stepId}/media/upload-requests
  Future<Either<ApiError, ImagePresignedUrlDto>>
      apiV1StepsStepIdMediaUploadRequestsPost({
    required String stepId,
    required String fileName,
    required String contentType,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      queryParams['fileName'] = fileName;
      queryParams['contentType'] = contentType;

      final response = await _dio.post(
        '/api/v1/steps/$stepId/media/upload-requests',
        queryParameters: queryParams,
      );
      final result = ImagePresignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Update step image metadata
  /// put: /api/v1/steps/{stepId}/images
  Future<Either<ApiError, StepMediaDto>> apiV1StepsStepIdImagesPut(
    ImageMetadataDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/steps/$stepId/images',
        data: body.toJson(),
      );
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<ReportDto>));
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/notifications
  Future<Either<ApiError, NotificationDto>> apiV1NotificationsPost(
      SendNotificationDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/notifications',
        data: body.toJson(),
      );
      final result = NotificationDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/notifications/summary
  Future<Either<ApiError, int>> apiV1NotificationsSummaryGet() async {
    try {
      final response = await _dio.get('/api/v1/notifications/summary');
      final result = (response.data as int);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// put: /api/v1/notifications/{notificationId}/read
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdReadPut(
      {required String notificationId}) async {
    try {
      final _ = await _dio.put('/api/v1/notifications/$notificationId/read');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// put: /api/v1/notifications/read-status
  Future<Either<ApiError, void>> apiV1NotificationsReadStatusPut() async {
    try {
      final _ = await _dio.put('/api/v1/notifications/read-status');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// delete: /api/v1/notifications/{notificationId}
  Future<Either<ApiError, void>> apiV1NotificationsNotificationIdDelete(
      {required String notificationId}) async {
    try {
      final _ = await _dio.delete('/api/v1/notifications/$notificationId');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/notifications/bulk
  Future<Either<ApiError, List<NotificationDto>>> apiV1NotificationsBulkPost(
      BulkNotificationDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/notifications/bulk',
        data: body.toJson(),
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<NotificationDto>));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/media/uploads
  Future<Either<ApiError, ImagePresignedUrlDto>> apiV1MediaUploadsPost({
    String? fileName,
    String? contentType,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (fileName != null) queryParams['fileName'] = fileName;
      if (contentType != null) queryParams['contentType'] = contentType;

      final response = await _dio.post(
        '/api/v1/media/uploads',
        queryParameters: queryParams,
      );
      final result = ImagePresignedUrlDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/media/images
  Future<Either<ApiError, StepMediaDto>> apiV1MediaImagesPost(
    ImageMetadataDto body, {
    String? stepId,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (stepId != null) queryParams['stepId'] = stepId;

      final response = await _dio.post(
        '/api/v1/media/images',
        queryParameters: queryParams,
        data: body.toJson(),
      );
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/media/{mediaId}
  Future<Either<ApiError, StepMediaDto>> apiV1MediaMediaIdGet(
      {required String mediaId}) async {
    try {
      final response = await _dio.get('/api/v1/media/$mediaId');
      final result = StepMediaDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/video-jobs
  Future<Either<ApiError, void>> apiV1VideoJobsPost() async {
    try {
      final _ = await _dio.post('/api/v1/video-jobs');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Update journey details
  /// put: /api/v1/journeys/{id}
  Future<Either<ApiError, JourneyDto2Dto>> apiV1JourneysIdPut(
    UpdateJourneyDto body, {
    required String id,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/journeys/$id',
        data: body.toJson(),
      );
      final result = JourneyDto2Dto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Delete a journey
  /// delete: /api/v1/journeys/{id}
  Future<Either<ApiError, void>> apiV1JourneysIdDelete(
      {required String id}) async {
    try {
      final _ = await _dio.delete('/api/v1/journeys/$id');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Close a journey
  /// post: /api/v1/journeys/{id}/close
  Future<Either<ApiError, JourneyDto2Dto>> apiV1JourneysIdClosePost({
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
      final result = JourneyDto2Dto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Reopen a closed journey
  /// post: /api/v1/journeys/{id}/reopen
  Future<Either<ApiError, JourneyDto2Dto>> apiV1JourneysIdReopenPost(
      {required String id}) async {
    try {
      final response = await _dio.post('/api/v1/journeys/$id/reopen');
      final result = JourneyDto2Dto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<StepDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<StepDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Get calendar view of journey steps
  /// get: /api/v1/journeys/{journeyId}/calendar
  Future<Either<ApiError, List<JourneyDayCalendarDto>>>
      apiV1JourneysJourneyIdCalendarGet({required String journeyId}) async {
    try {
      final response = await _dio.get('/api/v1/journeys/$journeyId/calendar');
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<JourneyDayCalendarDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<StepDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<StepDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// delete: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, InteractionResultDto>> apiV1StepsStepIdHeartsDelete(
      {required String stepId}) async {
    try {
      final response = await _dio.delete('/api/v1/steps/$stepId/hearts');
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/steps/{stepId}/interactions
  Future<Either<ApiError, InteractionResultDto>>
      apiV1StepsStepIdInteractionsGet({required String stepId}) async {
    try {
      final response = await _dio.get('/api/v1/steps/$stepId/interactions');
      final result = InteractionResultDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<UserDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<UserDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Reject a follow request
  /// post: /api/v1/users/{userId}/reject-follow
  Future<Either<ApiError, FollowingResultDto>> apiV1UsersUserIdRejectFollowPost(
      {required String userId}) async {
    try {
      final response = await _dio.post('/api/v1/users/$userId/reject-follow');
      final result = FollowingResultDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<UserDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<UserDetailDto>));
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Delete a comment
  /// delete: /api/v1/comments/{commentId}
  Future<Either<ApiError, void>> apiV1CommentsCommentIdDelete(
      {required String commentId}) async {
    try {
      final _ = await _dio.delete('/api/v1/comments/$commentId');
      return const Right(null);
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<ReplyDto>));
    } catch (e) {
      return Left(_handleError(e));
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
      final mappedResult = result.map((item) => item).toList();
      return Right((mappedResult as List<StepCommentDto>));
    } catch (e) {
      return Left(_handleError(e));
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
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  ApiError _handleError(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      final statusCode = response?.statusCode;

      var message = 'An error occurred';
      if (response?.data case final data?) {
        try {
          if (data is Map<String, dynamic>) {
            message = data['message'];
          }
        } catch (_) {}
      }

      message = error.message ?? 'An error occurred';
      return ApiError(
        message: message,
        statusCode: statusCode,
        type: error.type.name,
      );
    }

    return ApiError(
      message: error.toString(),
      type: 'parse_error',
    );
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
