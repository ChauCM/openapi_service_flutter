// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'ebridge.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';

class EbridgeService {
  EbridgeService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// get: /api/v1/Account/image
  Future<Either<ApiError, AccountImageApiDto>> apiV1AccountImageGet(
      {int? accountId}) async {
    final queryParams = <String, dynamic>{};
    try {
      if (accountId != null) queryParams['accountId'] = accountId;

      final response = await _dio.get(
        '/api/v1/Account/image',
        queryParameters: queryParams,
      );
      final result = AccountImageApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Account/image',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/AccountDeviceSession
  Future<Either<ApiError, PagedResultOfAccountDeviceSessionApiDto>>
      apiV1AccountDeviceSessionGet({
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/AccountDeviceSession',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfAccountDeviceSessionApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/AccountDeviceSession',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/AccountDeviceSession/{accountDeviceSessionId}
  Future<Either<ApiError, AccountDeviceSessionApiDto>>
      apiV1AccountDeviceSessionAccountDeviceSessionIdPut(
    AccountDeviceSessionApiPutDto body, {
    required String accountDeviceSessionId,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/AccountDeviceSession/$accountDeviceSessionId',
        data: body.toJson(),
      );
      final result = AccountDeviceSessionApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/AccountDeviceSession/{accountDeviceSessionId}',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Branch
  Future<Either<ApiError, PagedResultOfBranchApiDto>> apiV1BranchGet({
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Branch',
        queryParameters: queryParams,
      );
      final result = PagedResultOfBranchApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Branch',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/Cache/clear
  Future<Either<ApiError, void>> apiV1CacheClearPost() async {
    try {
      final _ = await _dio.post('/api/v1/Cache/clear');
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/Cache/clear',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Calendar
  Future<Either<ApiError, PagedResultOfCalendarItemApiDto>> apiV1CalendarGet({
    int? branchId,
    String? keyword,
    DateTime? dateFrom,
    DateTime? dateTo,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (keyword != null) queryParams['Keyword'] = keyword;
      if (dateFrom != null) queryParams['DateFrom'] = dateFrom;
      if (dateTo != null) queryParams['DateTo'] = dateTo;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Calendar',
        queryParameters: queryParams,
      );
      final result = PagedResultOfCalendarItemApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Calendar',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/ClassAttendance/TriggerCheck
  Future<Either<ApiError, void>> apiV1ClassAttendanceTriggerCheckGet() async {
    try {
      final _ = await _dio.get('/api/v1/ClassAttendance/TriggerCheck');
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/ClassAttendance/TriggerCheck',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Class
  Future<Either<ApiError, PagedResultOfClassApiDto>> apiV1ClassGet({
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Class',
        queryParameters: queryParams,
      );
      final result = PagedResultOfClassApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Class',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Content
  Future<Either<ApiError, PagedResultOfContentApiDto>> apiV1ContentGet({
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    String? contentType,
    String? contentSearch,
    int? learningDomainId,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (contentType != null) queryParams['ContentType'] = contentType;
      if (contentSearch != null) queryParams['ContentSearch'] = contentSearch;
      if (learningDomainId != null)
        queryParams['LearningDomainId'] = learningDomainId;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Content',
        queryParameters: queryParams,
      );
      final result = PagedResultOfContentApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Content',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Content/{contentId}
  Future<Either<ApiError, ContentApiDto>> apiV1ContentContentIdGet(
      {required int contentId}) async {
    try {
      final response = await _dio.get('/api/v1/Content/$contentId');
      final result = ContentApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Content/{contentId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/Content/seed-auto
  Future<Either<ApiError, void>> apiV1ContentSeedAutoPost({
    int? yearsBack,
    int? perDay,
    int? branchId,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (yearsBack != null) queryParams['yearsBack'] = yearsBack;
      if (perDay != null) queryParams['perDay'] = perDay;
      if (branchId != null) queryParams['branchId'] = branchId;

      final _ = await _dio.post(
        '/api/v1/Content/seed-auto',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/Content/seed-auto',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// delete: /api/v1/Content/cleanup-auto
  Future<Either<ApiError, void>> apiV1ContentCleanupAutoDelete(
      {int? branchId}) async {
    final queryParams = <String, dynamic>{};
    try {
      if (branchId != null) queryParams['branchId'] = branchId;

      final _ = await _dio.delete(
        '/api/v1/Content/cleanup-auto',
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
        endpoint: '/api/v1/Content/cleanup-auto',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Conversation
  Future<Either<ApiError, PagedResultOfConversationApiDto>>
      apiV1ConversationGet({
    bool? isClosed,
    String? topic,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (isClosed != null) queryParams['IsClosed'] = isClosed;
      if (topic != null) queryParams['Topic'] = topic;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Conversation',
        queryParameters: queryParams,
      );
      final result = PagedResultOfConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Conversation',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/Conversation
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationPost(
      ConversationMutationDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/Conversation',
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/Conversation',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Conversation/{id}
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdGet(
      {required int id}) async {
    try {
      final response = await _dio.get('/api/v1/Conversation/$id');
      final result = ConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Conversation/{id}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/Conversation/{id}
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdPut(
    ConversationMutationDto body, {
    required int id,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v1/Conversation/$id',
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/Conversation/{id}',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// patch: /api/v1/Conversation/{id}/close
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdClosePatch(
    ConversationCloseDto body, {
    required int id,
  }) async {
    try {
      final response = await _dio.patch(
        '/api/v1/Conversation/$id/close',
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PATCH',
        endpoint: '/api/v1/Conversation/{id}/close',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/ConversationMessage/by-conversation/{conversationId}
  Future<Either<ApiError, PagedResultOfConversationMessageApiDto>>
      apiV1ConversationMessageByConversationConversationIdGet({
    required int conversationId,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/ConversationMessage/by-conversation/$conversationId',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfConversationMessageApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint:
            '/api/v1/ConversationMessage/by-conversation/{conversationId}',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/ConversationMessage
  Future<Either<ApiError, ConversationMessageApiDto>>
      apiV1ConversationMessagePost(ConversationMessageMutationDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/ConversationMessage',
        data: body.toJson(),
      );
      final result = ConversationMessageApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/ConversationMessage',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// patch: /api/v1/ConversationMessage/{id}/read
  Future<Either<ApiError, ConversationMessageApiDto>>
      apiV1ConversationMessageIdReadPatch(
    ConversationMessageReadStatusDto body, {
    required int id,
  }) async {
    try {
      final response = await _dio.patch(
        '/api/v1/ConversationMessage/$id/read',
        data: body.toJson(),
      );
      final result = ConversationMessageApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PATCH',
        endpoint: '/api/v1/ConversationMessage/{id}/read',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Holiday/sync
  Future<Either<ApiError, void>> apiV1HolidaySyncGet() async {
    try {
      final _ = await _dio.get('/api/v1/Holiday/sync');
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Holiday/sync',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/InfantCareActivity
  Future<Either<ApiError, PagedResultOfInfantCareActivityApiDto>>
      apiV1InfantCareActivityGet({
    DateTime? startDate,
    DateTime? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/InfantCareActivity',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfInfantCareActivityApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/InfantCareActivity',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/InfantCareActivity
  Future<Either<ApiError, InfantCareActivityApiDto>> apiV1InfantCareActivityPut(
      InfantCareActivitySaveDto body) async {
    try {
      final response = await _dio.put(
        '/api/v1/InfantCareActivity',
        data: body.toJson(),
      );
      final result = InfantCareActivityApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/InfantCareActivity',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/InfantCareActivity
  Future<Either<ApiError, InfantCareActivityApiDto>>
      apiV1InfantCareActivityPost(InfantCareActivitySaveDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/InfantCareActivity',
        data: body.toJson(),
      );
      final result = InfantCareActivityApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/InfantCareActivity',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/InfantCareActivityLog
  Future<Either<ApiError, PagedResultOfInfantCareActivityLogApiDto>>
      apiV1InfantCareActivityLogGet({
    DateTime? startDate,
    DateTime? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/InfantCareActivityLog',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfInfantCareActivityLogApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/InfantCareActivityLog',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/InfantCareActivityLog
  Future<Either<ApiError, InfantCareActivityLogApiDto>>
      apiV1InfantCareActivityLogPut(InfantCareActivityLogUpdateDto body) async {
    try {
      final response = await _dio.put(
        '/api/v1/InfantCareActivityLog',
        data: body.toJson(),
      );
      final result = InfantCareActivityLogApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/InfantCareActivityLog',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/InfantCareActivityLog
  Future<Either<ApiError, InfantCareActivityLogApiDto>>
      apiV1InfantCareActivityLogPost(
          InfantCareActivityLogCreateDto body) async {
    try {
      final response = await _dio.post(
        '/api/v1/InfantCareActivityLog',
        data: body.toJson(),
      );
      final result = InfantCareActivityLogApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/InfantCareActivityLog',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// post: /api/v1/Notification/mark-all-as-read
  Future<Either<ApiError, int>> apiV1NotificationMarkAllAsReadPost() async {
    try {
      final response = await _dio.post('/api/v1/Notification/mark-all-as-read');
      final result = (response.data as int);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'POST',
        endpoint: '/api/v1/Notification/mark-all-as-read',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Notification/summary
  Future<Either<ApiError, NotificationSummaryDto>>
      apiV1NotificationSummaryGet() async {
    try {
      final response = await _dio.get('/api/v1/Notification/summary');
      final result = NotificationSummaryDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Notification/summary',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/Notification/toggle-read/{notificationRecipientId}
  Future<Either<ApiError, NotificationApiDto>>
      apiV1NotificationToggleReadNotificationRecipientIdPut(
          {required int notificationRecipientId}) async {
    try {
      final response = await _dio
          .put('/api/v1/Notification/toggle-read/$notificationRecipientId');
      final result = NotificationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/Notification/toggle-read/{notificationRecipientId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Notification/{notificationRecipientId}
  Future<Either<ApiError, NotificationApiDto>>
      apiV1NotificationNotificationRecipientIdGet(
          {required int notificationRecipientId}) async {
    try {
      final response =
          await _dio.get('/api/v1/Notification/$notificationRecipientId');
      final result = NotificationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Notification/{notificationRecipientId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Notification
  Future<Either<ApiError, PagedResultOfNotificationApiDto>>
      apiV1NotificationGet({
    bool? isRead,
    String? readOnStartDate,
    String? readOnEndDate,
    String? createdOnStartDate,
    String? createdOnEndDate,
    int? notificationRecipientId,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (isRead != null) queryParams['IsRead'] = isRead;
      if (readOnStartDate != null)
        queryParams['ReadOnStartDate'] = readOnStartDate;
      if (readOnEndDate != null) queryParams['ReadOnEndDate'] = readOnEndDate;
      if (createdOnStartDate != null)
        queryParams['CreatedOnStartDate'] = createdOnStartDate;
      if (createdOnEndDate != null)
        queryParams['CreatedOnEndDate'] = createdOnEndDate;
      if (notificationRecipientId != null)
        queryParams['NotificationRecipientId'] = notificationRecipientId;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Notification',
        queryParameters: queryParams,
      );
      final result = PagedResultOfNotificationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Notification',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/StudentAttendance
  Future<Either<ApiError, PagedResultOfStudentAttendanceApiDto>>
      apiV1StudentAttendanceGet({
    String? startDate,
    String? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/StudentAttendance',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentAttendanceApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/StudentAttendance',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/StudentAuthorisedPerson
  Future<Either<ApiError, PagedResultOfStudentAuthorisedPersonApiDto>>
      apiV1StudentAuthorisedPersonGet({
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/StudentAuthorisedPerson',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentAuthorisedPersonApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/StudentAuthorisedPerson',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// patch: /api/v1/StudentAuthorisedPerson/{id}/deactivate
  Future<Either<ApiError, void>> apiV1StudentAuthorisedPersonIdDeactivatePatch(
    AuthorisedPersonReasonApiDtoRequestDto body, {
    required int id,
  }) async {
    try {
      final _ = await _dio.patch(
        '/api/v1/StudentAuthorisedPerson/$id/deactivate',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PATCH',
        endpoint: '/api/v1/StudentAuthorisedPerson/{id}/deactivate',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// put: /api/v1/StudentAuthorisedPerson/{id}/activate
  Future<Either<ApiError, void>> apiV1StudentAuthorisedPersonIdActivatePut(
    AuthorisedPersonReasonApiDtoRequestDto body, {
    required int id,
  }) async {
    try {
      final _ = await _dio.put(
        '/api/v1/StudentAuthorisedPerson/$id/activate',
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: '/api/v1/StudentAuthorisedPerson/{id}/activate',
        requestBody: body,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/StudentCheckInOut
  Future<Either<ApiError, PagedResultOfStudentCheckInOutApiDto>>
      apiV1StudentCheckInOutGet({
    String? startDate,
    String? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/StudentCheckInOut',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentCheckInOutApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/StudentCheckInOut',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/StudentClassAttendance
  Future<Either<ApiError, List<ClassAttendanceDTODto>>>
      apiV1StudentClassAttendanceGet({
    String? startDate,
    String? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;

      final response = await _dio.get(
        '/api/v1/StudentClassAttendance',
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              ClassAttendanceDTODto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/StudentClassAttendance',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Student
  Future<Either<ApiError, PagedResultOfStudentApiDto>> apiV1StudentGet({
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Student',
        queryParameters: queryParams,
      );
      final result = PagedResultOfStudentApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Student',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Student/{studentId}
  Future<Either<ApiError, StudentApiDto>> apiV1StudentStudentIdGet(
      {required int studentId}) async {
    try {
      final response = await _dio.get('/api/v1/Student/$studentId');
      final result = StudentApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Student/{studentId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/StudentTemperature
  Future<Either<ApiError, PagedResultOfStudentTemperatureApiDto>>
      apiV1StudentTemperatureGet({
    String? startDate,
    String? endDate,
    String? parentEmail,
    int? teacherId,
    int? branchId,
    int? classId,
    int? studentId,
    int? accountId,
    int? levelId,
    String? studentNameSearch,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['StartDate'] = startDate;
      if (endDate != null) queryParams['EndDate'] = endDate;
      if (parentEmail != null) queryParams['ParentEmail'] = parentEmail;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (accountId != null) queryParams['AccountId'] = accountId;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (studentNameSearch != null)
        queryParams['StudentNameSearch'] = studentNameSearch;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/StudentTemperature',
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentTemperatureApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/StudentTemperature',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Teacher
  Future<Either<ApiError, PagedResultOfTeacherApiDto>> apiV1TeacherGet({
    int? teacherId,
    String? teacherNameSearch,
    int? classId,
    int? branchId,
    int? employeeId,
    String? employeeEmail,
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (teacherNameSearch != null)
        queryParams['TeacherNameSearch'] = teacherNameSearch;
      if (classId != null) queryParams['ClassId'] = classId;
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (employeeId != null) queryParams['EmployeeId'] = employeeId;
      if (employeeEmail != null) queryParams['EmployeeEmail'] = employeeEmail;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/Teacher',
        queryParameters: queryParams,
      );
      final result = PagedResultOfTeacherApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Teacher',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Teacher/{teacherId}
  Future<Either<ApiError, TeacherApiDto2Dto>> apiV1TeacherTeacherIdGet(
      {required int teacherId}) async {
    try {
      final response = await _dio.get('/api/v1/Teacher/$teacherId');
      final result = TeacherApiDto2Dto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Teacher/{teacherId}',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Teacher/GenerateDemoTeachers
  Future<Either<ApiError, void>> apiV1TeacherGenerateDemoTeachersGet() async {
    try {
      final _ = await _dio.get('/api/v1/Teacher/GenerateDemoTeachers');
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/Teacher/GenerateDemoTeachers',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/UserBranchRole
  Future<Either<ApiError, PagedResultOfUserBranchRoleViewDto>>
      apiV1UserBranchRoleGet({
    int? page,
    int? pageSize,
  }) async {
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        '/api/v1/UserBranchRole',
        queryParameters: queryParams,
      );
      final result = PagedResultOfUserBranchRoleViewDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/UserBranchRole',
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/User/me
  Future<Either<ApiError, CurrentUserInfoDto>> apiV1UserMeGet() async {
    try {
      final response = await _dio.get('/api/v1/User/me');
      final result = CurrentUserInfoDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/User/me',
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/User/initializeUsers
  Future<Either<ApiError, void>> apiV1UserInitializeUsersGet() async {
    try {
      final _ = await _dio.get('/api/v1/User/initializeUsers');
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: '/api/v1/User/initializeUsers',
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
