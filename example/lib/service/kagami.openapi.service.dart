// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'kagami.openapi.dtos.dart';
import 'package:openapi_service_flutter/runtime.dart';

class KagamiService {
  KagamiService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// get: /Accounts/{accountId}
  Future<Either<ApiError, void>> getWithDetails188(
      {required String accountId}) async {
    final endpoint = '/Accounts/$accountId';
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

  /// get: /v2/Attendances
  Future<Either<ApiError, DailyLogAttendanceDto>> getAttendanceById190(
      {String? id}) async {
    final endpoint = '/v2/Attendances';
    final queryParams = <String, dynamic>{};
    try {
      if (id != null) queryParams['Id'] = id;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = DailyLogAttendanceDto.fromJson(response.data);
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

  /// post: /v2/Attendances
  Future<Either<ApiError, void>> logAttendance189(AttendanceDto body) async {
    final endpoint = '/v2/Attendances';
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

  /// post: /v2/Attendances/{yyyymmdd}
  Future<Either<ApiError, List<AttendanceDto>>> markMassAttendance191(
    MarkMassAttendanceParameterDto body, {
    required String yyyymmdd,
  }) async {
    final endpoint = '/v2/Attendances/$yyyymmdd';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => AttendanceDto.fromJson((item as Map<String, dynamic>)))
          .toList();
      return Right(mappedResult);
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

  /// get: /v2/Attendances/{studentid}/{logDate}
  Future<Either<ApiError, DailyLogAttendanceDto>> getAttendanceByStudentId192({
    required String studentid,
    required String logDate,
  }) async {
    final endpoint = '/v2/Attendances/$studentid/$logDate';
    try {
      final response = await _dio.get(endpoint);
      final result = DailyLogAttendanceDto.fromJson(response.data);
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

  /// post: /Auth/Token
  Future<Either<ApiError, void>> token193(LoginParameterDto body) async {
    final endpoint = '/Auth/Token';
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

  /// post: /Auth/Action/Refresh
  Future<Either<ApiError, void>> refresh194(
      RefreshTokenParameterDto body) async {
    final endpoint = '/Auth/Action/Refresh';
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

  /// post: /Auth/Schools/{schoolId}
  Future<Either<ApiError, void>> switchSchool195(
      {required String schoolId}) async {
    final endpoint = '/Auth/Schools/$schoolId';
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

  /// get: /Calendars/Error
  Future<Either<ApiError, void>> getError196() async {
    final endpoint = '/Calendars/Error';
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

  /// get: /Calendars/Schools/{schoolId}/{from_yyyyMMdd}/{to_yyyyMMdd}
  Future<Either<ApiError, void>> getAcademicCalendar197({
    required String schoolId,
    required String fromYyyyMMdd,
    required String toYyyyMMdd,
  }) async {
    final endpoint = '/Calendars/Schools/$schoolId/$fromYyyyMMdd/$toYyyyMMdd';
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

  /// get: /Calendars/PTC/AvailableSlots/{schoolId}/{teacherAccountId}
  Future<Either<ApiError, void>> getPTCAvailableSlotsByUser198({
    required String schoolId,
    required String teacherAccountId,
  }) async {
    final endpoint =
        '/Calendars/PTC/AvailableSlots/$schoolId/$teacherAccountId';
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

  /// get: /Calendars/PTC/Slots/{schoolId}/{teacherAccountId}
  Future<Either<ApiError, void>> getPTCSlotsByUser199({
    required String schoolId,
    required String teacherAccountId,
  }) async {
    final endpoint = '/Calendars/PTC/Slots/$schoolId/$teacherAccountId';
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

  /// get: /Calendars/PTC/Slots/{schoolId}/{teacherAccountId}/{from_yyyyMMdd}/{to_yyyyMMdd}
  Future<Either<ApiError, void>> getPTCSlotsByUserAndDate200({
    required String schoolId,
    required String teacherAccountId,
    required String fromYyyyMMdd,
    required String toYyyyMMdd,
  }) async {
    final endpoint =
        '/Calendars/PTC/Slots/$schoolId/$teacherAccountId/$fromYyyyMMdd/$toYyyyMMdd';
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

  /// delete: /Calendars/PTC/Slots/{schoolId}/{teacherAccountId}/{eventIds}
  Future<Either<ApiError, void>> deleteEventByUser201({
    required String schoolId,
    required String teacherAccountId,
    required String eventIds,
  }) async {
    final endpoint =
        '/Calendars/PTC/Slots/$schoolId/$teacherAccountId/$eventIds';
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

  /// get: /Calendars/PTC/MyBookings/{schoolId}/{studentId}/{parentAccountId}
  Future<Either<ApiError, void>> getPTCBookingsByUser202({
    required String schoolId,
    required String studentId,
    required String parentAccountId,
  }) async {
    final endpoint =
        '/Calendars/PTC/MyBookings/$schoolId/$studentId/$parentAccountId';
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

  /// get: /Calendars/PTC/GetTeachersWithPTCSlots/{schoolId}/{studentId}
  Future<Either<ApiError, void>> getTeachersWithPTCSlots203({
    required String schoolId,
    required String studentId,
  }) async {
    final endpoint =
        '/Calendars/PTC/GetTeachersWithPTCSlots/$schoolId/$studentId';
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

  /// get: /Calendars/PTC/MyBookings/Teachers/{teacherId}
  Future<Either<ApiError, void>> getPTCBookingsByTeacherId204(
      {required String teacherId}) async {
    final endpoint = '/Calendars/PTC/MyBookings/Teachers/$teacherId';
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

  /// post: /Calendars/PTC
  Future<Either<ApiError, void>> bookEvent205(
      BookEventRequestParameterDto body) async {
    final endpoint = '/Calendars/PTC';
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

  /// post: /Calendars/PTC/Cancel
  Future<Either<ApiError, void>> unBookEvent206(
      BookEventRequestParameterDto body) async {
    final endpoint = '/Calendars/PTC/Cancel';
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

  /// post: /Calendars/PTC/Update
  Future<Either<ApiError, void>> updateBookingEvent207(
      EditBookEventParameterDto body) async {
    final endpoint = '/Calendars/PTC/Update';
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

  /// post: /Calendars/PTC/Create/{id}
  Future<Either<ApiError, void>> createEvent208(
    CalendarItemParameterDto body, {
    required String id,
  }) async {
    final endpoint = '/Calendars/PTC/Create/$id';
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

  /// post: /CheckInsOuts
  Future<Either<ApiError, void>> logCheckInOut209(CheckInOutDto body) async {
    final endpoint = '/CheckInsOuts';
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

  /// get: /v2/CheckInsOuts
  Future<Either<ApiError, CheckInOutDto>> getCheckInOutById211(
      {String? id}) async {
    final endpoint = '/v2/CheckInsOuts';
    final queryParams = <String, dynamic>{};
    try {
      if (id != null) queryParams['id'] = id;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = CheckInOutDto.fromJson(response.data);
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

  /// post: /v2/CheckInsOuts
  Future<Either<ApiError, CheckInOutDto>> logCheckInOut210(
      CheckInOutParameterDto body) async {
    final endpoint = '/v2/CheckInsOuts';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = CheckInOutDto.fromJson(response.data);
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

  /// get: /v2/CheckInsOuts/{studentid}/{logDate}
  Future<Either<ApiError, CheckInOutDto>> getCheckInOutByStudentId212({
    required String studentId,
    required String logDate,
  }) async {
    final endpoint = '/v2/CheckInsOuts/{studentid}/$logDate';
    try {
      final response = await _dio.get(endpoint);
      final result = CheckInOutDto.fromJson(response.data);
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

  /// get: /Classes/{id}/Students
  Future<Either<ApiError, void>> getStudentsByClassId213({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Classes/$id/Students';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Classes/{id}/Teachers
  Future<Either<ApiError, void>> getTeachersByClassId214({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Classes/$id/Teachers';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Classes/{classid}/Attendances/{yyyyMMdd_start}/{yyyyMMdd_end}
  Future<Either<ApiError, void>> getAttendancesByClassIdByDateRange215({
    required String classid,
    required String yyyyMMddStart,
    required String yyyyMMddEnd,
  }) async {
    final endpoint =
        '/Classes/$classid/Attendances/$yyyyMMddStart/$yyyyMMddEnd';
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

  /// get: /Classes/{id}
  Future<Either<ApiError, void>> getById216({required String id}) async {
    final endpoint = '/Classes/$id';
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

  /// get: /v2/Classes/{id}
  Future<Either<ApiError, void>> getById217({required String id}) async {
    final endpoint = '/v2/Classes/$id';
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

  /// get: /v2/Classes/{id}/Students
  Future<Either<ApiError, void>> getStudentsByClassId218({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/v2/Classes/$id/Students';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /v2/Classes/{id}/Teachers
  Future<Either<ApiError, void>> getTeachersByClassId219({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/v2/Classes/$id/Teachers';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /v2/Classes/{classid}/Attendances/{yyyymmdd}
  Future<Either<ApiError, void>> getAttendancesByClassIdByDate220({
    required String classid,
    required String yyyyMMdd,
  }) async {
    final endpoint = '/v2/Classes/$classid/Attendances/{yyyymmdd}';
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

  /// get: /v2/Classes/{classid}/Attendances/{yyyyMMdd_start}/{yyyyMMdd_end}
  Future<Either<ApiError, void>> getAttendancesByClassIdByDateRange221({
    required String classid,
    required String yyyyMMddStart,
    required String yyyyMMddEnd,
  }) async {
    final endpoint =
        '/v2/Classes/$classid/Attendances/$yyyyMMddStart/$yyyyMMddEnd';
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

  /// get: /v2/Classes/{classid}/CheckInOuts/{date}
  Future<Either<ApiError, void>> getCheckInOutsByClassIdByDate222({
    required String classid,
    required String date,
  }) async {
    final endpoint = '/v2/Classes/$classid/CheckInOuts/$date';
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

  /// get: /v2/Classes/{schoolid}/StudentSearch/{searchstring}
  Future<Either<ApiError, List<StudentMiniDailyLogVODto>>>
      getCheckInOutsBySearch223({
    required String schoolid,
    required String searchstring,
  }) async {
    final endpoint = '/v2/Classes/$schoolid/StudentSearch/$searchstring';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              StudentMiniDailyLogVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /v2/Classes/{classid}/Status/{date}
  Future<Either<ApiError, List<StudentMiniDailyLogVODto>>>
      getStatusByClassIdByDate224({
    required String classid,
    required String date,
  }) async {
    final endpoint = '/v2/Classes/$classid/Status/$date';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              StudentMiniDailyLogVODto.fromJson((item as Map<String, dynamic>)))
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

  /// post: /Communications/Action/SendNotification
  Future<Either<ApiError, void>> sendNotification225(
      CommunicationsParameterDto body) async {
    final endpoint = '/Communications/Action/SendNotification';
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

  /// get: /Communications/Action/GetNotifications/{topic}
  Future<Either<ApiError, void>> getNotifications226({
    required String topic,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Communications/Action/GetNotifications/$topic';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['pageNumber'] = pageNumber;
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

  /// put: /Communications/Action/UpdateNotificationStatus/{topic}
  Future<Either<ApiError, void>> updateNotificationStatus227(
      {required String topic}) async {
    final endpoint = '/Communications/Action/UpdateNotificationStatus/$topic';
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

  /// post: /Communications/Action/SendTeacherReminderNotification/{TeacherReminderTypes}
  Future<Either<ApiError, void>> sendTeacherReminderNotification228(
      {required String teacherReminderTypes}) async {
    final endpoint =
        '/Communications/Action/SendTeacherReminderNotification/$teacherReminderTypes';
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

  /// post: /Communications/Action/SendPrincipalNotification/{NotificationType}
  Future<Either<ApiError, void>> sendPrincipalNotification229(
      {required String notificationType}) async {
    final endpoint =
        '/Communications/Action/SendPrincipalNotification/$notificationType';
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

  /// post: /Communications/Action/SendCustomNotification
  Future<Either<ApiError, void>> sendCustomNotification230() async {
    final endpoint = '/Communications/Action/SendCustomNotification';
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

  /// post: /Communications/Action/SendPushNotification/{entityType}/{entityId}
  Future<Either<ApiError, void>> sendWebNotification231({
    required String entityType,
    required String entityId,
  }) async {
    final endpoint =
        '/Communications/Action/SendPushNotification/$entityType/$entityId';
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

  /// post: /Communications/Action/SendPTCNotification/{entityType}
  Future<Either<ApiError, void>> sendPTCNotification232(
    CustomNotificationParametersDto body, {
    required String entityType,
  }) async {
    final endpoint = '/Communications/Action/SendPTCNotification/$entityType';
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

  /// get: /Countries
  Future<Either<ApiError, void>> get233({
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Countries';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /CourseComponents/{schoolId}/{levelId}
  Future<Either<ApiError, void>> getCourseComponents234({
    required String schoolId,
    required String levelId,
  }) async {
    final endpoint = '/CourseComponents/$schoolId/$levelId';
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

  /// get: /CourseComponents/{courseComponentId}/{academicYearId}/{yyyyMMdd}
  Future<Either<ApiError, void>> getAttendance235({
    required int courseComponentId,
    required String academicYearId,
    required String yyyyMMdd,
  }) async {
    final endpoint =
        '/CourseComponents/$courseComponentId/$academicYearId/$yyyyMMdd';
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

  /// post: /CourseComponents/{userId}
  Future<Either<ApiError, void>> markAttendance236(
    CourseComponentAttendanceDto body, {
    required String userId,
  }) async {
    final endpoint = '/CourseComponents/$userId';
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

  /// post: /CourseComponents/{courseComponentId}/students
  Future<Either<ApiError, void>> updateStudent237(
    CourseComponentStudentParameterDto body, {
    required String courseComponentId,
  }) async {
    final endpoint = '/CourseComponents/$courseComponentId/students';
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

  /// get: /Courses
  Future<Either<ApiError, void>> get238({
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Courses';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Courses/{id}
  Future<Either<ApiError, void>> getById239({required String id}) async {
    final endpoint = '/Courses/$id';
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

  /// get: /Courses/{id}/classes
  Future<Either<ApiError, void>> getClassesByCourseId240({
    required String id,
    bool? showActiveOnly,
    String? academicYearId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Courses/$id/classes';
    final queryParams = <String, dynamic>{};
    try {
      if (showActiveOnly != null)
        queryParams['ShowActiveOnly'] = showActiveOnly;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Courses/{id}/students
  Future<Either<ApiError, void>> getStudentsByCourseId241({
    required String id,
    String? schoolId,
    String? academicYearId,
  }) async {
    final endpoint = '/Courses/$id/students';
    final queryParams = <String, dynamic>{};
    try {
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;

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

  /// get: /DailyLogs/{studentid}/{year}/{month}
  Future<Either<ApiError, void>> getByStudentIdByMongth242({
    required String studentid,
    required int year,
    required int month,
  }) async {
    final endpoint = '/DailyLogs/$studentid/$year/$month';
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

  /// get: /v2/DailyLogs/{studentid}/{logDate}
  Future<Either<ApiError, void>> getByStudentId243({
    required String studentId,
    required String logDate,
  }) async {
    final endpoint = '/v2/DailyLogs/{studentid}/$logDate';
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

  /// get: /v2/DailyLogs/{studentid}/{year}/{month}
  Future<Either<ApiError, void>> getByStudentIdByMongth244({
    required String studentid,
    required int year,
    required int month,
  }) async {
    final endpoint = '/v2/DailyLogs/$studentid/$year/$month';
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

  /// get: /v2/DailyLogs/{studentid}/daterange/{dateFrom}/{dateTo}
  Future<Either<ApiError, void>> getByStudentIdByDateRange245({
    required String studentid,
    required String dateFrom,
    required String dateTo,
  }) async {
    final endpoint = '/v2/DailyLogs/$studentid/daterange/$dateFrom/$dateTo';
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

  /// get: /v2/DailyLogs/DailyLogMonitoring/{SchoolId}/{Month}/{Year}
  Future<Either<ApiError, void>> getDailyLogMonitoring246({
    required String schoolId,
    required int month,
    required int year,
  }) async {
    final endpoint = '/v2/DailyLogs/DailyLogMonitoring/$schoolId/$month/$year';
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

  /// get: /v2/DailyLogs/DailyLogMonitoring/Absences/{SchoolId}/{Month}/{Year}/{ClassId}
  Future<Either<ApiError, void>> getDailyLogMonitoringAttendance247({
    required String schoolId,
    required int month,
    required int year,
    required String classId,
  }) async {
    final endpoint =
        '/v2/DailyLogs/DailyLogMonitoring/Absences/$schoolId/$month/$year/$classId';
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

  /// get: /v2/DailyLogs/DailyLogMonitoring/IncompleteTemperature/{SchoolId}/{Month}/{Year}/{ClassId}
  Future<Either<ApiError, void>> getDailyLogMonitoringIncompleteTemperature248({
    required String schoolId,
    required int month,
    required int year,
    required String classId,
  }) async {
    final endpoint =
        '/v2/DailyLogs/DailyLogMonitoring/IncompleteTemperature/$schoolId/$month/$year/$classId';
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

  /// put: /Files/{filename}
  Future<Either<ApiError, void>> fileUpload249(
      {required String filename}) async {
    final endpoint = '/Files/$filename';
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

  /// put: /Files/{entity}/{entityId}
  Future<Either<ApiError, void>> getFileByFileName250({
    required String entityId,
    required String entity,
  }) async {
    final endpoint = '/Files/$entity/$entityId';
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

  /// get: /Files/{id}
  Future<Either<ApiError, void>> getFileById251({required String id}) async {
    final endpoint = '/Files/$id';
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

  /// get: /Files/Images
  Future<Either<ApiError, void>> showImage252({
    String? e,
    String? f,
    String? args,
    int? h,
    int? w,
  }) async {
    final endpoint = '/Files/Images';
    final queryParams = <String, dynamic>{};
    try {
      if (e != null) queryParams['e'] = e;
      if (f != null) queryParams['f'] = f;
      if (args != null) queryParams['args'] = args;
      if (h != null) queryParams['h'] = h;
      if (w != null) queryParams['w'] = w;

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

  /// get: /Fs/{path}
  Future<Either<ApiError, void>> get253({required String path}) async {
    final endpoint = '/Fs/$path';
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

  /// get: /Goals/post
  Future<Either<ApiError, void>> getGoalsByParam254({
    String? studentList,
    String? classList,
    String? courseList,
    String? academicYearId,
    String? termId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Goals/post';
    final queryParams = <String, dynamic>{};
    try {
      if (studentList != null) queryParams['studentList'] = studentList;
      if (classList != null) queryParams['classList'] = classList;
      if (courseList != null) queryParams['courseList'] = courseList;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (termId != null) queryParams['TermId'] = termId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Goals/goallevels
  Future<Either<ApiError, void>> getGoalsByParamV2255({
    String? studentList,
    String? classList,
    String? courseList,
    String? academicYearId,
    String? termId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Goals/goallevels';
    final queryParams = <String, dynamic>{};
    try {
      if (studentList != null) queryParams['studentList'] = studentList;
      if (classList != null) queryParams['classList'] = classList;
      if (courseList != null) queryParams['courseList'] = courseList;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (termId != null) queryParams['TermId'] = termId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Invoices/{id}
  Future<Either<ApiError, void>> get256({required String id}) async {
    final endpoint = '/Invoices/$id';
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

  /// get: /Invoices/{id}/Household
  Future<Either<ApiError, void>> getInvoicesByHouseHoldId257({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Invoices/$id/Household';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Invoices/{id}/Parent/History
  Future<Either<ApiError, void>> getInvoicesByParentId258({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Invoices/$id/Parent/History';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Invoices/{id}/Parent/Outstanding
  Future<Either<ApiError, void>> getInvoicesOutstandingByParentId259({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Invoices/$id/Parent/Outstanding';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Invoices/OutstandingItems/{studentId}/{invoiceName}
  Future<Either<ApiError, void>> getOutstandingItemsByInvoiceName260({
    required String studentId,
    required String invoiceName,
  }) async {
    final endpoint = '/Invoices/OutstandingItems/$studentId/$invoiceName';
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

  /// get: /Invoices/OutstandingAR/{universityId}/{yyyyMMdd_InvoiceStartDate}/{yyyyMMdd_InvoiceEndDate}/{yyyyMMdd_ReceiptCutOffDate}
  Future<Either<ApiError, void>> getOutstandingAR261({
    required String universityId,
    required String yyyyMMddInvoiceStartDate,
    required String yyyyMMddInvoiceEndDate,
    required String yyyyMMddReceiptCutOffDate,
  }) async {
    final endpoint =
        '/Invoices/OutstandingAR/$universityId/$yyyyMMddInvoiceStartDate/$yyyyMMddInvoiceEndDate/$yyyyMMddReceiptCutOffDate';
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

  /// get: /MedicineAuditTrails/{id}
  Future<Either<ApiError, MedicineAuditWithDetailVODto>> getById262(
      {required int id}) async {
    final endpoint = '/MedicineAuditTrails/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = MedicineAuditWithDetailVODto.fromJson(response.data);
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

  /// get: /MedicineAuditTrails/schools/{schoolId}/allAudits
  Future<Either<ApiError, MedicineAuditWebViewVOPaginationDto>>
      getAllAuditsBySchoolId263({
    required String schoolId,
    String? filterDateFrom,
    String? filterDateEnd,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineAuditTrails/schools/$schoolId/allAudits';
    final queryParams = <String, dynamic>{};
    try {
      if (filterDateFrom != null)
        queryParams['filterDateFrom'] = filterDateFrom;
      if (filterDateEnd != null) queryParams['filterDateEnd'] = filterDateEnd;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result =
          MedicineAuditWebViewVOPaginationDto.fromJson(response.data);
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

  /// post: /MedicineAuditTrails
  Future<Either<ApiError, void>> saveMedicineAudit265(
      MedicineAuditTrailsDto body) async {
    final endpoint = '/MedicineAuditTrails';
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

  /// delete: /MedicineAuditTrails
  Future<Either<ApiError, void>> delete264({int? medicineAuditId}) async {
    final endpoint = '/MedicineAuditTrails';
    final queryParams = <String, dynamic>{};
    try {
      if (medicineAuditId != null)
        queryParams['medicineAuditId'] = medicineAuditId;

      final _ = await _dio.delete(
        endpoint,
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
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

  /// get: /MedicineAuditTrails/ByMedicineFormId/{medicineFormId}
  Future<Either<ApiError, List<MedicineAuditWithDetailVODto>>>
      getListByMedicineFormId266({required int medicineFormId}) async {
    final endpoint = '/MedicineAuditTrails/ByMedicineFormId/$medicineFormId';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) => MedicineAuditWithDetailVODto.fromJson(
              (item as Map<String, dynamic>)))
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

  /// post: /MedicineAuditTrails/user/{userId}
  Future<Either<ApiError, void>> saveMedicineAudit267(
    MedicineAuditTrailsDto body, {
    required String userId,
  }) async {
    final endpoint = '/MedicineAuditTrails/user/$userId';
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

  /// post: /MedicineAuditTrails/verify
  Future<Either<ApiError, void>> verifyByMedicineFormId268(
      MedicineAuditTrailsVerifierDto body) async {
    final endpoint = '/MedicineAuditTrails/verify';
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

  /// post: /MedicineAuditTrails/verify/{userId}
  Future<Either<ApiError, void>> verifyByMedicineFormId269(
    MedicineAuditTrailsVerifierDto body, {
    required String userId,
  }) async {
    final endpoint = '/MedicineAuditTrails/verify/$userId';
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

  /// post: /MedicineAuditTrails/reject
  Future<Either<ApiError, void>> rejectByMedicineFormId270(
      MedicineAuditTrailsVerifierDto body) async {
    final endpoint = '/MedicineAuditTrails/reject';
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

  /// get: /MedicineDetails/{id}
  Future<Either<ApiError, void>> getById271({required String id}) async {
    final endpoint = '/MedicineDetails/$id';
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

  /// get: /MedicineForm
  Future<Either<ApiError, List<MedicineFormDto>>> getMedicines273({
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineFormDto.fromJson((item as Map<String, dynamic>)))
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

  /// post: /MedicineForm
  Future<Either<ApiError, void>> saveMedicineForm274(
      MedicineFormDto body) async {
    final endpoint = '/MedicineForm';
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

  /// delete: /MedicineForm
  Future<Either<ApiError, void>> delete272({String? id}) async {
    final endpoint = '/MedicineForm';
    final queryParams = <String, dynamic>{};
    try {
      if (id != null) queryParams['id'] = id;

      final _ = await _dio.delete(
        endpoint,
        queryParameters: queryParams,
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'DELETE',
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

  /// get: /MedicineForm/{id}
  Future<Either<ApiError, MedicineFormFullVODto>> getFullMedicineForm275(
      {required int id}) async {
    final endpoint = '/MedicineForm/$id';
    try {
      final response = await _dio.get(endpoint);
      final result = MedicineFormFullVODto.fromJson(response.data);
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

  /// get: /MedicineForm/parents/{parentId}/students
  Future<Either<ApiError, List<MedicineDataStudentVODto>>>
      getStudentWithMedicineDataByParentId276(
          {required String parentId}) async {
    final endpoint = '/MedicineForm/parents/$parentId/students';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineDataStudentVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/{medicineFormId}/student
  Future<Either<ApiError, MedicineDataStudentVODto>>
      getStudentWithMedicineDataByMedicineFormId277(
          {required int medicineFormId}) async {
    final endpoint = '/MedicineForm/$medicineFormId/student';
    try {
      final response = await _dio.get(endpoint);
      final result = MedicineDataStudentVODto.fromJson(response.data);
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

  /// get: /MedicineForm/classes/{classId}/students
  Future<Either<ApiError, List<MedicineDataStudentVODto>>>
      getStudentsWithMedicineDataByClassId278({required String classId}) async {
    final endpoint = '/MedicineForm/classes/$classId/students';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineDataStudentVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/schools/{schoolId}/students
  Future<Either<ApiError, List<MedicineDataStudentVODto>>>
      getStudentsWithMedicineDataByClassId279({
    required String schoolId,
    String? searchString,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/students';
    final queryParams = <String, dynamic>{};
    try {
      if (searchString != null) queryParams['searchString'] = searchString;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineDataStudentVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/schools/{schoolId}/homePageInfo
  Future<Either<ApiError, List<MedicineFormFullVODto>>>
      getHomePageInfoBySchoolId280({required String schoolId}) async {
    final endpoint = '/MedicineForm/schools/$schoolId/homePageInfo';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineFormFullVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/schools/{schoolId}/todayMedicine
  Future<Either<ApiError, List<MedicineFormFullVODto>>>
      getTodayMedicineBySchoolId281({
    required String schoolId,
    String? date,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/todayMedicine';
    final queryParams = <String, dynamic>{};
    try {
      if (date != null) queryParams['date'] = date;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineFormFullVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/schools/{schoolId}/allActiveMedicine
  Future<Either<ApiError, MedicineFormFullVOPaginationDto>>
      getAllActiveMedicineBySchoolId282({
    required String schoolId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/allActiveMedicine';
    final queryParams = <String, dynamic>{};
    try {
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = MedicineFormFullVOPaginationDto.fromJson(response.data);
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

  /// get: /MedicineForm/schools/{schoolId}/allRequestMedicine
  Future<Either<ApiError, MedicineFormFullVOPaginationDto>>
      getAllRequestMedicineBySchoolId283({
    required String schoolId,
    String? classId,
    String? filterDateFrom,
    String? filterDateEnd,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/allRequestMedicine';
    final queryParams = <String, dynamic>{};
    try {
      if (classId != null) queryParams['classId'] = classId;
      if (filterDateFrom != null)
        queryParams['filterDateFrom'] = filterDateFrom;
      if (filterDateEnd != null) queryParams['filterDateEnd'] = filterDateEnd;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = MedicineFormFullVOPaginationDto.fromJson(response.data);
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

  /// get: /MedicineForm/schools/{schoolId}/request/{status}
  Future<Either<ApiError, MedicineFormFullVOPaginationDto>>
      getMedicineByUserIdandStatus284({
    required String schoolId,
    required String status,
    String? search,
    String? levelId,
    String? classId,
    String? filterDateFrom,
    String? filterDateEnd,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/request/$status';
    final queryParams = <String, dynamic>{};
    try {
      if (search != null) queryParams['Search'] = search;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (filterDateFrom != null)
        queryParams['FilterDateFrom'] = filterDateFrom;
      if (filterDateEnd != null) queryParams['FilterDateEnd'] = filterDateEnd;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = MedicineFormFullVOPaginationDto.fromJson(response.data);
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

  /// get: /MedicineForm/schools/{schoolId}/medicinerequests
  Future<Either<ApiError, MedicineFormFullVOPaginationDto>>
      getAllMedicineBySchoolId285({
    required String schoolId,
    String? search,
    String? levelId,
    String? classId,
    String? filterDateFrom,
    String? filterDateEnd,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/schools/$schoolId/medicinerequests';
    final queryParams = <String, dynamic>{};
    try {
      if (search != null) queryParams['Search'] = search;
      if (levelId != null) queryParams['LevelId'] = levelId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (filterDateFrom != null)
        queryParams['FilterDateFrom'] = filterDateFrom;
      if (filterDateEnd != null) queryParams['FilterDateEnd'] = filterDateEnd;
      if (page != null) queryParams['Page'] = page;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = MedicineFormFullVOPaginationDto.fromJson(response.data);
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

  /// get: /MedicineForm/schools/{schoolId}/actionMedicine
  Future<Either<ApiError, List<MedicineFormFullVODto>>>
      getActionMedicineBySchoolId286({required String schoolId}) async {
    final endpoint = '/MedicineForm/schools/$schoolId/actionMedicine';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              MedicineFormFullVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/students/{studentId}/validMedicines
  Future<Either<ApiError, List<MedicineFormFullVODto>>>
      getValidMedicineFormByStudentId287({
    required String studentId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/students/$studentId/validMedicines';
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
              MedicineFormFullVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /MedicineForm/students/{studentId}/expiredMedicines
  Future<Either<ApiError, List<MedicineFormFullVODto>>>
      getExpiredMedicineFormByStudentId288({
    required String studentId,
    int? page,
    int? pageSize,
  }) async {
    final endpoint = '/MedicineForm/students/$studentId/expiredMedicines';
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
              MedicineFormFullVODto.fromJson((item as Map<String, dynamic>)))
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

  /// put: /MedicineForm/{medicineFormId}
  Future<Either<ApiError, void>> updateMedicineForm289(
    MedicineFormUpdateDto body, {
    required int medicineFormId,
  }) async {
    final endpoint = '/MedicineForm/$medicineFormId';
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

  /// post: /MedicineForm/{id}/cancel
  Future<Either<ApiError, void>> cancelMedicineForm290(
      {required int id}) async {
    final endpoint = '/MedicineForm/$id/cancel';
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

  /// post: /MedicineForm/{id}/cancel/{userid}
  Future<Either<ApiError, void>> cancelMedicineForm291({
    required int id,
    required String userid,
  }) async {
    final endpoint = '/MedicineForm/$id/cancel/$userid';
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

  /// post: /MedicineForm/{id}/reject
  Future<Either<ApiError, void>> rejectMedicineForm292(
    MedicineFormRejectDto body, {
    required int id,
  }) async {
    final endpoint = '/MedicineForm/$id/reject';
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

  /// post: /MedicineForm/{id}/reject/{userid}
  Future<Either<ApiError, void>> rejectMedicineForm293(
    MedicineFormRejectDto body, {
    required int id,
    required String userid,
  }) async {
    final endpoint = '/MedicineForm/$id/reject/$userid';
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

  /// post: /MedicineForm/{medicineFormId}/acknowledge
  Future<Either<ApiError, void>> acknowledgeMedicineForm294(
      {required int medicineFormId}) async {
    final endpoint = '/MedicineForm/$medicineFormId/acknowledge';
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

  /// post: /MedicineForm/{medicineFormId}/acknowledge/{userId}
  Future<Either<ApiError, void>> acknowledgeMedicineForm295({
    required int medicineFormId,
    required String userId,
  }) async {
    final endpoint = '/MedicineForm/$medicineFormId/acknowledge/$userId';
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

  /// post: /MedicineForm/{id}/acknowledge/cancel
  Future<Either<ApiError, void>> acknowledgeCancelMedicineForm296(
      {required int id}) async {
    final endpoint = '/MedicineForm/$id/acknowledge/cancel';
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

  /// post: /MedicineForm/{id}/acknowledge/cancel/{userid}
  Future<Either<ApiError, void>> acknowledgeCancelMedicineForm297({
    required int id,
    required String userid,
  }) async {
    final endpoint = '/MedicineForm/$id/acknowledge/cancel/$userid';
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

  /// get: /Menu/Action/GetMenus
  Future<Either<ApiError, void>> getMenus298() async {
    final endpoint = '/Menu/Action/GetMenus';
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

  /// post: /OTP
  Future<Either<ApiError, void>> generateAndSendOTP299(
      OTPParameterDto body) async {
    final endpoint = '/OTP';
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

  /// post: /OTP/Action/Validate
  Future<Either<ApiError, void>> validateOtp300(
      OTPValidateParameterDto body) async {
    final endpoint = '/OTP/Action/Validate';
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

  /// get: /Parents/{id}/Students
  Future<Either<ApiError, List<StudentWithConfigVODto>>>
      getStudentDetailByParentId301({required String id}) async {
    final endpoint = '/Parents/$id/Students';
    try {
      final response = await _dio.get(endpoint);
      final result = (response.data as List<dynamic>);
      final mappedResult = result
          .map((item) =>
              StudentWithConfigVODto.fromJson((item as Map<String, dynamic>)))
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

  /// get: /Posts/{id}
  Future<Either<ApiError, void>> get302({required String id}) async {
    final endpoint = '/Posts/$id';
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

  /// get: /Posts/Teacher/{id}
  Future<Either<ApiError, void>> getTeacher303({
    String? schoolId,
    String? academicYearId,
    String? studentId,
    String? postType,
    String? status,
    String? courseId,
    String? classId,
    String? teacherId,
    String? startDateYyyMMdd,
    String? endDateYyyMMdd,
    String? searchString,
    String? getMarkedDays,
    String? teacherIdFilter,
    bool? isFilterSearch,
    int? pageNumber,
    int? pageSize,
    required String id,
  }) async {
    final endpoint = '/Posts/Teacher/$id';
    final queryParams = <String, dynamic>{};
    try {
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (postType != null) queryParams['PostType'] = postType;
      if (status != null) queryParams['Status'] = status;
      if (courseId != null) queryParams['CourseId'] = courseId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (startDateYyyMMdd != null)
        queryParams['StartDate_yyyMMdd'] = startDateYyyMMdd;
      if (endDateYyyMMdd != null)
        queryParams['EndDate_yyyMMdd'] = endDateYyyMMdd;
      if (searchString != null) queryParams['SearchString'] = searchString;
      if (getMarkedDays != null) queryParams['GetMarkedDays'] = getMarkedDays;
      if (teacherIdFilter != null)
        queryParams['TeacherIdFilter'] = teacherIdFilter;
      if (isFilterSearch != null)
        queryParams['IsFilterSearch'] = isFilterSearch;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Posts/{id}/Files
  Future<Either<ApiError, void>> getFiles304({required String id}) async {
    final endpoint = '/Posts/$id/Files';
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

  /// post: /Posts/{id}/Files
  Future<Either<ApiError, void>> fileUpdateSequence305(
    List<String> body, {
    required String id,
  }) async {
    final endpoint = '/Posts/$id/Files';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body,
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

  /// get: /Posts
  Future<Either<ApiError, void>> get306({
    String? schoolId,
    String? academicYearId,
    String? studentId,
    String? postType,
    String? status,
    String? courseId,
    String? classId,
    String? teacherId,
    String? startDateYyyMMdd,
    String? endDateYyyMMdd,
    String? searchString,
    String? getMarkedDays,
    String? teacherIdFilter,
    bool? isFilterSearch,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Posts';
    final queryParams = <String, dynamic>{};
    try {
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (postType != null) queryParams['PostType'] = postType;
      if (status != null) queryParams['Status'] = status;
      if (courseId != null) queryParams['CourseId'] = courseId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (startDateYyyMMdd != null)
        queryParams['StartDate_yyyMMdd'] = startDateYyyMMdd;
      if (endDateYyyMMdd != null)
        queryParams['EndDate_yyyMMdd'] = endDateYyyMMdd;
      if (searchString != null) queryParams['SearchString'] = searchString;
      if (getMarkedDays != null) queryParams['GetMarkedDays'] = getMarkedDays;
      if (teacherIdFilter != null)
        queryParams['TeacherIdFilter'] = teacherIdFilter;
      if (isFilterSearch != null)
        queryParams['IsFilterSearch'] = isFilterSearch;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// put: /Posts
  Future<Either<ApiError, void>> updatePost308(PostDto body) async {
    final endpoint = '/Posts';
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

  /// post: /Posts
  Future<Either<ApiError, void>> createPost307(PostDto body) async {
    final endpoint = '/Posts';
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

  /// post: /Posts/Search
  Future<Either<ApiError, void>> search309(
      PostQueryStringParametersDto body) async {
    final endpoint = '/Posts/Search';
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

  /// get: /Posts/Student/{studentId}
  Future<Either<ApiError, void>> parentGetStudentPosts310({
    required String studentId,
    String? postType,
    String? startDateYyyMMdd,
    String? endDateYyyMMdd,
    String? searchString,
    String? getMarkedDays,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Posts/Student/$studentId';
    final queryParams = <String, dynamic>{};
    try {
      if (postType != null) queryParams['PostType'] = postType;
      if (startDateYyyMMdd != null)
        queryParams['StartDate_yyyMMdd'] = startDateYyyMMdd;
      if (endDateYyyMMdd != null)
        queryParams['EndDate_yyyMMdd'] = endDateYyyMMdd;
      if (searchString != null) queryParams['SearchString'] = searchString;
      if (getMarkedDays != null) queryParams['GetMarkedDays'] = getMarkedDays;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// post: /Posts/Actions/GeneratePdf
  Future<Either<ApiError, void>> generatePdf311(
      PostToPDFParametersDto body) async {
    final endpoint = '/Posts/Actions/GeneratePdf';
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

  /// get: /Posts/Actions/GeneratePdf/{PostId}/{StudentId}
  Future<Either<ApiError, void>> generatePdfById312({
    required String postId,
    required String studentId,
  }) async {
    final endpoint = '/Posts/Actions/GeneratePdf/$postId/$studentId';
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

  /// get: /Posts/v2/Actions/GeneratePdf/{postId}
  Future<Either<ApiError, void>> generatePdfByIdAsync2313(
      {required String postId}) async {
    final endpoint = '/Posts/v2/Actions/GeneratePdf/$postId';
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

  /// put: /Posts/{id}/Files/{filename}/{SchoolId}
  Future<Either<ApiError, void>> fileUpload314({
    required String id,
    required String filename,
    required String schoolId,
  }) async {
    final endpoint = '/Posts/$id/Files/$filename/$schoolId';
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

  /// delete: /Posts/{id}/Files/{fileId}
  Future<Either<ApiError, void>> deleteFile315({
    required String fileId,
    required String id,
  }) async {
    final endpoint = '/Posts/$id/Files/$fileId';
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

  /// get: /Posts/{id}/Comments
  Future<Either<ApiError, void>> getComments316({required String id}) async {
    final endpoint = '/Posts/$id/Comments';
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

  /// post: /Posts/{id}/Comments
  Future<Either<ApiError, void>> updateComments317(
    PostCommentDto body, {
    required String id,
  }) async {
    final endpoint = '/Posts/$id/Comments';
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

  /// post: /Posts/Comments
  Future<Either<ApiError, void>> createComments318(PostCommentDto body) async {
    final endpoint = '/Posts/Comments';
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

  /// get: /Posts/{id}/Views
  Future<Either<ApiError, void>> getViews319({required String id}) async {
    final endpoint = '/Posts/$id/Views';
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

  /// post: /Posts/{id}/Views/{ParentAccount}
  Future<Either<ApiError, void>> insertViewsViews320({
    required String id,
    required String parentAccount,
  }) async {
    final endpoint = '/Posts/$id/Views/$parentAccount';
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

  /// get: /Posts/{SchoolId}/TeacherFilter
  Future<Either<ApiError, void>> getTeachersForFilter321(
      {required String schoolId}) async {
    final endpoint = '/Posts/$schoolId/TeacherFilter';
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

  /// get: /Programmes/{id}
  Future<Either<ApiError, void>> getById322({required String id}) async {
    final endpoint = '/Programmes/$id';
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

  /// get: /Programmes/{id}/courses
  Future<Either<ApiError, void>> getCoursesByProgrammeId323({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Programmes/$id/courses';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Reaction/{id}/GetReaction
  Future<Either<ApiError, void>> getLikes324({required String id}) async {
    final endpoint = '/Reaction/$id/GetReaction';
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

  /// post: /Reaction/CreateReaction
  Future<Either<ApiError, void>> createLikes325(PostReactionDto body) async {
    final endpoint = '/Reaction/CreateReaction';
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

  /// post: /Reaction/UpdateReaction
  Future<Either<ApiError, void>> updateLikes326(PostReactionDto body) async {
    final endpoint = '/Reaction/UpdateReaction';
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

  /// post: /Reaction/DeleteReaction
  Future<Either<ApiError, void>> deleteLikes327(PostReactionDto body) async {
    final endpoint = '/Reaction/DeleteReaction';
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

  /// get: /Schools
  Future<Either<ApiError, void>> getAllWithDetails328() async {
    final endpoint = '/Schools';
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

  /// get: /Schools/{id}
  Future<Either<ApiError, void>> getById329({required String id}) async {
    final endpoint = '/Schools/$id';
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

  /// get: /Schools/{id}/programmes
  Future<Either<ApiError, void>> getProgrammesBySchoolId330({
    required String id,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Schools/$id/programmes';
    final queryParams = <String, dynamic>{};
    try {
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Schools/{id}/Classes
  Future<Either<ApiError, void>> getClassesBySchoolId331({
    required String id,
    bool? showActiveOnly,
    String? academicYearId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Schools/$id/Classes';
    final queryParams = <String, dynamic>{};
    try {
      if (showActiveOnly != null)
        queryParams['ShowActiveOnly'] = showActiveOnly;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Schools/{id}/MedicineConfig
  Future<Either<ApiError, MedicineFormSchoolConfigVODto>>
      getMedicineConfigBySchoolId332({required String id}) async {
    final endpoint = '/Schools/$id/MedicineConfig';
    try {
      final response = await _dio.get(endpoint);
      final result = MedicineFormSchoolConfigVODto.fromJson(response.data);
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

  /// post: /Settings
  Future<Either<ApiError, void>> editSetting333(UserConfigDto body) async {
    final endpoint = '/Settings';
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

  /// get: /Students/{id}
  Future<Either<ApiError, void>> get334({required String id}) async {
    final endpoint = '/Students/$id';
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

  /// get: /Students/QR/{studentNo}
  Future<Either<ApiError, void>> getByStudentNumber335(
      {required String studentNo}) async {
    final endpoint = '/Students/QR/$studentNo';
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

  /// get: /Students/{id}/Posts
  Future<Either<ApiError, void>> getPostsByStudentId336({
    required String id,
    String? schoolId,
    String? academicYearId,
    String? studentId,
    String? postType,
    String? status,
    String? courseId,
    String? classId,
    String? teacherId,
    String? startDateYyyMMdd,
    String? endDateYyyMMdd,
    String? searchString,
    String? getMarkedDays,
    String? teacherIdFilter,
    bool? isFilterSearch,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Students/$id/Posts';
    final queryParams = <String, dynamic>{};
    try {
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (studentId != null) queryParams['StudentId'] = studentId;
      if (postType != null) queryParams['PostType'] = postType;
      if (status != null) queryParams['Status'] = status;
      if (courseId != null) queryParams['CourseId'] = courseId;
      if (classId != null) queryParams['ClassId'] = classId;
      if (teacherId != null) queryParams['TeacherId'] = teacherId;
      if (startDateYyyMMdd != null)
        queryParams['StartDate_yyyMMdd'] = startDateYyyMMdd;
      if (endDateYyyMMdd != null)
        queryParams['EndDate_yyyMMdd'] = endDateYyyMMdd;
      if (searchString != null) queryParams['SearchString'] = searchString;
      if (getMarkedDays != null) queryParams['GetMarkedDays'] = getMarkedDays;
      if (teacherIdFilter != null)
        queryParams['TeacherIdFilter'] = teacherIdFilter;
      if (isFilterSearch != null)
        queryParams['IsFilterSearch'] = isFilterSearch;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// post: /Students/{id}/attendances/{yyyymmdd}
  Future<Either<ApiError, void>> markAttendance337(
    MarkAttendanceParameterDto body, {
    required String id,
    required String yyyymmdd,
  }) async {
    final endpoint = '/Students/$id/attendances/$yyyymmdd';
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

  /// post: /Students/{id}/CheckInOutsWithPhoto/{dateTimeString}
  Future<Either<ApiError, void>> markCheckInOutWithPhoto338(
    MarkCheckInOutParameterDto body, {
    required String id,
    required String dateTimeString,
  }) async {
    final endpoint = '/Students/$id/CheckInOutsWithPhoto/$dateTimeString';
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

  /// get: /Students/{id}/{academicYear}/goals
  Future<Either<ApiError, void>> getGoalssByStudentId339({
    required String id,
    required String academicYear,
  }) async {
    final endpoint = '/Students/$id/$academicYear/goals';
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

  /// put: /Students/{id}/CheckInsOuts/{checkInsOutsId}/Files/{filename}
  Future<Either<ApiError, void>> fileUpload340({
    required String id,
    required String checkInsOutsId,
    required String filename,
  }) async {
    final endpoint =
        '/Students/$id/CheckInsOuts/$checkInsOutsId/Files/$filename';
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

  /// get: /Students/AuthorisedPickUp/{id}
  Future<Either<ApiError, void>> getAuthorisedPickUp341(
      {required String id}) async {
    final endpoint = '/Students/AuthorisedPickUp/$id';
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

  /// put: /Students/{id}/AuthorisedPickUp/{AuthPickID}/Files/{filename}
  Future<Either<ApiError, void>> fileUploadAuthPickUp342({
    required String id,
    required String authPickID,
    required String filename,
  }) async {
    final endpoint =
        '/Students/$id/AuthorisedPickUp/$authPickID/Files/$filename';
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

  /// post: /Students/{id}/AuthorisedPickUp
  Future<Either<ApiError, void>> createAuthorisedPickUp343(
    AuthorisedPickUpDto body, {
    required String id,
  }) async {
    final endpoint = '/Students/$id/AuthorisedPickUp';
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

  /// post: /Students/{id}/AuthorisedPickUp/{ConId}
  Future<Either<ApiError, void>> createAuthorisedPickUp344(
    AuthorisedPickUpDto body, {
    required String id,
    required String conId,
  }) async {
    final endpoint = '/Students/$id/AuthorisedPickUp/$conId';
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

  /// delete: /Students/{id}/DeleteAuthorisedPickUp/{authPickupId}
  Future<Either<ApiError, void>> deleteAuthorisedPickUpMobile345({
    required String id,
    required String authPickupId,
  }) async {
    final endpoint = '/Students/$id/DeleteAuthorisedPickUp/$authPickupId';
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

  /// delete: /Students/{id}/AuthorisedPickUp/{authPickupId}
  Future<Either<ApiError, void>> deleteAuthorisedPickUp346({
    required String id,
    required String authPickupId,
  }) async {
    final endpoint = '/Students/$id/AuthorisedPickUp/$authPickupId';
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

  /// delete: /Students/{id}/AuthorisedPickUp/{authPickupId}/{ConId}
  Future<Either<ApiError, void>> deleteAuthorisedPickUp347({
    required String id,
    required String authPickupId,
    required String conId,
  }) async {
    final endpoint = '/Students/$id/AuthorisedPickUp/$authPickupId/$conId';
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

  /// get: /Students/{id}/Teachers
  Future<Either<ApiError, void>> getStudentclass348(
      {required String id}) async {
    final endpoint = '/Students/$id/Teachers';
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

  /// get: /Students/TermlyReport/{id}
  Future<Either<ApiError, void>> getStudenttermlyreport349(
      {required String id}) async {
    final endpoint = '/Students/TermlyReport/$id';
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

  /// post: /Students/{StudentId}/Statistics
  Future<Either<ApiError, void>> updateStudentStatics350(
    List<StudentStatisticDto> body, {
    required String studentId,
  }) async {
    final endpoint = '/Students/$studentId/Statistics';
    try {
      final _ = await _dio.post(
        endpoint,
        data: body,
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

  /// get: /Students/{StudentId}/Statistics/AcademicYear/{AcademiYearID}
  Future<Either<ApiError, void>> getStudentStatistics351({
    required String studentId,
    required String academiYearID,
  }) async {
    final endpoint =
        '/Students/$studentId/Statistics/AcademicYear/$academiYearID';
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

  /// get: /Students/{StudentId}/Statistics/GetAcademicYears
  Future<Either<ApiError, void>> getStudentAcademicYears352(
      {required String studentId}) async {
    final endpoint = '/Students/$studentId/Statistics/GetAcademicYears';
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

  /// put: /Students/{id}/MedicineDetails/Files/{filename}
  Future<Either<ApiError, void>> fileUploadMedicineDetails353({
    required String id,
    required String filename,
  }) async {
    final endpoint = '/Students/$id/MedicineDetails/Files/$filename';
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

  /// post: /v2/Students/{id}/CheckInOuts/{dateTimeString}
  Future<Either<ApiError, void>> markCheckInOut354(
    MarkCheckInOutParameterDto body, {
    required String id,
    required String dateTimeString,
  }) async {
    final endpoint = '/v2/Students/$id/CheckInOuts/$dateTimeString';
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

  /// post: /v2/Students/{id}/attendances/{yyyymmdd}
  Future<Either<ApiError, void>> markAttendance355(
    MarkAttendanceParameterDto body, {
    required String id,
    required String yyyymmdd,
  }) async {
    final endpoint = '/v2/Students/$id/attendances/$yyyymmdd';
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

  /// post: /v2/Students/{id}/CheckInOutsWithPhoto/{dateTimeString}
  Future<Either<ApiError, void>> markCheckInOutWithPhoto356(
    MarkCheckInOutParameterDto body, {
    required String id,
    required String dateTimeString,
  }) async {
    final endpoint = '/v2/Students/$id/CheckInOutsWithPhoto/$dateTimeString';
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

  /// post: /v2/Students/{id}/TemperatureChecks/{dateTimeString}
  Future<Either<ApiError, void>> markTemperatureCheck357(
    MarkTemperatureCheckParameterDto body, {
    required String id,
    required String dateTimeString,
  }) async {
    final endpoint = '/v2/Students/$id/TemperatureChecks/$dateTimeString';
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

  /// post: /v2/Students/{id}/DailyRoutines
  Future<Either<ApiError, void>> markDailyRoutine358(
    MarkDailyRoutineParameterDto body, {
    required String id,
  }) async {
    final endpoint = '/v2/Students/$id/DailyRoutines';
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

  /// get: /Subjects/Attendances/{componentId}/{academicYearId}/{yyyymmdd}
  Future<Either<ApiError, void>> getAttendance359({
    required int componentId,
    required String academicYearId,
    required String yyyymmdd,
  }) async {
    final endpoint =
        '/Subjects/Attendances/$componentId/$academicYearId/$yyyymmdd';
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

  /// post: /Subjects/Attendances
  Future<Either<ApiError, void>> markAttendance360(
      CourseComponentAttendanceParameterDto body) async {
    final endpoint = '/Subjects/Attendances';
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

  /// get: /Teachers/{id}
  Future<Either<ApiError, void>> get361({required String id}) async {
    final endpoint = '/Teachers/$id';
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

  /// get: /Teachers/{id}/Classes
  Future<Either<ApiError, void>> getClassesByTeacherId362({
    required String id,
    bool? isActive,
    bool? overrideIsAciveFilter,
    String? academicYearId,
    String? schoolId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Teachers/$id/Classes';
    final queryParams = <String, dynamic>{};
    try {
      if (isActive != null) queryParams['IsActive'] = isActive;
      if (overrideIsAciveFilter != null)
        queryParams['OverrideIsAciveFilter'] = overrideIsAciveFilter;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Teachers/{id}/ManagedClasses
  Future<Either<ApiError, void>> getManagedClassesByTeacherIdasync363({
    required String id,
    bool? isActive,
    bool? overrideIsAciveFilter,
    String? academicYearId,
    String? schoolId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Teachers/$id/ManagedClasses';
    final queryParams = <String, dynamic>{};
    try {
      if (isActive != null) queryParams['IsActive'] = isActive;
      if (overrideIsAciveFilter != null)
        queryParams['OverrideIsAciveFilter'] = overrideIsAciveFilter;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Teachers/{id}/ManagedClassesWithStudents/{AcademicYearID}/{SchoolId}
  Future<Either<ApiError, void>>
      getManagedClassesByTeacherIdWithStudentsasync364({
    required String id,
    required String academicYearId,
    required String schoolId,
    bool? isActive,
    bool? overrideIsAciveFilter,
    String? academicYearIdQuery,
    String? schoolIdQuery,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint =
        '/Teachers/$id/ManagedClassesWithStudents/{AcademicYearID}/$schoolIdQuery';
    final queryParams = <String, dynamic>{};
    try {
      if (isActive != null) queryParams['IsActive'] = isActive;
      if (overrideIsAciveFilter != null)
        queryParams['OverrideIsAciveFilter'] = overrideIsAciveFilter;
      if (academicYearIdQuery != null)
        queryParams['AcademicYearId'] = academicYearIdQuery;
      if (schoolIdQuery != null) queryParams['SchoolId'] = schoolIdQuery;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Teachers/{id}/Courses
  Future<Either<ApiError, void>> getCoursesByTeacherId365({
    required String id,
    bool? isActive,
    bool? overrideIsAciveFilter,
    String? academicYearId,
    String? schoolId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final endpoint = '/Teachers/$id/Courses';
    final queryParams = <String, dynamic>{};
    try {
      if (isActive != null) queryParams['IsActive'] = isActive;
      if (overrideIsAciveFilter != null)
        queryParams['OverrideIsAciveFilter'] = overrideIsAciveFilter;
      if (academicYearId != null)
        queryParams['AcademicYearId'] = academicYearId;
      if (schoolId != null) queryParams['SchoolId'] = schoolId;
      if (pageNumber != null) queryParams['PageNumber'] = pageNumber;
      if (pageSize != null) queryParams['PageSize'] = pageSize;

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

  /// get: /Teachers/{id}/CoursesBySchool/{schoolId}
  Future<Either<ApiError, void>> getCoursesByTeacherIdSchoolId366(
    TeacherServiceQueryParameterDto body, {
    required String id,
    required String schoolId,
  }) async {
    final endpoint = '/Teachers/$id/CoursesBySchool/$schoolId';
    try {
      final _ = await _dio.get(
        endpoint,
        data: body.toJson(),
      );
      return const Right(null);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
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

  /// post: /TemperatureChecks
  Future<Either<ApiError, void>> logTemperatureCheck367(
      TemperatureCheckDto body) async {
    final endpoint = '/TemperatureChecks';
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

  /// get: /v2/TemperatureChecks
  Future<Either<ApiError, TemperatureCheckDto>> getTemperatureById369(
      {String? id}) async {
    final endpoint = '/v2/TemperatureChecks';
    final queryParams = <String, dynamic>{};
    try {
      if (id != null) queryParams['id'] = id;

      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );
      final result = TemperatureCheckDto.fromJson(response.data);
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

  /// post: /v2/TemperatureChecks
  Future<Either<ApiError, TemperatureCheckDto>> logTemperatureCheck368(
      TemperatureCheckParameterDto body) async {
    final endpoint = '/v2/TemperatureChecks';
    try {
      final response = await _dio.post(
        endpoint,
        data: body.toJson(),
      );
      final result = TemperatureCheckDto.fromJson(response.data);
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

  /// get: /v2/TemperatureChecks/{studentid}/{logDate}
  Future<Either<ApiError, TemperatureCheckDto>> getTemperature370({
    required String studentId,
    required String logDate,
  }) async {
    final endpoint = '/v2/TemperatureChecks/{studentid}/$logDate';
    try {
      final response = await _dio.get(endpoint);
      final result = TemperatureCheckDto.fromJson(response.data);
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

  /// post: /Users/Action/ResetPassword
  Future<Either<ApiError, void>> resetPassword371(
      ResetPasswordParameterDto body) async {
    final endpoint = '/Users/Action/ResetPassword';
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

  /// post: /Users/{userId}/Password
  Future<Either<ApiError, void>> changePassword372(
    ChangePasswordParameterDto body, {
    required String userId,
  }) async {
    final endpoint = '/Users/$userId/Password';
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

  /// post: /Users/Action/ResetPasswordV2
  Future<Either<ApiError, void>> resetPasswordV2373(
      ResetPasswordParameterDto body) async {
    final endpoint = '/Users/Action/ResetPasswordV2';
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

  /// post: /Users/{userId}/PasswordV2
  Future<Either<ApiError, void>> changePasswordV2374(
    ChangePasswordParameterDto body, {
    required String userId,
  }) async {
    final endpoint = '/Users/$userId/PasswordV2';
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

  /// get: /Users/{userId}
  Future<Either<ApiError, void>> getUserById375(
      {required String userId}) async {
    final endpoint = '/Users/$userId';
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

  String _getFileName(String filePath) {
    // Handle both forward and backward slashes for cross-platform compatibility
    final parts = filePath.replaceAll(r"\", "/").split("/");
    return parts.isNotEmpty ? parts.last : 'file';
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
