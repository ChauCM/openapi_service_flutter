// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'stepo.openapi.dtos.dart';

class StepoService {
  StepoService(this._dio) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 10);
  }

  static const String baseUrl = 'https://api.example.com';

  final Dio _dio;

  /// get: /api/v1/account
  Future<Either<ApiError, ApiV1AccountGetResponseDto>> apiV1AccountGet() async {
    try {
      final response = await _dio.get('/api/v1/account');
      final result = ApiV1AccountGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// put: /api/v1/account
  Future<Either<ApiError, ApiV1AccountPutResponseDto>> apiV1AccountPut(
      ApiV1AccountPutRequestDto body) async {
    try {
      final response = await _dio.put(
        '/api/v1/account',
        data: body.toJson(),
      );
      final result = ApiV1AccountPutResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1AccountAvatarPutResponseDto>>
      apiV1AccountAvatarPut(String body) async {
    try {
      final response = await _dio.put(
        '/api/v1/account/avatar',
        data: body,
      );
      final result = ApiV1AccountAvatarPutResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1AuthLoginPostResponseDto>> apiV1AuthLoginPost(
      ApiV1AuthLoginPostRequestDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/auth/login',
        data: body.toJson(),
      );
      final result = ApiV1AuthLoginPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/users/{id}
  Future<Either<ApiError, ApiV1UsersIdGetResponseDto>> apiV1UsersIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/users/$id');
      final result = ApiV1UsersIdGetResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1StepsPostResponseDto>> apiV1StepsPost(
      ApiV1StepsPostRequestDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps',
        data: body.toJson(),
      );
      final result = ApiV1StepsPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Get step details by ID
  /// get: /api/v1/steps/{stepId}
  Future<Either<ApiError, ApiV1StepsStepIdGetResponseDto>> apiV1StepsStepIdGet(
      {required String stepId}) async {
    try {
      final response = await _dio.get('/api/v1/steps/$stepId');
      final result = ApiV1StepsStepIdGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Update step details
  /// put: /api/v1/steps/{stepId}
  Future<Either<ApiError, ApiV1StepsStepIdPutResponseDto>> apiV1StepsStepIdPut(
    ApiV1StepsStepIdPutRequestDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/steps/$stepId',
        data: body.toJson(),
      );
      final result = ApiV1StepsStepIdPutResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1StepsStepIdMediaUploadRequestsPostResponseDto>>
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
      final result =
          ApiV1StepsStepIdMediaUploadRequestsPostResponseDto.fromJson(
              response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Update step image metadata
  /// put: /api/v1/steps/{stepId}/images
  Future<Either<ApiError, ApiV1StepsStepIdImagesPutResponseDto>>
      apiV1StepsStepIdImagesPut(
    ApiV1StepsStepIdImagesPutRequestDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/steps/$stepId/images',
        data: body.toJson(),
      );
      final result =
          ApiV1StepsStepIdImagesPutResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Get video upload URL for a step
  /// put: /api/v1/steps/{stepId}/video
  Future<Either<ApiError, ApiV1StepsStepIdVideoPutResponseDto>>
      apiV1StepsStepIdVideoPut({required String stepId}) async {
    try {
      final response = await _dio.put('/api/v1/steps/$stepId/video');
      final result =
          ApiV1StepsStepIdVideoPutResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1ReportsPostResponseDto>> apiV1ReportsPost(
      ApiV1ReportsPostRequestDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/reports',
        data: body.toJson(),
      );
      final result = ApiV1ReportsPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/notifications
  Future<Either<ApiError, ApiV1NotificationsGetResponseDto>>
      apiV1NotificationsGet({
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
      final result = ApiV1NotificationsGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/notifications
  Future<Either<ApiError, ApiV1NotificationsPostResponseDto>>
      apiV1NotificationsPost(ApiV1NotificationsPostRequestDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/notifications',
        data: body.toJson(),
      );
      final result = ApiV1NotificationsPostResponseDto.fromJson(response.data);
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
      ApiV1NotificationsBulkPostRequestDto body) async {
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
  Future<Either<ApiError, ApiV1MediaUploadsPostResponseDto>>
      apiV1MediaUploadsPost({
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
      final result = ApiV1MediaUploadsPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/media/images
  Future<Either<ApiError, ApiV1MediaImagesPostResponseDto>>
      apiV1MediaImagesPost(
    ApiV1MediaImagesPostRequestDto body, {
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
      final result = ApiV1MediaImagesPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/media/videos
  Future<Either<ApiError, ApiV1MediaVideosPostResponseDto>>
      apiV1MediaVideosPost({String? stepId}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (stepId != null) queryParams['stepId'] = stepId;

      final response = await _dio.post(
        '/api/v1/media/videos',
        queryParameters: queryParams,
      );
      final result = ApiV1MediaVideosPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/media/{mediaId}
  Future<Either<ApiError, ApiV1MediaMediaIdGetResponseDto>>
      apiV1MediaMediaIdGet({required String mediaId}) async {
    try {
      final response = await _dio.get('/api/v1/media/$mediaId');
      final result = ApiV1MediaMediaIdGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/webhooks/video-updates
  Future<Either<ApiError, void>> apiV1WebhooksVideoUpdatesPost(
      ApiV1WebhooksVideoUpdatesPostRequestDto body) async {
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
  Future<Either<ApiError, ApiV1JourneysIdGetResponseDto>> apiV1JourneysIdGet(
      {required String id}) async {
    try {
      final response = await _dio.get('/api/v1/journeys/$id');
      final result = ApiV1JourneysIdGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Update journey details
  /// put: /api/v1/journeys/{id}
  Future<Either<ApiError, ApiV1JourneysIdPutResponseDto>> apiV1JourneysIdPut(
    ApiV1JourneysIdPutRequestDto body, {
    required String id,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/journeys/$id',
        data: body.toJson(),
      );
      final result = ApiV1JourneysIdPutResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1JourneysPostResponseDto>> apiV1JourneysPost(
      ApiV1JourneysPostRequestDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/journeys',
        data: body.toJson(),
      );
      final result = ApiV1JourneysPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Close a journey
  /// post: /api/v1/journeys/{id}/close
  Future<Either<ApiError, ApiV1JourneysIdClosePostResponseDto>>
      apiV1JourneysIdClosePost({
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
      final result =
          ApiV1JourneysIdClosePostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Reopen a closed journey
  /// post: /api/v1/journeys/{id}/reopen
  Future<Either<ApiError, ApiV1JourneysIdReopenPostResponseDto>>
      apiV1JourneysIdReopenPost({required String id}) async {
    try {
      final response = await _dio.post('/api/v1/journeys/$id/reopen');
      final result =
          ApiV1JourneysIdReopenPostResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1StepsStepIdHeartsPostResponseDto>>
      apiV1StepsStepIdHeartsPost(
    ApiV1StepsStepIdHeartsPostRequestDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/hearts',
        data: body.toJson(),
      );
      final result =
          ApiV1StepsStepIdHeartsPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// delete: /api/v1/steps/{stepId}/hearts
  Future<Either<ApiError, ApiV1StepsStepIdHeartsDeleteResponseDto>>
      apiV1StepsStepIdHeartsDelete({required String stepId}) async {
    try {
      final response = await _dio.delete('/api/v1/steps/$stepId/hearts');
      final result =
          ApiV1StepsStepIdHeartsDeleteResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/steps/{stepId}/shares
  Future<Either<ApiError, ApiV1StepsStepIdSharesPostResponseDto>>
      apiV1StepsStepIdSharesPost(
    ApiV1StepsStepIdSharesPostRequestDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/shares',
        data: body.toJson(),
      );
      final result =
          ApiV1StepsStepIdSharesPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// get: /api/v1/steps/{stepId}/interactions
  Future<Either<ApiError, ApiV1StepsStepIdInteractionsGetResponseDto>>
      apiV1StepsStepIdInteractionsGet({required String stepId}) async {
    try {
      final response = await _dio.get('/api/v1/steps/$stepId/interactions');
      final result =
          ApiV1StepsStepIdInteractionsGetResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// post: /api/v1/steps/comments/{commentId}/hearts
  Future<Either<ApiError, bool>> apiV1StepsCommentsCommentIdHeartsPost(
    ApiV1StepsCommentsCommentIdHeartsPostRequestDto body, {
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
  Future<Either<ApiError, ApiV1UsersUserIdFollowPostResponseDto>>
      apiV1UsersUserIdFollowPost({required String userId}) async {
    try {
      final response = await _dio.post('/api/v1/users/$userId/follow');
      final result =
          ApiV1UsersUserIdFollowPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Unfollow a user
  /// delete: /api/v1/users/{userId}/follow
  Future<Either<ApiError, ApiV1UsersUserIdFollowDeleteResponseDto>>
      apiV1UsersUserIdFollowDelete({required String userId}) async {
    try {
      final response = await _dio.delete('/api/v1/users/$userId/follow');
      final result =
          ApiV1UsersUserIdFollowDeleteResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Reject a follow request
  /// post: /api/v1/users/{userId}/reject-follow
  Future<Either<ApiError, ApiV1UsersUserIdRejectFollowPostResponseDto>>
      apiV1UsersUserIdRejectFollowPost({required String userId}) async {
    try {
      final response = await _dio.post('/api/v1/users/$userId/reject-follow');
      final result =
          ApiV1UsersUserIdRejectFollowPostResponseDto.fromJson(response.data);
      return Right(result);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  /// Get following status with a user
  /// get: /api/v1/users/{userId}/follow-status
  Future<Either<ApiError, ApiV1UsersUserIdFollowStatusGetResponseDto>>
      apiV1UsersUserIdFollowStatusGet({required String userId}) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/follow-status');
      final result =
          ApiV1UsersUserIdFollowStatusGetResponseDto.fromJson(response.data);
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
  Future<Either<ApiError, ApiV1CommentsParentCommentIdRepliesPostResponseDto>>
      apiV1CommentsParentCommentIdRepliesPost(
    ApiV1CommentsParentCommentIdRepliesPostRequestDto body, {
    required String parentCommentId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/comments/$parentCommentId/replies',
        data: body.toJson(),
      );
      final result =
          ApiV1CommentsParentCommentIdRepliesPostResponseDto.fromJson(
              response.data);
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
  Future<Either<ApiError, ApiV1StepsStepIdCommentsPostResponseDto>>
      apiV1StepsStepIdCommentsPost(
    ApiV1StepsStepIdCommentsPostRequestDto body, {
    required String stepId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/steps/$stepId/comments',
        data: body.toJson(),
      );
      final result =
          ApiV1StepsStepIdCommentsPostResponseDto.fromJson(response.data);
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
