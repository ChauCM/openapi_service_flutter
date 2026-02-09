// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'ebridge2.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';

class Ebridge2Service {
  Ebridge2Service(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// Gets all Enums
  /// Returns all the available enums with their list of values
  /// get: /api/v1/Enums
  Future<Either<ApiError, List<String>>> apiV1EnumsGet() async {
    final endpoint = '/api/v1/Enums';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => (item as String)).toList();
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

  /// Get list of enum names
  /// Returns all the names of enums. Values returned here can be use for `enumValues/values/{enumName}` endpoint
  /// get: /api/v1/Enums/names
  Future<Either<ApiError, List<String>>> apiV1EnumsNamesGet() async {
    final endpoint = '/api/v1/Enums/names';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result.map((item) => (item as String)).toList();
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

  /// Get values of a specific enum
  /// Returns all the value of the specified enum
  /// get: /api/v1/Enums/values/{EnumName}
  Future<Either<ApiError, List<EnumObjectDto>>> apiV1EnumsValuesEnumNameGet(
      {required String enumName}) async {
    final endpoint = '/api/v1/Enums/values/$enumName';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => EnumObjectDto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /api/v1/ConversationMessage/by-conversation/{conversationId}
  Future<Either<ApiError, PagedResultOfConversationMessageApiDto>>
      apiV1ConversationMessageByConversationConversationIdGet({
    required int conversationId,
    int? page,
    int? pageSize,
    List<String>? sortBy,
    String? sortOrder,
  }) async {
    final endpoint =
        '/api/v1/ConversationMessage/by-conversation/$conversationId';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;
      if (sortBy != null) queryParams['SortBy'] = sortBy;
      if (sortOrder != null) queryParams['SortOrder'] = sortOrder;

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
