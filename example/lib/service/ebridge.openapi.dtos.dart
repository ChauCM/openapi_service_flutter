// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ebridge.openapi.dtos.freezed.dart';
part 'ebridge.openapi.dtos.g.dart';

@freezed
sealed class AcademicYearApiDto with _$AcademicYearApiDto {
  factory AcademicYearApiDto({
    @JsonKey(name: 'academicYearId') int? academicYearId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
  }) = _AcademicYearApiDto;

  factory AcademicYearApiDto.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearApiDtoFromJson(json);
}

@freezed
sealed class AccountApiDto with _$AccountApiDto {
  factory AccountApiDto({
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'contacts') List<ContactApiDto>? contacts,
    @JsonKey(name: 'identifierType') int? identifierType,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _AccountApiDto;

  factory AccountApiDto.fromJson(Map<String, dynamic> json) =>
      _$AccountApiDtoFromJson(json);
}

@freezed
sealed class AccountDeviceSessionApiDto with _$AccountDeviceSessionApiDto {
  factory AccountDeviceSessionApiDto({
    @JsonKey(name: 'accountDeviceSessionId')
    required int accountDeviceSessionId,
    @JsonKey(name: 'accountId') required int accountId,
    @JsonKey(name: 'pushNotificationToken') String? pushNotificationToken,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'os') String? os,
    @JsonKey(name: 'osVersion') String? osVersion,
    @JsonKey(name: 'deviceId') required String deviceId,
    @JsonKey(name: 'model') String? model,
    @JsonKey(name: 'manufacturer') String? manufacturer,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _AccountDeviceSessionApiDto;

  factory AccountDeviceSessionApiDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDeviceSessionApiDtoFromJson(json);
}

@freezed
sealed class AccountDeviceSessionApiPutDto
    with _$AccountDeviceSessionApiPutDto {
  factory AccountDeviceSessionApiPutDto({
    @JsonKey(name: 'pushNotificationToken') String? pushNotificationToken,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'os') String? os,
    @JsonKey(name: 'osVersion') String? osVersion,
    @JsonKey(name: 'model') String? model,
    @JsonKey(name: 'manufacturer') String? manufacturer,
  }) = _AccountDeviceSessionApiPutDto;

  factory AccountDeviceSessionApiPutDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDeviceSessionApiPutDtoFromJson(json);
}

@freezed
sealed class AccountImageApiDto with _$AccountImageApiDto {
  factory AccountImageApiDto(
      {@JsonKey(name: 'imageUrlResult')
      ImageUrlResultDto? imageUrlResult}) = _AccountImageApiDto;

  factory AccountImageApiDto.fromJson(Map<String, dynamic> json) =>
      _$AccountImageApiDtoFromJson(json);
}

@freezed
sealed class AddressApiDto with _$AddressApiDto {
  factory AddressApiDto({
    @JsonKey(name: 'addressId') int? addressId,
    @JsonKey(name: 'address1') String? address1,
    @JsonKey(name: 'address2') String? address2,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'zipCode') String? zipCode,
    @JsonKey(name: 'countryId') int? countryId,
    @JsonKey(name: 'country') CountryApiDto? country,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _AddressApiDto;

  factory AddressApiDto.fromJson(Map<String, dynamic> json) =>
      _$AddressApiDtoFromJson(json);
}

@freezed
sealed class AttendanceRecordDTODto with _$AttendanceRecordDTODto {
  factory AttendanceRecordDTODto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'isPresent') bool? isPresent,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'isWeekend') bool? isWeekend,
    @JsonKey(name: 'isClassClosure') bool? isClassClosure,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'createdBy') String? createdBy,
    @JsonKey(name: 'updatedBy') String? updatedBy,
  }) = _AttendanceRecordDTODto;

  factory AttendanceRecordDTODto.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordDTODtoFromJson(json);
}

