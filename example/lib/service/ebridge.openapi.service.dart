// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'ebridge.openapi.dtos.dart';
import 'package:openapi_service_runtime/openapi_service_runtime.dart';

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
    final endpoint = '/api/v1/Account/image';
    final queryParams = <String, dynamic>{};
    try {
      if (accountId != null) queryParams['accountId'] = accountId;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = AccountImageApiDto.fromJson(response.data);
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

  /// get: /api/v1/AccountDeviceSession
  Future<Either<ApiError, PagedResultOfAccountDeviceSessionApiDto>>
      apiV1AccountDeviceSessionGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/AccountDeviceSession';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfAccountDeviceSessionApiDto.fromJson(response.data);
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

  /// put: /api/v1/AccountDeviceSession/{accountDeviceSessionId}
  Future<Either<ApiError, AccountDeviceSessionApiDto>>
      apiV1AccountDeviceSessionAccountDeviceSessionIdPut(
    AccountDeviceSessionApiPutDto body, {
    required String accountDeviceSessionId,
  }) async {
    final endpoint = '/api/v1/AccountDeviceSession/$accountDeviceSessionId';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = AccountDeviceSessionApiDto.fromJson(response.data);
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

  /// get: /api/v1/Branch
  Future<Either<ApiError, PagedResultOfBranchApiDto>> apiV1BranchGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/Branch';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfBranchApiDto.fromJson(response.data);
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

  /// post: /api/v1/Cache/clear
  Future<Either<ApiError, void>> apiV1CacheClearPost() async {
    final endpoint = '/api/v1/Cache/clear';
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

  /// get: /api/v1/Calendar
  Future<Either<ApiError, PagedResultOfCalendarItemApiDto>> apiV1CalendarGet({
    int? branchId,
    String? keyword,
    DateTime? dateFrom,
    DateTime? dateTo,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/Calendar';
    final queryParams = <String, dynamic>{};
    try {
      if (branchId != null) queryParams['BranchId'] = branchId;
      if (keyword != null) queryParams['Keyword'] = keyword;
      if (dateFrom != null) queryParams['DateFrom'] = dateFrom;
      if (dateTo != null) queryParams['DateTo'] = dateTo;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfCalendarItemApiDto.fromJson(response.data);
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

  /// get: /api/v1/Class
  Future<Either<ApiError, PagedResultOfClassApiDto>> apiV1ClassGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/Class';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfClassApiDto.fromJson(response.data);
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
    List<int>? contentTypes,
    String? contentSearch,
    int? learningDomainId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/Content';
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
      if (contentTypes != null) queryParams['ContentTypes'] = contentTypes;
      if (contentSearch != null) queryParams['ContentSearch'] = contentSearch;
      if (learningDomainId != null)
        queryParams['LearningDomainId'] = learningDomainId;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfContentApiDto.fromJson(response.data);
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

  /// get: /api/v1/Content/{contentId}
  Future<Either<ApiError, ContentApiDto>> apiV1ContentContentIdGet(
      {required int contentId}) async {
    final endpoint = '/api/v1/Content/$contentId';
    try {
      final response = await _dio.get(endpoint);
      final result = ContentApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/Conversation';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfConversationApiDto.fromJson(response.data);
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

  /// post: /api/v1/Conversation
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationPost(
      ConversationMutationDto body) async {
    final endpoint = '/api/v1/Conversation';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
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

  /// get: /api/v1/Conversation/{id}
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdGet(
      {required int id}) async {
    final endpoint = '/api/v1/Conversation/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = ConversationApiDto.fromJson(response.data);
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

  /// put: /api/v1/Conversation/{id}
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdPut(
    ConversationMutationDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/Conversation/$id';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
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

  /// patch: /api/v1/Conversation/{id}/close
  Future<Either<ApiError, ConversationApiDto>> apiV1ConversationIdClosePatch(
    ConversationCloseDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/Conversation/$id/close';
    try {
      final response = await _dio.patch(
        endpoint,
        data: body.toJson(),
      );
      final result = ConversationApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PATCH',
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

  /// get: /api/v1/ConversationMessage/by-conversation/{conversationId}
  Future<Either<ApiError, PagedResultOfConversationMessageApiDto>>
      apiV1ConversationMessageByConversationConversationIdGet({
    required int conversationId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint =
        '/api/v1/ConversationMessage/by-conversation/$conversationId';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfConversationMessageApiDto.fromJson(response.data);
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

  /// post: /api/v1/ConversationMessage
  Future<Either<ApiError, ConversationMessageApiDto>>
      apiV1ConversationMessagePost(ConversationMessageMutationDto body) async {
    final endpoint = '/api/v1/ConversationMessage';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = ConversationMessageApiDto.fromJson(response.data);
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

  /// patch: /api/v1/ConversationMessage/{id}/read
  Future<Either<ApiError, ConversationMessageApiDto>>
      apiV1ConversationMessageIdReadPatch(
    ConversationMessageReadStatusDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/ConversationMessage/$id/read';
    try {
      final response = await _dio.patch(
        endpoint,
        data: body.toJson(),
      );
      final result = ConversationMessageApiDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PATCH',
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

  /// get: /api/v1/DailyLog
  Future<Either<ApiError, PagedResultOfDailyLogApiDto>> apiV1DailyLogGet({
    required String startDate,
    required String endDate,
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
    final endpoint = '/api/v1/DailyLog';
    final queryParams = <String, dynamic>{};
    try {
      queryParams['StartDate'] = startDate;
      queryParams['EndDate'] = endDate;
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfDailyLogApiDto.fromJson(response.data);
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

  /// get: /api/v1/DailyLog/by-date
  Future<Either<ApiError, PagedResultOfDailyLogApiDto>> apiV1DailyLogByDateGet({
    required String date,
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
    final endpoint = '/api/v1/DailyLog/by-date';
    final queryParams = <String, dynamic>{};
    try {
      queryParams['date'] = date;
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfDailyLogApiDto.fromJson(response.data);
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

  /// post: /api/v1/File
  Future<Either<ApiError, FileUploadResultDto>> apiV1FilePost(
      FileUploadParamDto body) async {
    final endpoint = '/api/v1/File';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = FileUploadResultDto.fromJson(response.data);
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

  /// get: /api/v1/Health
  Future<Either<ApiError, String>> apiV1HealthGet() async {
    final endpoint = '/api/v1/Health';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as String);
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
    final endpoint = '/api/v1/InfantCareActivity';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfInfantCareActivityApiDto.fromJson(response.data);
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

  /// put: /api/v1/InfantCareActivity
  Future<Either<ApiError, InfantCareActivityApiDto>> apiV1InfantCareActivityPut(
      InfantCareActivitySaveDto body) async {
    final endpoint = '/api/v1/InfantCareActivity';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = InfantCareActivityApiDto.fromJson(response.data);
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

  /// post: /api/v1/InfantCareActivity
  Future<Either<ApiError, InfantCareActivityApiDto>>
      apiV1InfantCareActivityPost(InfantCareActivitySaveDto body) async {
    final endpoint = '/api/v1/InfantCareActivity';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = InfantCareActivityApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/InfantCareActivityLog';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfInfantCareActivityLogApiDto.fromJson(response.data);
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

  /// put: /api/v1/InfantCareActivityLog
  Future<Either<ApiError, InfantCareActivityLogApiDto>>
      apiV1InfantCareActivityLogPut(InfantCareActivityLogUpdateDto body) async {
    final endpoint = '/api/v1/InfantCareActivityLog';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = InfantCareActivityLogApiDto.fromJson(response.data);
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

  /// post: /api/v1/InfantCareActivityLog
  Future<Either<ApiError, InfantCareActivityLogApiDto>>
      apiV1InfantCareActivityLogPost(
          InfantCareActivityLogCreateDto body) async {
    final endpoint = '/api/v1/InfantCareActivityLog';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = InfantCareActivityLogApiDto.fromJson(response.data);
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

  /// get: /api/v1/InfantWellnessActivity
  Future<Either<ApiError, List<InfantWellnessActivityDTODto>>>
      apiV1InfantWellnessActivityGet({
    String? startDate,
    String? endDate,
    int? classId,
    int? studentId,
    int? branchId,
    String? activityType,
  }) async {
    final endpoint = '/api/v1/InfantWellnessActivity';
    final queryParams = <String, dynamic>{};
    try {
      if (startDate != null) queryParams['startDate'] = startDate;
      if (endDate != null) queryParams['endDate'] = endDate;
      if (classId != null) queryParams['classId'] = classId;
      if (studentId != null) queryParams['studentId'] = studentId;
      if (branchId != null) queryParams['branchId'] = branchId;
      if (activityType != null) queryParams['activityType'] = activityType;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => InfantWellnessActivityDTODto.fromJson(
              (item as Map<String, dynamic>)))
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

  /// put: /api/v1/InfantWellnessActivity
  Future<Either<ApiError, InfantWellnessActivityDtoDto>>
      apiV1InfantWellnessActivityPut(
    InfantWellnessActivityDtoDto body, {
    int? id,
  }) async {
    final endpoint = '/api/v1/InfantWellnessActivity';
    final queryParams = <String, dynamic>{};
    try {
      if (id != null) queryParams['id'] = id;

      final response = await _dio.put(
        endpoint,
        queryParameters: queryParams,
        data: body.toJson(),
      );
      final result = InfantWellnessActivityDtoDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'PUT',
        endpoint: endpoint,
        requestBody: body,
        queryParameters: queryParams,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }

  /// get: /api/v1/Invoice
  Future<Either<ApiError, PagedResultOfInvoiceApiDto>> apiV1InvoiceGet({
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
    final endpoint = '/api/v1/Invoice';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfInvoiceApiDto.fromJson(response.data);
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

  /// get: /api/v1/Invoice/{invoiceId}
  Future<Either<ApiError, InvoiceApiDto>> apiV1InvoiceInvoiceIdGet(
      {required int invoiceId}) async {
    final endpoint = '/api/v1/Invoice/$invoiceId';
    try {
      final response = await _dio.get(endpoint);
      final result = InvoiceApiDto.fromJson(response.data);
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

  /// get: /api/v1/LearningDomain
  Future<Either<ApiError, PagedResultOfLearningDomainApiDto>>
      apiV1LearningDomainGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/LearningDomain';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfLearningDomainApiDto.fromJson(response.data);
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

  /// get: /api/v1/LookUp/{lookUpTypeEnum}
  Future<Either<ApiError, List<LookUpDto>>> apiV1LookUpLookUpTypeEnumGet(
      {required int lookUpTypeEnum}) async {
    final endpoint = '/api/v1/LookUp/$lookUpTypeEnum';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => LookUpDto.fromJson((item as Map<String, dynamic>)))
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

  /// post: /api/v1/Notification/mark-all-as-read
  Future<Either<ApiError, int>> apiV1NotificationMarkAllAsReadPost() async {
    final endpoint = '/api/v1/Notification/mark-all-as-read';
    try {
      final response = await _dio.post(endpoint);
      final result = (response.data as int);
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

  /// get: /api/v1/Notification/summary
  Future<Either<ApiError, NotificationSummaryDto>>
      apiV1NotificationSummaryGet() async {
    final endpoint = '/api/v1/Notification/summary';
    try {
      final response = await _dio.get(endpoint);
      final result = NotificationSummaryDto.fromJson(response.data);
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

  /// put: /api/v1/Notification/toggle-read/{notificationRecipientId}
  Future<Either<ApiError, NotificationApiDto>>
      apiV1NotificationToggleReadNotificationRecipientIdPut(
          {required int notificationRecipientId}) async {
    final endpoint =
        '/api/v1/Notification/toggle-read/$notificationRecipientId';
    try {
      final response = await _dio.put(endpoint);
      final result = NotificationApiDto.fromJson(response.data);
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

  /// get: /api/v1/Notification/{notificationRecipientId}
  Future<Either<ApiError, NotificationApiDto>>
      apiV1NotificationNotificationRecipientIdGet(
          {required int notificationRecipientId}) async {
    final endpoint = '/api/v1/Notification/$notificationRecipientId';
    try {
      final response = await _dio.get(endpoint);
      final result = NotificationApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/Notification';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfNotificationApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/StudentAttendance';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentAttendanceApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/StudentAuthorisedPerson';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentAuthorisedPersonApiDto.fromJson(response.data);
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

  /// post: /api/v1/StudentAuthorisedPerson/{id}/deactivate
  Future<Either<ApiError, void>> apiV1StudentAuthorisedPersonIdDeactivatePost(
    AuthorisedPersonReasonApiDtoRequestDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/StudentAuthorisedPerson/$id/deactivate';
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

  /// post: /api/v1/StudentAuthorisedPerson/{id}/activate
  Future<Either<ApiError, void>> apiV1StudentAuthorisedPersonIdActivatePost(
    AuthorisedPersonReasonApiDtoRequestDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/StudentAuthorisedPerson/$id/activate';
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

  /// post: /api/v1/StudentAuthorisedPerson/{id}
  Future<Either<ApiError, StudentAuthorisedPersonApiDto>>
      apiV1StudentAuthorisedPersonIdPost(
    StudentAuthorisedPersonApiDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/StudentAuthorisedPerson/$id';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = StudentAuthorisedPersonApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/StudentCheckInOut';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentCheckInOutApiDto.fromJson(response.data);
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

  /// post: /api/v1/StudentCheckInOut
  Future<Either<ApiError, StudentCheckInOutApiDto>> apiV1StudentCheckInOutPost(
      StudentCheckInOutCreateRequestDto body) async {
    final endpoint = '/api/v1/StudentCheckInOut';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = StudentCheckInOutApiDto.fromJson(response.data);
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

  /// put: /api/v1/StudentCheckInOut/{id}
  Future<Either<ApiError, StudentCheckInOutApiDto>> apiV1StudentCheckInOutIdPut(
    StudentCheckInOutUpdateRequestDto body, {
    required int id,
  }) async {
    final endpoint = '/api/v1/StudentCheckInOut/$id';
    try {
      final response = await _dio.put(
        endpoint,
        data: body.toJson(),
      );
      final result = StudentCheckInOutApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/StudentClassAttendance';
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
        endpoint,
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
    final endpoint = '/api/v1/Student';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfStudentApiDto.fromJson(response.data);
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

  /// get: /api/v1/Student/{studentId}
  Future<Either<ApiError, StudentApiDto>> apiV1StudentStudentIdGet(
      {required int studentId}) async {
    final endpoint = '/api/v1/Student/$studentId';
    try {
      final response = await _dio.get(endpoint);
      final result = StudentApiDto.fromJson(response.data);
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
    final endpoint = '/api/v1/StudentTemperature';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          PagedResultOfStudentTemperatureApiDto.fromJson(response.data);
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

  /// get: /api/v1/Survey
  Future<Either<ApiError, List<SurveyApiDto>>> apiV1SurveyGet() async {
    final endpoint = '/api/v1/Survey';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => SurveyApiDto.fromJson((item as Map<String, dynamic>)))
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
    final endpoint = '/api/v1/Teacher';
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
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfTeacherApiDto.fromJson(response.data);
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

  /// get: /api/v1/Teacher/{teacherId}
  Future<Either<ApiError, TeacherApiDto>> apiV1TeacherTeacherIdGet(
      {required int teacherId}) async {
    final endpoint = '/api/v1/Teacher/$teacherId';
    try {
      final response = await _dio.get(endpoint);
      final result = TeacherApiDto.fromJson(response.data);
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

  /// get: /api/v1/Teacher/GenerateDemoTeachers
  Future<Either<ApiError, void>> apiV1TeacherGenerateDemoTeachersGet() async {
    final endpoint = '/api/v1/Teacher/GenerateDemoTeachers';
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

  /// get: /api/v1/UserBranchRole
  Future<Either<ApiError, PagedResultOfUserBranchRoleViewDto>>
      apiV1UserBranchRoleGet({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/api/v1/UserBranchRole';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = PagedResultOfUserBranchRoleViewDto.fromJson(response.data);
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

  /// get: /api/v1/User/me
  Future<Either<ApiError, CurrentUserInfoDto>> apiV1UserMeGet() async {
    final endpoint = '/api/v1/User/me';
    try {
      final response = await _dio.get(endpoint);
      final result = CurrentUserInfoDto.fromJson(response.data);
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

  /// post: /api/v1/User/delete
  Future<Either<ApiError, bool>> apiV1UserDeletePost() async {
    final endpoint = '/api/v1/User/delete';
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

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