@freezed
sealed class AuthorisedPersonDeactivationReasonApiDto
    with _$AuthorisedPersonDeactivationReasonApiDto {
  factory AuthorisedPersonDeactivationReasonApiDto({
    @JsonKey(name: 'authorisedPersonDeactivationReasonId')
    int? authorisedPersonDeactivationReasonId,
    @JsonKey(name: 'authorisedPersonId') int? authorisedPersonId,
    @JsonKey(name: 'activated') bool? activated,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _AuthorisedPersonDeactivationReasonApiDto;

  factory AuthorisedPersonDeactivationReasonApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$AuthorisedPersonDeactivationReasonApiDtoFromJson(json);
}

@freezed
sealed class AuthorisedPersonReasonApiDtoRequestDto
    with _$AuthorisedPersonReasonApiDtoRequestDto {
  factory AuthorisedPersonReasonApiDtoRequestDto(
          {@JsonKey(name: 'reason') required String reason}) =
      _AuthorisedPersonReasonApiDtoRequestDto;

  factory AuthorisedPersonReasonApiDtoRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$AuthorisedPersonReasonApiDtoRequestDtoFromJson(json);
}

@freezed
sealed class BranchApiDto with _$BranchApiDto {
  factory BranchApiDto({
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
    @JsonKey(name: 'companyId') int? companyId,
    @JsonKey(name: 'company') CompanyApiDto? company,
    @JsonKey(name: 'defaultCurrencyId') int? defaultCurrencyId,
    @JsonKey(name: 'govtRegName') String? govtRegName,
    @JsonKey(name: 'govtRegNo') String? govtRegNo,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _BranchApiDto;

  factory BranchApiDto.fromJson(Map<String, dynamic> json) =>
      _$BranchApiDtoFromJson(json);
}

@freezed
sealed class CalendarItemApiDto with _$CalendarItemApiDto {
  factory CalendarItemApiDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'startTime') DateTime? startTime,
    @JsonKey(name: 'endTime') DateTime? endTime,
    @JsonKey(name: 'isAllDay') bool? isAllDay,
    @JsonKey(name: 'calendarItemType') int? calendarItemType,
    @JsonKey(name: 'recurrenceRule') String? recurrenceRule,
    @JsonKey(name: 'recurrenceException') String? recurrenceException,
    @JsonKey(name: 'recurrenceId') int? recurrenceId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'academicYearId') int? academicYearId,
    @JsonKey(name: 'academicTermId') int? academicTermId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _CalendarItemApiDto;

  factory CalendarItemApiDto.fromJson(Map<String, dynamic> json) =>
      _$CalendarItemApiDtoFromJson(json);
}

@freezed
sealed class ClassApiDto with _$ClassApiDto {
  factory ClassApiDto({
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'levelId') int? levelId,
    @JsonKey(name: 'level') LevelApiDto? level,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'maxCapacity') int? maxCapacity,
    @JsonKey(name: 'mainTeacherId') int? mainTeacherId,
    @JsonKey(name: 'mainTeacher') TeacherApiDto? mainTeacher,
    @JsonKey(name: 'academicYearId') int? academicYearId,
    @JsonKey(name: 'academicYear') AcademicYearApiDto? academicYear,
    @JsonKey(name: 'classSubjects') List<ClassSubjectApiDto>? classSubjects,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ClassApiDto;

  factory ClassApiDto.fromJson(Map<String, dynamic> json) =>
      _$ClassApiDtoFromJson(json);
}

@freezed
sealed class ClassAttendanceDTODto with _$ClassAttendanceDTODto {
  factory ClassAttendanceDTODto({
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'students') List<StudentAttendanceDTODto>? students,
    @JsonKey(name: 'sumPresent') int? sumPresent,
    @JsonKey(name: 'sumSchoolDays') int? sumSchoolDays,
    @JsonKey(name: 'classAttendanceRate') int? classAttendanceRate,
  }) = _ClassAttendanceDTODto;

  factory ClassAttendanceDTODto.fromJson(Map<String, dynamic> json) =>
      _$ClassAttendanceDTODtoFromJson(json);
}

@freezed
sealed class ClassRefApiDto with _$ClassRefApiDto {
  factory ClassRefApiDto({
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'name') String? name,
  }) = _ClassRefApiDto;

  factory ClassRefApiDto.fromJson(Map<String, dynamic> json) =>
      _$ClassRefApiDtoFromJson(json);
}

@freezed
sealed class ClassSubjectApiDto with _$ClassSubjectApiDto {
  factory ClassSubjectApiDto({
    @JsonKey(name: 'classSubjectId') int? classSubjectId,
    @JsonKey(name: 'subjectId') int? subjectId,
    @JsonKey(name: 'subject') SubjectApiDto? subject,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'class') ClassRefApiDto? classField,
    @JsonKey(name: 'teacherId') int? teacherId,
    @JsonKey(name: 'teacher') TeacherApiDto? teacher,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ClassSubjectApiDto;

  factory ClassSubjectApiDto.fromJson(Map<String, dynamic> json) =>
      _$ClassSubjectApiDtoFromJson(json);
}

@freezed
sealed class CompanyApiDto with _$CompanyApiDto {
  factory CompanyApiDto({
    @JsonKey(name: 'companyId') int? companyId,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _CompanyApiDto;

  factory CompanyApiDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyApiDtoFromJson(json);
}

@freezed
sealed class ContactApiDto with _$ContactApiDto {
  factory ContactApiDto({
    @JsonKey(name: 'contactId') int? contactId,
    @JsonKey(name: 'contactType') int? contactType,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'addressId') int? addressId,
    @JsonKey(name: 'address') AddressApiDto? address,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ContactApiDto;

  factory ContactApiDto.fromJson(Map<String, dynamic> json) =>
      _$ContactApiDtoFromJson(json);
}

@freezed
sealed class ContentApiDto with _$ContentApiDto {
  factory ContentApiDto({
    @JsonKey(name: 'studentContentId') int? studentContentId,
    @JsonKey(name: 'students') List<int>? students,
    @JsonKey(name: 'classes') List<int>? classes,
    @JsonKey(name: 'levels') List<int>? levels,
    @JsonKey(name: 'learningDomains') List<int>? learningDomains,
    @JsonKey(name: 'contentTitle') String? contentTitle,
    @JsonKey(name: 'contentBody') String? contentBody,
    @JsonKey(name: 'activityDateTime') DateTime? activityDateTime,
    @JsonKey(name: 'contentType') int? contentType,
    @JsonKey(name: 'publishDate') DateTime? publishDate,
    @JsonKey(name: 'includeFutureEnrolment') bool? includeFutureEnrolment,
    @JsonKey(name: 'attachmentFolderClassId') int? attachmentFolderClassId,
    @JsonKey(name: 'attachmentFolder') String? attachmentFolder,
    @JsonKey(name: 'defaultUrl') String? defaultUrl,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ContentApiDto;

  factory ContentApiDto.fromJson(Map<String, dynamic> json) =>
      _$ContentApiDtoFromJson(json);
}

@freezed
sealed class ConversationApiDto with _$ConversationApiDto {
  factory ConversationApiDto({
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'topic') required String topic,
    @JsonKey(name: 'isClosed') bool? isClosed,
    @JsonKey(name: 'dateClosed') DateTime? dateClosed,
    @JsonKey(name: 'initiatorAccountId') int? initiatorAccountId,
    @JsonKey(name: 'recipientAccountId') int? recipientAccountId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ConversationApiDto;

  factory ConversationApiDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationApiDtoFromJson(json);
}

@freezed
sealed class ConversationCloseDto with _$ConversationCloseDto {
  factory ConversationCloseDto(
          {@JsonKey(name: 'dateClosed') DateTime? dateClosed}) =
      _ConversationCloseDto;

  factory ConversationCloseDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationCloseDtoFromJson(json);
}

@freezed
sealed class ConversationMessageApiDto with _$ConversationMessageApiDto {
  factory ConversationMessageApiDto({
    @JsonKey(name: 'conversationMessageId') int? conversationMessageId,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'senderAccountId') int? senderAccountId,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ConversationMessageApiDto;

  factory ConversationMessageApiDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessageApiDtoFromJson(json);
}

@freezed
sealed class ConversationMessageMutationDto
    with _$ConversationMessageMutationDto {
  factory ConversationMessageMutationDto({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
  }) = _ConversationMessageMutationDto;

  factory ConversationMessageMutationDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessageMutationDtoFromJson(json);
}

@freezed
sealed class ConversationMessageReadStatusDto
    with _$ConversationMessageReadStatusDto {
  factory ConversationMessageReadStatusDto(
          {@JsonKey(name: 'isRead') bool? isRead}) =
      _ConversationMessageReadStatusDto;

  factory ConversationMessageReadStatusDto.fromJson(
          Map<String, dynamic> json) =>
      _$ConversationMessageReadStatusDtoFromJson(json);
}

@freezed
sealed class ConversationMutationDto with _$ConversationMutationDto {
  factory ConversationMutationDto({
    @JsonKey(name: 'topic') required String topic,
    @JsonKey(name: 'isClosed') bool? isClosed,
    @JsonKey(name: 'dateClosed') DateTime? dateClosed,
    @JsonKey(name: 'initiatorAccountId') int? initiatorAccountId,
    @JsonKey(name: 'recipientAccountId') int? recipientAccountId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
  }) = _ConversationMutationDto;

  factory ConversationMutationDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationMutationDtoFromJson(json);
}

@freezed
sealed class CountryApiDto with _$CountryApiDto {
  factory CountryApiDto({
    @JsonKey(name: 'countryId') int? countryId,
    @JsonKey(name: 'isO2') String? isO2,
    @JsonKey(name: 'isO3') String? isO3,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'citizenship') String? citizenship,
    @JsonKey(name: 'idd') String? idd,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _CountryApiDto;

  factory CountryApiDto.fromJson(Map<String, dynamic> json) =>
      _$CountryApiDtoFromJson(json);
}

@freezed
sealed class CurrentUserInfoDto with _$CurrentUserInfoDto {
  factory CurrentUserInfoDto({
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'emailConfirmed') bool? emailConfirmed,
    @JsonKey(name: 'lastActiveBranchId') int? lastActiveBranchId,
    @JsonKey(name: 'branchRoles') List<UserBranchRoleDto>? branchRoles,
  }) = _CurrentUserInfoDto;

  factory CurrentUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserInfoDtoFromJson(json);
}

@freezed
sealed class EmployeeApiDto with _$EmployeeApiDto {
  factory EmployeeApiDto({
    @JsonKey(name: 'employeeType') int? employeeType,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
  }) = _EmployeeApiDto;

  factory EmployeeApiDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeApiDtoFromJson(json);
}

@freezed
sealed class EnrolmentApiDto with _$EnrolmentApiDto {
  factory EnrolmentApiDto({
    @JsonKey(name: 'enrolmentId') int? enrolmentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'class') ClassApiDto? classField,
    @JsonKey(name: 'academicYearId') int? academicYearId,
    @JsonKey(name: 'academicYear') AcademicYearApiDto? academicYear,
    @JsonKey(name: 'enrolmentDate') String? enrolmentDate,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'status') int? status,
  }) = _EnrolmentApiDto;

  factory EnrolmentApiDto.fromJson(Map<String, dynamic> json) =>
      _$EnrolmentApiDtoFromJson(json);
}

@freezed
sealed class ImageUrlResultDto with _$ImageUrlResultDto {
  factory ImageUrlResultDto({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'fallbackUrl') String? fallbackUrl,
  }) = _ImageUrlResultDto;

  factory ImageUrlResultDto.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlResultDtoFromJson(json);
}

@freezed
sealed class InfantCareActivityApiDto with _$InfantCareActivityApiDto {
  factory InfantCareActivityApiDto({
    @JsonKey(name: 'infantCareActivityId') int? infantCareActivityId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'ageInMonths') int? ageInMonths,
    @JsonKey(name: 'promotionDate') DateTime? promotionDate,
    @JsonKey(name: 'lastFeedDateTime') DateTime? lastFeedDateTime,
    @JsonKey(name: 'lastFeedTime') String? lastFeedTime,
    @JsonKey(name: 'nextFeedDateTime') DateTime? nextFeedDateTime,
    @JsonKey(name: 'nextFeedTime') String? nextFeedTime,
    @JsonKey(name: 'feedRemarks') String? feedRemarks,
    @JsonKey(name: 'feedPerformedBy') String? feedPerformedBy,
    @JsonKey(name: 'lastDiaperDateTime') DateTime? lastDiaperDateTime,
    @JsonKey(name: 'lastDiaperTime') String? lastDiaperTime,
    @JsonKey(name: 'nextDiaperDateTime') DateTime? nextDiaperDateTime,
    @JsonKey(name: 'nextDiaperTime') String? nextDiaperTime,
    @JsonKey(name: 'diaperRemarks') String? diaperRemarks,
    @JsonKey(name: 'diaperPerformedBy') String? diaperPerformedBy,
    @JsonKey(name: 'napDateTime') DateTime? napDateTime,
    @JsonKey(name: 'napTime') String? napTime,
    @JsonKey(name: 'napDuration') int? napDuration,
    @JsonKey(name: 'napPerformedBy') String? napPerformedBy,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _InfantCareActivityApiDto;

  factory InfantCareActivityApiDto.fromJson(Map<String, dynamic> json) =>
      _$InfantCareActivityApiDtoFromJson(json);
}

@freezed
sealed class InfantCareActivityLogApiDto with _$InfantCareActivityLogApiDto {
  factory InfantCareActivityLogApiDto({
    @JsonKey(name: 'infantCareActivityLogId') int? infantCareActivityLogId,
    @JsonKey(name: 'infantCareActivityId') int? infantCareActivityId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'performedBy') String? performedBy,
    @JsonKey(name: 'performedAt') DateTime? performedAt,
    @JsonKey(name: 'nextScheduledAt') DateTime? nextScheduledAt,
    @JsonKey(name: 'additionalField') String? additionalField,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _InfantCareActivityLogApiDto;

  factory InfantCareActivityLogApiDto.fromJson(Map<String, dynamic> json) =>
      _$InfantCareActivityLogApiDtoFromJson(json);
}

@freezed
sealed class InfantCareActivityLogCreateDto
    with _$InfantCareActivityLogCreateDto {
  factory InfantCareActivityLogCreateDto({
    @JsonKey(name: 'infantCareActivityId') int? infantCareActivityId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') required int activityType,
    @JsonKey(name: 'performedAt') required DateTime performedAt,
    @JsonKey(name: 'nextScheduledAt') DateTime? nextScheduledAt,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'performedBy') String? performedBy,
    @JsonKey(name: 'additionalField') String? additionalField,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
  }) = _InfantCareActivityLogCreateDto;

  factory InfantCareActivityLogCreateDto.fromJson(Map<String, dynamic> json) =>
      _$InfantCareActivityLogCreateDtoFromJson(json);
}

@freezed
sealed class InfantCareActivityLogUpdateDto
    with _$InfantCareActivityLogUpdateDto {
  factory InfantCareActivityLogUpdateDto({
    @JsonKey(name: 'infantCareActivityLogId')
    required int infantCareActivityLogId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'performedAt') DateTime? performedAt,
    @JsonKey(name: 'nextScheduledAt') DateTime? nextScheduledAt,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'performedBy') String? performedBy,
    @JsonKey(name: 'additionalField') String? additionalField,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
  }) = _InfantCareActivityLogUpdateDto;

  factory InfantCareActivityLogUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$InfantCareActivityLogUpdateDtoFromJson(json);
}

@freezed
sealed class InfantCareActivitySaveDto with _$InfantCareActivitySaveDto {
  factory InfantCareActivitySaveDto({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'promotionDate') DateTime? promotionDate,
    @JsonKey(name: 'lastFeedDateTime') DateTime? lastFeedDateTime,
    @JsonKey(name: 'lastFeedTime') String? lastFeedTime,
    @JsonKey(name: 'nextFeedDateTime') DateTime? nextFeedDateTime,
    @JsonKey(name: 'nextFeedTime') String? nextFeedTime,
    @JsonKey(name: 'feedRemarks') String? feedRemarks,
    @JsonKey(name: 'feedPerformedBy') String? feedPerformedBy,
    @JsonKey(name: 'lastDiaperDateTime') DateTime? lastDiaperDateTime,
    @JsonKey(name: 'lastDiaperTime') String? lastDiaperTime,
    @JsonKey(name: 'nextDiaperDateTime') DateTime? nextDiaperDateTime,
    @JsonKey(name: 'nextDiaperTime') String? nextDiaperTime,
    @JsonKey(name: 'diaperRemarks') String? diaperRemarks,
    @JsonKey(name: 'diaperPerformedBy') String? diaperPerformedBy,
    @JsonKey(name: 'napDateTime') DateTime? napDateTime,
    @JsonKey(name: 'napTime') String? napTime,
    @JsonKey(name: 'napDuration') int? napDuration,
    @JsonKey(name: 'napPerformedBy') String? napPerformedBy,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
  }) = _InfantCareActivitySaveDto;

  factory InfantCareActivitySaveDto.fromJson(Map<String, dynamic> json) =>
      _$InfantCareActivitySaveDtoFromJson(json);
}

@freezed
sealed class LevelApiDto with _$LevelApiDto {
  factory LevelApiDto({
    @JsonKey(name: 'levelId') int? levelId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'minAgeInMonths') int? minAgeInMonths,
    @JsonKey(name: 'maxAgeInMonths') int? maxAgeInMonths,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _LevelApiDto;

  factory LevelApiDto.fromJson(Map<String, dynamic> json) =>
      _$LevelApiDtoFromJson(json);
}

@freezed
sealed class LookUpApiDto with _$LookUpApiDto {
  factory LookUpApiDto({
    @JsonKey(name: 'lookUpId') int? lookUpId,
    @JsonKey(name: 'lookUpType') int? lookUpType,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
  }) = _LookUpApiDto;

  factory LookUpApiDto.fromJson(Map<String, dynamic> json) =>
      _$LookUpApiDtoFromJson(json);
}

@freezed
sealed class NotificationApiDto with _$NotificationApiDto {
  factory NotificationApiDto({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'notificationType') int? notificationType,
    @JsonKey(name: 'entityId') int? entityId,
    @JsonKey(name: 'isPublic') bool? isPublic,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'readDateTime') DateTime? readDateTime,
    @JsonKey(name: 'notificationRecipientId') int? notificationRecipientId,
    @JsonKey(name: 'recipientAccountId') int? recipientAccountId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _NotificationApiDto;

  factory NotificationApiDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationApiDtoFromJson(json);
}

@freezed
sealed class NotificationSummaryDto with _$NotificationSummaryDto {
  factory NotificationSummaryDto({
    @JsonKey(name: 'totalUnread') int? totalUnread,
    @JsonKey(name: 'totalRead') int? totalRead,
    @JsonKey(name: 'total') int? total,
  }) = _NotificationSummaryDto;

  factory NotificationSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationSummaryDtoFromJson(json);
}

@freezed
sealed class PagedResultOfAccountDeviceSessionApiDto
    with _$PagedResultOfAccountDeviceSessionApiDto {
  factory PagedResultOfAccountDeviceSessionApiDto({
    @JsonKey(name: 'items') List<AccountDeviceSessionApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfAccountDeviceSessionApiDto;

  factory PagedResultOfAccountDeviceSessionApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfAccountDeviceSessionApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfBranchApiDto with _$PagedResultOfBranchApiDto {
  factory PagedResultOfBranchApiDto({
    @JsonKey(name: 'items') List<BranchApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfBranchApiDto;

  factory PagedResultOfBranchApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfBranchApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfCalendarItemApiDto
    with _$PagedResultOfCalendarItemApiDto {
  factory PagedResultOfCalendarItemApiDto({
    @JsonKey(name: 'items') List<CalendarItemApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfCalendarItemApiDto;

  factory PagedResultOfCalendarItemApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfCalendarItemApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfClassApiDto with _$PagedResultOfClassApiDto {
  factory PagedResultOfClassApiDto({
    @JsonKey(name: 'items') List<ClassApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfClassApiDto;

  factory PagedResultOfClassApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfClassApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfContentApiDto with _$PagedResultOfContentApiDto {
  factory PagedResultOfContentApiDto({
    @JsonKey(name: 'items') List<ContentApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfContentApiDto;

  factory PagedResultOfContentApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfContentApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfConversationApiDto
    with _$PagedResultOfConversationApiDto {
  factory PagedResultOfConversationApiDto({
    @JsonKey(name: 'items') List<ConversationApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfConversationApiDto;

  factory PagedResultOfConversationApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfConversationApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfConversationMessageApiDto
    with _$PagedResultOfConversationMessageApiDto {
  factory PagedResultOfConversationMessageApiDto({
    @JsonKey(name: 'items') List<ConversationMessageApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfConversationMessageApiDto;

  factory PagedResultOfConversationMessageApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfConversationMessageApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfInfantCareActivityApiDto
    with _$PagedResultOfInfantCareActivityApiDto {
  factory PagedResultOfInfantCareActivityApiDto({
    @JsonKey(name: 'items') List<InfantCareActivityApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfInfantCareActivityApiDto;

  factory PagedResultOfInfantCareActivityApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfInfantCareActivityApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfInfantCareActivityLogApiDto
    with _$PagedResultOfInfantCareActivityLogApiDto {
  factory PagedResultOfInfantCareActivityLogApiDto({
    @JsonKey(name: 'items') List<InfantCareActivityLogApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfInfantCareActivityLogApiDto;

  factory PagedResultOfInfantCareActivityLogApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfInfantCareActivityLogApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfNotificationApiDto
    with _$PagedResultOfNotificationApiDto {
  factory PagedResultOfNotificationApiDto({
    @JsonKey(name: 'items') List<NotificationApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfNotificationApiDto;

  factory PagedResultOfNotificationApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfNotificationApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfStudentApiDto with _$PagedResultOfStudentApiDto {
  factory PagedResultOfStudentApiDto({
    @JsonKey(name: 'items') List<StudentApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfStudentApiDto;

  factory PagedResultOfStudentApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfStudentApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfStudentAttendanceApiDto
    with _$PagedResultOfStudentAttendanceApiDto {
  factory PagedResultOfStudentAttendanceApiDto({
    @JsonKey(name: 'items') List<StudentAttendanceApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfStudentAttendanceApiDto;

  factory PagedResultOfStudentAttendanceApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfStudentAttendanceApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfStudentAuthorisedPersonApiDto
    with _$PagedResultOfStudentAuthorisedPersonApiDto {
  factory PagedResultOfStudentAuthorisedPersonApiDto({
    @JsonKey(name: 'items') List<StudentAuthorisedPersonApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfStudentAuthorisedPersonApiDto;

  factory PagedResultOfStudentAuthorisedPersonApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfStudentAuthorisedPersonApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfStudentCheckInOutApiDto
    with _$PagedResultOfStudentCheckInOutApiDto {
  factory PagedResultOfStudentCheckInOutApiDto({
    @JsonKey(name: 'items') List<StudentCheckInOutApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfStudentCheckInOutApiDto;

  factory PagedResultOfStudentCheckInOutApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfStudentCheckInOutApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfStudentTemperatureApiDto
    with _$PagedResultOfStudentTemperatureApiDto {
  factory PagedResultOfStudentTemperatureApiDto({
    @JsonKey(name: 'items') List<StudentTemperatureApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfStudentTemperatureApiDto;

  factory PagedResultOfStudentTemperatureApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfStudentTemperatureApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfTeacherApiDto with _$PagedResultOfTeacherApiDto {
  factory PagedResultOfTeacherApiDto({
    @JsonKey(name: 'items') List<TeacherApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfTeacherApiDto;

  factory PagedResultOfTeacherApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfTeacherApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfUserBranchRoleViewDto
    with _$PagedResultOfUserBranchRoleViewDto {
  factory PagedResultOfUserBranchRoleViewDto({
    @JsonKey(name: 'items') List<UserBranchRoleViewDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfUserBranchRoleViewDto;

  factory PagedResultOfUserBranchRoleViewDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfUserBranchRoleViewDtoFromJson(json);
}

@freezed
sealed class StudentApiDto with _$StudentApiDto {
  factory StudentApiDto({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'genderId') int? genderId,
    @JsonKey(name: 'citizenshipId') int? citizenshipId,
    @JsonKey(name: 'mainLanguageSpokenId') int? mainLanguageSpokenId,
    @JsonKey(name: 'raceId') int? raceId,
    @JsonKey(name: 'residenceStatusId') int? residenceStatusId,
    @JsonKey(name: 'enrolments') List<EnrolmentApiDto>? enrolments,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentApiDto;

  factory StudentApiDto.fromJson(Map<String, dynamic> json) =>
      _$StudentApiDtoFromJson(json);
}

@freezed
sealed class StudentAttendanceApiDto with _$StudentAttendanceApiDto {
  factory StudentAttendanceApiDto({
    @JsonKey(name: 'studentAttendanceId') int? studentAttendanceId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'isPresent') bool? isPresent,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentAttendanceApiDto;

  factory StudentAttendanceApiDto.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceApiDtoFromJson(json);
}

@freezed
sealed class StudentAttendanceDTODto with _$StudentAttendanceDTODto {
  factory StudentAttendanceDTODto({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'enrolmentDate') String? enrolmentDate,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'countSchoolDays') int? countSchoolDays,
    @JsonKey(name: 'countPresent') int? countPresent,
    @JsonKey(name: 'countAbsent') int? countAbsent,
    @JsonKey(name: 'rate') int? rate,
    @JsonKey(name: 'attendanceRecords')
    List<AttendanceRecordDTODto>? attendanceRecords,
  }) = _StudentAttendanceDTODto;

  factory StudentAttendanceDTODto.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceDTODtoFromJson(json);
}

@freezed
sealed class StudentAuthorisedPersonApiDto
    with _$StudentAuthorisedPersonApiDto {
  factory StudentAuthorisedPersonApiDto({
    @JsonKey(name: 'studentAuthorisedPersonId') int? studentAuthorisedPersonId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'contactNumber') String? contactNumber,
    @JsonKey(name: 'relationToChild') LookUpApiDto? relationToChild,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'statusReasons')
    List<AuthorisedPersonDeactivationReasonApiDto>? statusReasons,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentAuthorisedPersonApiDto;

  factory StudentAuthorisedPersonApiDto.fromJson(Map<String, dynamic> json) =>
      _$StudentAuthorisedPersonApiDtoFromJson(json);
}

@freezed
sealed class StudentAuthorisedPersonApiDto2Dto
    with _$StudentAuthorisedPersonApiDto2Dto {
  factory StudentAuthorisedPersonApiDto2Dto({
    @JsonKey(name: 'studentAuthorisedPersonId') int? studentAuthorisedPersonId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'contactNumber') String? contactNumber,
    @JsonKey(name: 'relationToChild') dynamic relationToChild,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'statusReasons')
    List<AuthorisedPersonDeactivationReasonApiDto>? statusReasons,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentAuthorisedPersonApiDto2Dto;

  factory StudentAuthorisedPersonApiDto2Dto.fromJson(
          Map<String, dynamic> json) =>
      _$StudentAuthorisedPersonApiDto2DtoFromJson(json);
}

@freezed
sealed class StudentCheckInOutApiDto with _$StudentCheckInOutApiDto {
  factory StudentCheckInOutApiDto({
    @JsonKey(name: 'studentCheckInOutId') int? studentCheckInOutId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkInRemarks') String? checkInRemarks,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'checkOutRemarks') String? checkOutRemarks,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'checkInAuthorisedPerson')
    StudentAuthorisedPersonApiDto? checkInAuthorisedPerson,
    @JsonKey(name: 'checkOutAuthorisedPerson')
    StudentAuthorisedPersonApiDto2Dto? checkOutAuthorisedPerson,
    @JsonKey(name: 'temperatures') List<StudentTemperatureApiDto>? temperatures,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentCheckInOutApiDto;

  factory StudentCheckInOutApiDto.fromJson(Map<String, dynamic> json) =>
      _$StudentCheckInOutApiDtoFromJson(json);
}

@freezed
sealed class StudentTemperatureApiDto with _$StudentTemperatureApiDto {
  factory StudentTemperatureApiDto({
    @JsonKey(name: 'temperatureId') int? temperatureId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'checkInOutId') int? checkInOutId,
    @JsonKey(name: 'temperatureValue') num? temperatureValue,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _StudentTemperatureApiDto;

  factory StudentTemperatureApiDto.fromJson(Map<String, dynamic> json) =>
      _$StudentTemperatureApiDtoFromJson(json);
}

@freezed
sealed class SubjectApiDto with _$SubjectApiDto {
  factory SubjectApiDto({
    @JsonKey(name: 'subjectId') int? subjectId,
    @JsonKey(name: 'levelId') int? levelId,
    @JsonKey(name: 'level') LevelApiDto? level,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'maxCapacity') int? maxCapacity,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _SubjectApiDto;

  factory SubjectApiDto.fromJson(Map<String, dynamic> json) =>
      _$SubjectApiDtoFromJson(json);
}

@freezed
sealed class TeacherApiDto with _$TeacherApiDto {
  factory TeacherApiDto({
    @JsonKey(name: 'teacherId') int? teacherId,
    @JsonKey(name: 'employeeId') int? employeeId,
    @JsonKey(name: 'employee') EmployeeApiDto? employee,
  }) = _TeacherApiDto;

  factory TeacherApiDto.fromJson(Map<String, dynamic> json) =>
      _$TeacherApiDtoFromJson(json);
}

@freezed
sealed class UserBranchRoleDto with _$UserBranchRoleDto {
  factory UserBranchRoleDto({
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'roleCode') String? roleCode,
    @JsonKey(name: 'studentId') int? studentId,
  }) = _UserBranchRoleDto;

  factory UserBranchRoleDto.fromJson(Map<String, dynamic> json) =>
      _$UserBranchRoleDtoFromJson(json);
}

@freezed
sealed class UserBranchRoleViewDto with _$UserBranchRoleViewDto {
  factory UserBranchRoleViewDto({
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'roleCode') String? roleCode,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'email') String? email,
  }) = _UserBranchRoleViewDto;

  factory UserBranchRoleViewDto.fromJson(Map<String, dynamic> json) =>
      _$UserBranchRoleViewDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
