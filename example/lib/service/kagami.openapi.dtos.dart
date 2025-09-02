// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'kagami.openapi.dtos.freezed.dart';
part 'kagami.openapi.dtos.g.dart';

@freezed
sealed class AccountDto with _$AccountDto {
  factory AccountDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'accountType') required String accountType,
    @JsonKey(name: 'contactInfo') ContactInfoDto? contactInfo,
    @JsonKey(name: 'personalInfo') PersonalInfoDto? personalInfo,
    @JsonKey(name: 'addressList') List<AddressInfoDto>? addressList,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}

@freezed
sealed class AddressInfoDto with _$AddressInfoDto {
  factory AddressInfoDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'accountID') String? accountID,
    @JsonKey(name: 'address1') String? address1,
    @JsonKey(name: 'address2') String? address2,
    @JsonKey(name: 'address3') String? address3,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'postalCode') String? postalCode,
    @JsonKey(name: 'addressType') String? addressType,
  }) = _AddressInfoDto;

  factory AddressInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoDtoFromJson(json);
}

@freezed
sealed class AttendanceDto with _$AttendanceDto {
  factory AttendanceDto({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _AttendanceDto;

  factory AttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDtoFromJson(json);
}

@freezed
sealed class AttendanceVODto with _$AttendanceVODto {
  factory AttendanceVODto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _AttendanceVODto;

  factory AttendanceVODto.fromJson(Map<String, dynamic> json) =>
      _$AttendanceVODtoFromJson(json);
}

@freezed
sealed class AttendeeDto with _$AttendeeDto {
  factory AttendeeDto({
    @JsonKey(name: 'emailAddress') EmailAddressDto? emailAddress,
    @JsonKey(name: '@odata.type') String? odataType,
    @JsonKey(name: 'type') AttendeeTypeDto? type,
    @JsonKey(name: 'proposedNewTime') TimeSlotDto? proposedNewTime,
    @JsonKey(name: 'status') ResponseStatusDto? status,
  }) = _AttendeeDto;

  factory AttendeeDto.fromJson(Map<String, dynamic> json) =>
      _$AttendeeDtoFromJson(json);
}

enum AttendeeTypeDto {
  @JsonValue('Required')
  $required,
  @JsonValue('Optional')
  optional,
  @JsonValue('Resource')
  resource,
}

extension AttendeeTypeDtoExt on AttendeeTypeDto {
  static final Map<String, AttendeeTypeDto> _names = {
    'Required': AttendeeTypeDto.$required,
    'Optional': AttendeeTypeDto.optional,
    'Resource': AttendeeTypeDto.resource,
  };
  static AttendeeTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for AttendeeTypeDto');
  String get name => switch (this) {
        AttendeeTypeDto.$required => 'Required',
        AttendeeTypeDto.optional => 'Optional',
        AttendeeTypeDto.resource => 'Resource',
      };
}

@freezed
sealed class AuthorisedPickUpDto with _$AuthorisedPickUpDto {
  factory AuthorisedPickUpDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'indentifyNo') String? indentifyNo,
    @JsonKey(name: 'relationship') String? relationship,
    @JsonKey(name: 'contactNumber') String? contactNumber,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'image') String? image,
  }) = _AuthorisedPickUpDto;

  factory AuthorisedPickUpDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorisedPickUpDtoFromJson(json);
}

@freezed
sealed class BookEventRequestParameterDto with _$BookEventRequestParameterDto {
  factory BookEventRequestParameterDto({
    @JsonKey(name: 'teacherAccountId') String? teacherAccountId,
    @JsonKey(name: 'organiserEmail') String? organiserEmail,
    @JsonKey(name: 'eventId') String? eventId,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'recipients') List<CalendarInviteRecipientDto>? recipients,
  }) = _BookEventRequestParameterDto;

  factory BookEventRequestParameterDto.fromJson(Map<String, dynamic> json) =>
      _$BookEventRequestParameterDtoFromJson(json);
}

@freezed
sealed class CalendarInviteRecipientDto with _$CalendarInviteRecipientDto {
  factory CalendarInviteRecipientDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
  }) = _CalendarInviteRecipientDto;

  factory CalendarInviteRecipientDto.fromJson(Map<String, dynamic> json) =>
      _$CalendarInviteRecipientDtoFromJson(json);
}

@freezed
sealed class CalendarItemParameterDto with _$CalendarItemParameterDto {
  factory CalendarItemParameterDto({
    @JsonKey(name: 'eventId') String? eventId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'startDate') DateTime? startDate,
    @JsonKey(name: 'endDate') DateTime? endDate,
    @JsonKey(name: 'attendees') List<AttendeeDto>? attendees,
    @JsonKey(name: 'isOnlineMeeting') bool? isOnlineMeeting,
    @JsonKey(name: 'resourcePermission')
    ResourcePermissionDto? resourcePermission,
  }) = _CalendarItemParameterDto;

  factory CalendarItemParameterDto.fromJson(Map<String, dynamic> json) =>
      _$CalendarItemParameterDtoFromJson(json);
}

@freezed
sealed class ChangePasswordParameterDto with _$ChangePasswordParameterDto {
  factory ChangePasswordParameterDto({
    @JsonKey(name: 'currentPassword') String? currentPassword,
    @JsonKey(name: 'newPassword') String? newPassword,
  }) = _ChangePasswordParameterDto;

  factory ChangePasswordParameterDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordParameterDtoFromJson(json);
}

@freezed
sealed class CheckInOutDto with _$CheckInOutDto {
  factory CheckInOutDto({
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'checkType') String? checkType,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _CheckInOutDto;

  factory CheckInOutDto.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutDtoFromJson(json);
}

@freezed
sealed class CheckInOutParameterDto with _$CheckInOutParameterDto {
  factory CheckInOutParameterDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'checkType') String? checkType,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _CheckInOutParameterDto;

  factory CheckInOutParameterDto.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutParameterDtoFromJson(json);
}

@freezed
sealed class CheckInOutVODto with _$CheckInOutVODto {
  factory CheckInOutVODto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'checkType') String? checkType,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _CheckInOutVODto;

  factory CheckInOutVODto.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutVODtoFromJson(json);
}

@freezed
sealed class ChildConfigVODto with _$ChildConfigVODto {
  factory ChildConfigVODto({
    @JsonKey(name: 'showBilling') bool? showBilling,
    @JsonKey(name: 'showDailyRoutine') bool? showDailyRoutine,
    @JsonKey(name: 'enablePTCBooking') bool? enablePTCBooking,
    @JsonKey(name: 'enableMedication') bool? enableMedication,
    @JsonKey(name: 'medicationAcceptDays') int? medicationAcceptDays,
    @JsonKey(name: 'medicationAllowBeforeHour') int? medicationAllowBeforeHour,
    @JsonKey(name: 'medicationLimit') int? medicationLimit,
  }) = _ChildConfigVODto;

  factory ChildConfigVODto.fromJson(Map<String, dynamic> json) =>
      _$ChildConfigVODtoFromJson(json);
}

@freezed
sealed class CommunicationsParameterDto with _$CommunicationsParameterDto {
  factory CommunicationsParameterDto({
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'notificationType') String? notificationType,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'referenceId') String? referenceId,
    @JsonKey(name: 'notificationIds') String? notificationIds,
  }) = _CommunicationsParameterDto;

  factory CommunicationsParameterDto.fromJson(Map<String, dynamic> json) =>
      _$CommunicationsParameterDtoFromJson(json);
}

@freezed
sealed class ContactInfoDto with _$ContactInfoDto {
  factory ContactInfoDto({
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'mobilePhone') String? mobilePhone,
    @JsonKey(name: 'homePhone') String? homePhone,
    @JsonKey(name: 'emailAddress') String? emailAddress,
  }) = _ContactInfoDto;

  factory ContactInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoDtoFromJson(json);
}

@freezed
sealed class CourseComponentAttendanceDto with _$CourseComponentAttendanceDto {
  factory CourseComponentAttendanceDto({
    @JsonKey(name: 'createdById') String? createdById,
    @JsonKey(name: 'createdDateTime') DateTime? createdDateTime,
    @JsonKey(name: 'lastModifiedById') String? lastModifiedById,
    @JsonKey(name: 'lastModifiedDateTime') DateTime? lastModifiedDateTime,
    @JsonKey(name: 'createdByName') String? createdByName,
    @JsonKey(name: 'lastModifiedByName') String? lastModifiedByName,
    @JsonKey(name: 'courseComponentId') int? courseComponentId,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'attendanceDate') DateTime? attendanceDate,
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
    @JsonKey(name: 'attendanceRemarks') String? attendanceRemarks,
  }) = _CourseComponentAttendanceDto;

  factory CourseComponentAttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$CourseComponentAttendanceDtoFromJson(json);
}

@freezed
sealed class CourseComponentAttendanceParameterDto
    with _$CourseComponentAttendanceParameterDto {
  factory CourseComponentAttendanceParameterDto({
    @JsonKey(name: 'courseComponentId') int? courseComponentId,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'attendanceDate') DateTime? attendanceDate,
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
  }) = _CourseComponentAttendanceParameterDto;

  factory CourseComponentAttendanceParameterDto.fromJson(
          Map<String, dynamic> json) =>
      _$CourseComponentAttendanceParameterDtoFromJson(json);
}

@freezed
sealed class CourseComponentStudentParameterDto
    with _$CourseComponentStudentParameterDto {
  factory CourseComponentStudentParameterDto({
    @JsonKey(name: 'courseComponentId') int? courseComponentId,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'isActive') bool? isActive,
  }) = _CourseComponentStudentParameterDto;

  factory CourseComponentStudentParameterDto.fromJson(
          Map<String, dynamic> json) =>
      _$CourseComponentStudentParameterDtoFromJson(json);
}

@freezed
sealed class CustomNotificationParametersDto
    with _$CustomNotificationParametersDto {
  factory CustomNotificationParametersDto({
    @JsonKey(name: 'teacherId') String? teacherId,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'ptcInfo') String? ptcInfo,
    @JsonKey(name: 'tagStudents') List<TagStudentsDto>? tagStudents,
    @JsonKey(name: 'tagClasses') List<TagClassDto>? tagClasses,
    @JsonKey(name: 'tagLevels') List<TagLevelDto>? tagLevels,
  }) = _CustomNotificationParametersDto;

  factory CustomNotificationParametersDto.fromJson(Map<String, dynamic> json) =>
      _$CustomNotificationParametersDtoFromJson(json);
}

@freezed
sealed class DailyLogAttendanceDto with _$DailyLogAttendanceDto {
  factory DailyLogAttendanceDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'attendanceDate') DateTime? attendanceDate,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'createdBy') String? createdBy,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'updatedBy') String? updatedBy,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _DailyLogAttendanceDto;

  factory DailyLogAttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$DailyLogAttendanceDtoFromJson(json);
}

@freezed
sealed class DateTimeTimeZoneDto with _$DateTimeTimeZoneDto {
  factory DateTimeTimeZoneDto({
    @JsonKey(name: 'dateTime') String? dateTime,
    @JsonKey(name: 'timeZone') String? timeZone,
    @JsonKey(name: '@odata.type') String? odataType,
  }) = _DateTimeTimeZoneDto;

  factory DateTimeTimeZoneDto.fromJson(Map<String, dynamic> json) =>
      _$DateTimeTimeZoneDtoFromJson(json);
}

@freezed
sealed class EditBookEventParameterDto with _$EditBookEventParameterDto {
  factory EditBookEventParameterDto({
    @JsonKey(name: 'oldOrganiserEmail') String? oldOrganiserEmail,
    @JsonKey(name: 'oldEventId') String? oldEventId,
    @JsonKey(name: 'newOrganiserEmail') String? newOrganiserEmail,
    @JsonKey(name: 'newEventId') String? newEventId,
    @JsonKey(name: 'recipients') List<CalendarInviteRecipientDto>? recipients,
  }) = _EditBookEventParameterDto;

  factory EditBookEventParameterDto.fromJson(Map<String, dynamic> json) =>
      _$EditBookEventParameterDtoFromJson(json);
}

@freezed
sealed class EmailAddressDto with _$EmailAddressDto {
  factory EmailAddressDto({
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: '@odata.type') String? odataType,
  }) = _EmailAddressDto;

  factory EmailAddressDto.fromJson(Map<String, dynamic> json) =>
      _$EmailAddressDtoFromJson(json);
}

@freezed
sealed class LastTemperatureVODto with _$LastTemperatureVODto {
  factory LastTemperatureVODto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'lastTimeStamp') DateTime? lastTimeStamp,
    @JsonKey(name: 'lastTempCheck') String? lastTempCheck,
  }) = _LastTemperatureVODto;

  factory LastTemperatureVODto.fromJson(Map<String, dynamic> json) =>
      _$LastTemperatureVODtoFromJson(json);
}

@freezed
sealed class LoginParameterDto with _$LoginParameterDto {
  factory LoginParameterDto({
    @JsonKey(name: 'loginId') required String loginId,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'organisation') required String organisation,
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'accountType') String? accountType,
  }) = _LoginParameterDto;

  factory LoginParameterDto.fromJson(Map<String, dynamic> json) =>
      _$LoginParameterDtoFromJson(json);
}

@freezed
sealed class MarkAttendanceParameterDto with _$MarkAttendanceParameterDto {
  factory MarkAttendanceParameterDto({
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'optionalDateTime') String? optionalDateTime,
  }) = _MarkAttendanceParameterDto;

  factory MarkAttendanceParameterDto.fromJson(Map<String, dynamic> json) =>
      _$MarkAttendanceParameterDtoFromJson(json);
}

@freezed
sealed class MarkCheckInOutParameterDto with _$MarkCheckInOutParameterDto {
  factory MarkCheckInOutParameterDto({
    @JsonKey(name: 'checkType') String? checkType,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'optionalDateTime') String? optionalDateTime,
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'file64BitString') String? file64BitString,
  }) = _MarkCheckInOutParameterDto;

  factory MarkCheckInOutParameterDto.fromJson(Map<String, dynamic> json) =>
      _$MarkCheckInOutParameterDtoFromJson(json);
}

@freezed
sealed class MarkDailyRoutineParameterDto with _$MarkDailyRoutineParameterDto {
  factory MarkDailyRoutineParameterDto({
    @JsonKey(name: 'referenceType') String? referenceType,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
    @JsonKey(name: 'remarks') String? remarks,
  }) = _MarkDailyRoutineParameterDto;

  factory MarkDailyRoutineParameterDto.fromJson(Map<String, dynamic> json) =>
      _$MarkDailyRoutineParameterDtoFromJson(json);
}

@freezed
sealed class MarkMassAttendanceParameterDto
    with _$MarkMassAttendanceParameterDto {
  factory MarkMassAttendanceParameterDto({
    @JsonKey(name: 'attendanceStatus') String? attendanceStatus,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'studentIds') List<String>? studentIds,
    @JsonKey(name: 'optionalDateTime') String? optionalDateTime,
  }) = _MarkMassAttendanceParameterDto;

  factory MarkMassAttendanceParameterDto.fromJson(Map<String, dynamic> json) =>
      _$MarkMassAttendanceParameterDtoFromJson(json);
}

@freezed
sealed class MarkTemperatureCheckParameterDto
    with _$MarkTemperatureCheckParameterDto {
  factory MarkTemperatureCheckParameterDto({
    @JsonKey(name: 'temperature') num? temperature,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'optionalDateTime') String? optionalDateTime,
  }) = _MarkTemperatureCheckParameterDto;

  factory MarkTemperatureCheckParameterDto.fromJson(
          Map<String, dynamic> json) =>
      _$MarkTemperatureCheckParameterDtoFromJson(json);
}

@freezed
sealed class MedicineAuditDetailVODto with _$MedicineAuditDetailVODto {
  factory MedicineAuditDetailVODto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'dosage') String? dosage,
    @JsonKey(name: 'administrationManner') String? administrationManner,
    @JsonKey(name: 'medicineExpirationDate') DateTime? medicineExpirationDate,
    @JsonKey(name: 'entityFileRefId') String? entityFileRefId,
    @JsonKey(name: 'entityFileUrl') String? entityFileUrl,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'isTaken') bool? isTaken,
  }) = _MedicineAuditDetailVODto;

  factory MedicineAuditDetailVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineAuditDetailVODtoFromJson(json);
}

@freezed
sealed class MedicineAuditTrailsDto with _$MedicineAuditTrailsDto {
  factory MedicineAuditTrailsDto({
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'photoUrl') String? photoUrl,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'medicineDetailTakenIds') String? medicineDetailTakenIds,
    @JsonKey(name: 'administratorDate') DateTime? administratorDate,
  }) = _MedicineAuditTrailsDto;

  factory MedicineAuditTrailsDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineAuditTrailsDtoFromJson(json);
}

@freezed
sealed class MedicineAuditTrailsVerifierDto
    with _$MedicineAuditTrailsVerifierDto {
  factory MedicineAuditTrailsVerifierDto({
    @JsonKey(name: 'medicineAuditId') required int medicineAuditId,
    @JsonKey(name: 'remark') String? remark,
  }) = _MedicineAuditTrailsVerifierDto;

  factory MedicineAuditTrailsVerifierDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineAuditTrailsVerifierDtoFromJson(json);
}

@freezed
sealed class MedicineAuditWebViewVODto with _$MedicineAuditWebViewVODto {
  factory MedicineAuditWebViewVODto({
    @JsonKey(name: 'audit') required MedicineAuditWithDetailVODto audit,
    @JsonKey(name: 'formStartDate') DateTime? formStartDate,
    @JsonKey(name: 'formEndDate') DateTime? formEndDate,
    @JsonKey(name: 'student') StudentBaseInfoVODto? student,
  }) = _MedicineAuditWebViewVODto;

  factory MedicineAuditWebViewVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineAuditWebViewVODtoFromJson(json);
}

@freezed
sealed class MedicineAuditWebViewVOPaginationDto
    with _$MedicineAuditWebViewVOPaginationDto {
  factory MedicineAuditWebViewVOPaginationDto({
    @JsonKey(name: 'items') List<MedicineAuditWebViewVODto>? items,
    @JsonKey(name: 'totalRecords') int? totalRecords,
    @JsonKey(name: 'currentPage') int? currentPage,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalPages') int? totalPages,
    @JsonKey(name: 'hasNext') bool? hasNext,
    @JsonKey(name: 'hasPrevious') bool? hasPrevious,
  }) = _MedicineAuditWebViewVOPaginationDto;

  factory MedicineAuditWebViewVOPaginationDto.fromJson(
          Map<String, dynamic> json) =>
      _$MedicineAuditWebViewVOPaginationDtoFromJson(json);
}

@freezed
sealed class MedicineAuditWithDetailVODto with _$MedicineAuditWithDetailVODto {
  factory MedicineAuditWithDetailVODto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'administratorDate') DateTime? administratorDate,
    @JsonKey(name: 'administratorConId') String? administratorConId,
    @JsonKey(name: 'administratorName') String? administratorName,
    @JsonKey(name: 'administratorRemark') String? administratorRemark,
    @JsonKey(name: 'photoUrl') String? photoUrl,
    @JsonKey(name: 'verifierDate') DateTime? verifierDate,
    @JsonKey(name: 'verifierConId') String? verifierConId,
    @JsonKey(name: 'verifierName') String? verifierName,
    @JsonKey(name: 'verifierRemark') String? verifierRemark,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'medicineDetails')
    List<MedicineAuditDetailVODto>? medicineDetails,
  }) = _MedicineAuditWithDetailVODto;

  factory MedicineAuditWithDetailVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineAuditWithDetailVODtoFromJson(json);
}

@freezed
sealed class MedicineDataStudentVODto with _$MedicineDataStudentVODto {
  factory MedicineDataStudentVODto({
    @JsonKey(name: 'student') StudentBaseInfoVODto? student,
    @JsonKey(name: 'activeRequestCount') int? activeRequestCount,
    @JsonKey(name: 'expiredRequestCount') int? expiredRequestCount,
  }) = _MedicineDataStudentVODto;

  factory MedicineDataStudentVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineDataStudentVODtoFromJson(json);
}

@freezed
sealed class MedicineDetailsDto with _$MedicineDetailsDto {
  factory MedicineDetailsDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'dosage') required String dosage,
    @JsonKey(name: 'administrationManner') String? administrationManner,
    @JsonKey(name: 'entityFileRefId') String? entityFileRefId,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'medicineExpirationDate') DateTime? medicineExpirationDate,
  }) = _MedicineDetailsDto;

  factory MedicineDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineDetailsDtoFromJson(json);
}

@freezed
sealed class MedicineDetailsVODto with _$MedicineDetailsVODto {
  factory MedicineDetailsVODto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'dosage') String? dosage,
    @JsonKey(name: 'administrationManner') String? administrationManner,
    @JsonKey(name: 'medicineExpirationDate') DateTime? medicineExpirationDate,
    @JsonKey(name: 'entityFileRefId') String? entityFileRefId,
    @JsonKey(name: 'entityFileUrl') String? entityFileUrl,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'remarks') String? remarks,
  }) = _MedicineDetailsVODto;

  factory MedicineDetailsVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineDetailsVODtoFromJson(json);
}

@freezed
sealed class MedicineFormDto with _$MedicineFormDto {
  factory MedicineFormDto({
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'applicationDate') DateTime? applicationDate,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'parentType') String? parentType,
    @JsonKey(name: 'parentEmail') String? parentEmail,
    @JsonKey(name: 'studentCourseId') String? studentCourseId,
    @JsonKey(name: 'administrationTime') String? administrationTime,
    @JsonKey(name: 'startDate') DateTime? startDate,
    @JsonKey(name: 'endDate') DateTime? endDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'acknowledgedBy') String? acknowledgedBy,
    @JsonKey(name: 'acknowledgedDateTime') DateTime? acknowledgedDateTime,
    @JsonKey(name: 'createdBy') String? createdBy,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'rejectedBy') String? rejectedBy,
    @JsonKey(name: 'rejectedDateTime') DateTime? rejectedDateTime,
    @JsonKey(name: 'acknowledgeCancelBy') String? acknowledgeCancelBy,
    @JsonKey(name: 'acknowledgeCancelDateTime')
    DateTime? acknowledgeCancelDateTime,
    @JsonKey(name: 'updatedBy') String? updatedBy,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'rejectRemarks') String? rejectRemarks,
    @JsonKey(name: 'previousStatus') String? previousStatus,
    @JsonKey(name: 'previousUpdatedDate') DateTime? previousUpdatedDate,
  }) = _MedicineFormDto;

  factory MedicineFormDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormDtoFromJson(json);
}

@freezed
sealed class MedicineFormFullVODto with _$MedicineFormFullVODto {
  factory MedicineFormFullVODto({
    @JsonKey(name: 'medicineFormId') int? medicineFormId,
    @JsonKey(name: 'applicationDate') DateTime? applicationDate,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'parentType') String? parentType,
    @JsonKey(name: 'parentEmail') String? parentEmail,
    @JsonKey(name: 'studentCourseId') String? studentCourseId,
    @JsonKey(name: 'administrationTime') String? administrationTime,
    @JsonKey(name: 'startDate') DateTime? startDate,
    @JsonKey(name: 'endDate') DateTime? endDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'medicineFormStatus') String? medicineFormStatus,
    @JsonKey(name: 'createdBy') String? createdBy,
    @JsonKey(name: 'createdByName') String? createdByName,
    @JsonKey(name: 'acknowledgedBy') String? acknowledgedBy,
    @JsonKey(name: 'acknowledgedByName') String? acknowledgedByName,
    @JsonKey(name: 'acknowledgedDateTime') DateTime? acknowledgedDateTime,
    @JsonKey(name: 'rejectedBy') String? rejectedBy,
    @JsonKey(name: 'rejectedByName') String? rejectedByName,
    @JsonKey(name: 'rejectedDateTime') DateTime? rejectedDateTime,
    @JsonKey(name: 'acknowledgeCancelBy') String? acknowledgeCancelBy,
    @JsonKey(name: 'acknowledgeCancelByName') String? acknowledgeCancelByName,
    @JsonKey(name: 'acknowledgeCancelDateTime')
    DateTime? acknowledgeCancelDateTime,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'rejectRemarks') String? rejectRemarks,
    @JsonKey(name: 'medicineDetails')
    List<MedicineDetailsVODto>? medicineDetails,
    @JsonKey(name: 'latestAudit') MedicineAuditWithDetailVODto? latestAudit,
    @JsonKey(name: 'student') StudentBaseInfoVODto? student,
  }) = _MedicineFormFullVODto;

  factory MedicineFormFullVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormFullVODtoFromJson(json);
}

@freezed
sealed class MedicineFormFullVOPaginationDto
    with _$MedicineFormFullVOPaginationDto {
  factory MedicineFormFullVOPaginationDto({
    @JsonKey(name: 'items') List<MedicineFormFullVODto>? items,
    @JsonKey(name: 'totalRecords') int? totalRecords,
    @JsonKey(name: 'currentPage') int? currentPage,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalPages') int? totalPages,
    @JsonKey(name: 'hasNext') bool? hasNext,
    @JsonKey(name: 'hasPrevious') bool? hasPrevious,
  }) = _MedicineFormFullVOPaginationDto;

  factory MedicineFormFullVOPaginationDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormFullVOPaginationDtoFromJson(json);
}

@freezed
sealed class MedicineFormRejectDto with _$MedicineFormRejectDto {
  factory MedicineFormRejectDto({@JsonKey(name: 'remarks') String? remarks}) =
      _MedicineFormRejectDto;

  factory MedicineFormRejectDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormRejectDtoFromJson(json);
}

@freezed
sealed class MedicineFormSchoolConfigVODto
    with _$MedicineFormSchoolConfigVODto {
  factory MedicineFormSchoolConfigVODto({
    @JsonKey(name: 'medicationEnable') bool? medicationEnable,
    @JsonKey(name: 'medicationTakePhotoEnable') bool? medicationTakePhotoEnable,
    @JsonKey(name: 'medicationAcceptDays') int? medicationAcceptDays,
    @JsonKey(name: 'medicationAllowBeforeHour') int? medicationAllowBeforeHour,
  }) = _MedicineFormSchoolConfigVODto;

  factory MedicineFormSchoolConfigVODto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormSchoolConfigVODtoFromJson(json);
}

@freezed
sealed class MedicineFormUpdateDto with _$MedicineFormUpdateDto {
  factory MedicineFormUpdateDto({
    @JsonKey(name: 'administrationTime') required String administrationTime,
    @JsonKey(name: 'startDate') required DateTime startDate,
    @JsonKey(name: 'endDate') DateTime? endDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'medicineDetails') List<MedicineDetailsDto>? medicineDetails,
  }) = _MedicineFormUpdateDto;

  factory MedicineFormUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$MedicineFormUpdateDtoFromJson(json);
}

@freezed
sealed class OTPParameterDto with _$OTPParameterDto {
  factory OTPParameterDto(
      {@JsonKey(name: 'emailAddress') String? emailAddress}) = _OTPParameterDto;

  factory OTPParameterDto.fromJson(Map<String, dynamic> json) =>
      _$OTPParameterDtoFromJson(json);
}

@freezed
sealed class OTPValidateParameterDto with _$OTPValidateParameterDto {
  factory OTPValidateParameterDto({
    @JsonKey(name: 'otpNumber') String? otpNumber,
    @JsonKey(name: 'emailAddress') String? emailAddress,
  }) = _OTPValidateParameterDto;

  factory OTPValidateParameterDto.fromJson(Map<String, dynamic> json) =>
      _$OTPValidateParameterDtoFromJson(json);
}

@freezed
sealed class PersonalInfoDto with _$PersonalInfoDto {
  factory PersonalInfoDto({
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'firstNameOther') String? firstNameOther,
    @JsonKey(name: 'lastNameOther') String? lastNameOther,
    @JsonKey(name: 'dob') DateTime? dob,
    @JsonKey(name: 'idType') String? idType,
    @JsonKey(name: 'idExpiryDate') DateTime? idExpiryDate,
    @JsonKey(name: 'nationality') String? nationality,
    @JsonKey(name: 'photoURL') String? photoURL,
  }) = _PersonalInfoDto;

  factory PersonalInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoDtoFromJson(json);
}

@freezed
sealed class PostDto with _$PostDto {
  factory PostDto({
    @JsonKey(name: 'createdById') String? createdById,
    @JsonKey(name: 'createdDateTime') DateTime? createdDateTime,
    @JsonKey(name: 'lastModifiedById') String? lastModifiedById,
    @JsonKey(name: 'lastModifiedDateTime') DateTime? lastModifiedDateTime,
    @JsonKey(name: 'lastModifiedByName') String? lastModifiedByName,
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postType') required String postType,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'publishDate') required DateTime publishDate,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'isAllClass') bool? isAllClass,
    @JsonKey(name: 'isAllLevel') bool? isAllLevel,
    @JsonKey(name: 'postTags') List<PostTagDto>? postTags,
    @JsonKey(name: 'files') List<PostFileDto>? files,
    @JsonKey(name: 'postAssociatedWithStudents')
    List<PostAssociatedWithStudentsDto>? postAssociatedWithStudents,
    @JsonKey(name: 'postStudents') List<PostStudentDto>? postStudents,
    @JsonKey(name: 'postClasses') List<PostClassDto>? postClasses,
    @JsonKey(name: 'postCourses') List<PostCourseDto>? postCourses,
    @JsonKey(name: 'postGoals') List<PostGoalDto>? postGoals,
    @JsonKey(name: 'postReactions') List<PostReactionDto>? postReactions,
    @JsonKey(name: 'postClassString') String? postClassString,
    @JsonKey(name: 'postStudentString') String? postStudentString,
    @JsonKey(name: 'allowComment') bool? allowComment,
    @JsonKey(name: 'viewCount') int? viewCount,
    @JsonKey(name: 'createdByName') String? createdByName,
    @JsonKey(name: 'markedDate') DateTime? markedDate,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'homeSchool') String? homeSchool,
    @JsonKey(name: 'literacy') String? literacy,
    @JsonKey(name: 'numeracy') String? numeracy,
    @JsonKey(name: 'observation') String? observation,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}

@freezed
sealed class PostAssociatedWithStudentsDto
    with _$PostAssociatedWithStudentsDto {
  factory PostAssociatedWithStudentsDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'academicYearId') required String academicYearId,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'classId') required String classId,
    @JsonKey(name: 'studentName') String? studentName,
  }) = _PostAssociatedWithStudentsDto;

  factory PostAssociatedWithStudentsDto.fromJson(Map<String, dynamic> json) =>
      _$PostAssociatedWithStudentsDtoFromJson(json);
}

@freezed
sealed class PostClassDto with _$PostClassDto {
  factory PostClassDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'classId') required String classId,
    @JsonKey(name: 'classname') String? classname,
  }) = _PostClassDto;

  factory PostClassDto.fromJson(Map<String, dynamic> json) =>
      _$PostClassDtoFromJson(json);
}

@freezed
sealed class PostCommentDto with _$PostCommentDto {
  factory PostCommentDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'publishedDate') required DateTime publishedDate,
    @JsonKey(name: 'commentBy') required String commentBy,
    @JsonKey(name: 'threadId') String? threadId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'replies') List<PostCommentDto>? replies,
    @JsonKey(name: 'displayName') String? displayName,
  }) = _PostCommentDto;

  factory PostCommentDto.fromJson(Map<String, dynamic> json) =>
      _$PostCommentDtoFromJson(json);
}

@freezed
sealed class PostCourseDto with _$PostCourseDto {
  factory PostCourseDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'schoolId') required String schoolId,
    @JsonKey(name: 'academicYearId') required String academicYearId,
    @JsonKey(name: 'courseName') String? courseName,
  }) = _PostCourseDto;

  factory PostCourseDto.fromJson(Map<String, dynamic> json) =>
      _$PostCourseDtoFromJson(json);
}

@freezed
sealed class PostFileDto with _$PostFileDto {
  factory PostFileDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'postId') String? postId,
    @JsonKey(name: 'fileName') String? fileName,
    @JsonKey(name: 'contentType') String? contentType,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'thumbnailUrl') String? thumbnailUrl,
    @JsonKey(name: 'sequenceNo') int? sequenceNo,
  }) = _PostFileDto;

  factory PostFileDto.fromJson(Map<String, dynamic> json) =>
      _$PostFileDtoFromJson(json);
}

@freezed
sealed class PostGoalDto with _$PostGoalDto {
  factory PostGoalDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'domain') String? domain,
    @JsonKey(name: 'goal') String? goal,
    @JsonKey(name: 'indicator') String? indicator,
    @JsonKey(name: 'masId') String? masId,
    @JsonKey(name: 'masOrder') String? masOrder,
  }) = _PostGoalDto;

  factory PostGoalDto.fromJson(Map<String, dynamic> json) =>
      _$PostGoalDtoFromJson(json);
}

@freezed
sealed class PostQueryStringParametersDto with _$PostQueryStringParametersDto {
  factory PostQueryStringParametersDto({
    @JsonKey(name: 'pageNumber') int? pageNumber,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'postType') String? postType,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'teacherId') String? teacherId,
    @JsonKey(name: 'startDate_yyyMMdd') String? startDateYyyMMdd,
    @JsonKey(name: 'endDate_yyyMMdd') String? endDateYyyMMdd,
    @JsonKey(name: 'searchString') String? searchString,
    @JsonKey(name: 'getMarkedDays') String? getMarkedDays,
    @JsonKey(name: 'teacherIdFilter') String? teacherIdFilter,
    @JsonKey(name: 'isFilterSearch') bool? isFilterSearch,
  }) = _PostQueryStringParametersDto;

  factory PostQueryStringParametersDto.fromJson(Map<String, dynamic> json) =>
      _$PostQueryStringParametersDtoFromJson(json);
}

@freezed
sealed class PostReactionDto with _$PostReactionDto {
  factory PostReactionDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'reactionType') String? reactionType,
    @JsonKey(name: 'reactionUserId') String? reactionUserId,
    @JsonKey(name: 'reactionUserName') String? reactionUserName,
  }) = _PostReactionDto;

  factory PostReactionDto.fromJson(Map<String, dynamic> json) =>
      _$PostReactionDtoFromJson(json);
}

@freezed
sealed class PostStudentDto with _$PostStudentDto {
  factory PostStudentDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'postId') required String postId,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'academicYearId') required String academicYearId,
    @JsonKey(name: 'studentName') String? studentName,
  }) = _PostStudentDto;

  factory PostStudentDto.fromJson(Map<String, dynamic> json) =>
      _$PostStudentDtoFromJson(json);
}

@freezed
sealed class PostTagDto with _$PostTagDto {
  factory PostTagDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'tag') String? tag,
  }) = _PostTagDto;

  factory PostTagDto.fromJson(Map<String, dynamic> json) =>
      _$PostTagDtoFromJson(json);
}

@freezed
sealed class PostToPDFParametersDto with _$PostToPDFParametersDto {
  factory PostToPDFParametersDto({
    @JsonKey(name: 'schoolId') required String schoolId,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'studentIds') List<String>? studentIds,
    @JsonKey(name: 'postType') String? postType,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'startDate') DateTime? startDate,
    @JsonKey(name: 'endDate') DateTime? endDate,
    @JsonKey(name: 'separateFilePerStudent') bool? separateFilePerStudent,
  }) = _PostToPDFParametersDto;

  factory PostToPDFParametersDto.fromJson(Map<String, dynamic> json) =>
      _$PostToPDFParametersDtoFromJson(json);
}

@freezed
sealed class RefreshTokenParameterDto with _$RefreshTokenParameterDto {
  factory RefreshTokenParameterDto({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'refreshToken') required String refreshToken,
  }) = _RefreshTokenParameterDto;

  factory RefreshTokenParameterDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenParameterDtoFromJson(json);
}

@freezed
sealed class ResetPasswordParameterDto with _$ResetPasswordParameterDto {
  factory ResetPasswordParameterDto({
    @JsonKey(name: 'otpNumber') String? otpNumber,
    @JsonKey(name: 'emailAddress') String? emailAddress,
    @JsonKey(name: 'password') String? password,
  }) = _ResetPasswordParameterDto;

  factory ResetPasswordParameterDto.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordParameterDtoFromJson(json);
}

@freezed
sealed class ResourcePermissionDto with _$ResourcePermissionDto {
  factory ResourcePermissionDto({
    @JsonKey(name: 'levels') String? levels,
    @JsonKey(name: 'classes') String? classes,
    @JsonKey(name: 'students') String? students,
    @JsonKey(name: 'batchNumber') String? batchNumber,
    @JsonKey(name: 'attendeeReference') String? attendeeReference,
  }) = _ResourcePermissionDto;

  factory ResourcePermissionDto.fromJson(Map<String, dynamic> json) =>
      _$ResourcePermissionDtoFromJson(json);
}

@freezed
sealed class ResponseStatusDto with _$ResponseStatusDto {
  factory ResponseStatusDto({
    @JsonKey(name: 'response') ResponseTypeDto? response,
    @JsonKey(name: 'time') DateTime? time,
    @JsonKey(name: '@odata.type') String? odataType,
  }) = _ResponseStatusDto;

  factory ResponseStatusDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseStatusDtoFromJson(json);
}

enum ResponseTypeDto {
  @JsonValue('None')
  none,
  @JsonValue('Organizer')
  organizer,
  @JsonValue('TentativelyAccepted')
  tentativelyAccepted,
  @JsonValue('Accepted')
  accepted,
  @JsonValue('Declined')
  declined,
  @JsonValue('NotResponded')
  notResponded,
}

extension ResponseTypeDtoExt on ResponseTypeDto {
  static final Map<String, ResponseTypeDto> _names = {
    'None': ResponseTypeDto.none,
    'Organizer': ResponseTypeDto.organizer,
    'TentativelyAccepted': ResponseTypeDto.tentativelyAccepted,
    'Accepted': ResponseTypeDto.accepted,
    'Declined': ResponseTypeDto.declined,
    'NotResponded': ResponseTypeDto.notResponded,
  };
  static ResponseTypeDto fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for ResponseTypeDto');
  String get name => switch (this) {
        ResponseTypeDto.none => 'None',
        ResponseTypeDto.organizer => 'Organizer',
        ResponseTypeDto.tentativelyAccepted => 'TentativelyAccepted',
        ResponseTypeDto.accepted => 'Accepted',
        ResponseTypeDto.declined => 'Declined',
        ResponseTypeDto.notResponded => 'NotResponded',
      };
}

@freezed
sealed class StudentDto with _$StudentDto {
  factory StudentDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'studentNo') String? studentNo,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'account') AccountDto? account,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'registrationDate') DateTime? registrationDate,
    @JsonKey(name: 'schoolName') String? schoolName,
    @JsonKey(name: 'studentLevelId') String? studentLevelId,
    @JsonKey(name: 'levelId') String? levelId,
    @JsonKey(name: 'levelName') String? levelName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
  }) = _StudentDto;

  factory StudentDto.fromJson(Map<String, dynamic> json) =>
      _$StudentDtoFromJson(json);
}

@freezed
sealed class StudentBaseInfoVODto with _$StudentBaseInfoVODto {
  factory StudentBaseInfoVODto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'schoolName') String? schoolName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'levelId') String? levelId,
    @JsonKey(name: 'levelName') String? levelName,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'registrationDate') DateTime? registrationDate,
  }) = _StudentBaseInfoVODto;

  factory StudentBaseInfoVODto.fromJson(Map<String, dynamic> json) =>
      _$StudentBaseInfoVODtoFromJson(json);
}

@freezed
sealed class StudentMiniDailyLogVODto with _$StudentMiniDailyLogVODto {
  factory StudentMiniDailyLogVODto({
    @JsonKey(name: 'student') StudentDto? student,
    @JsonKey(name: 'attendanceStatus') AttendanceVODto? attendanceStatus,
    @JsonKey(name: 'lastTemperatureStatus')
    LastTemperatureVODto? lastTemperatureStatus,
    @JsonKey(name: 'signInOutStatus') CheckInOutVODto? signInOutStatus,
  }) = _StudentMiniDailyLogVODto;

  factory StudentMiniDailyLogVODto.fromJson(Map<String, dynamic> json) =>
      _$StudentMiniDailyLogVODtoFromJson(json);
}

@freezed
sealed class StudentStatisticDto with _$StudentStatisticDto {
  factory StudentStatisticDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'academicYear') String? academicYear,
    @JsonKey(name: 'termId') String? termId,
    @JsonKey(name: 'term') String? term,
    @JsonKey(name: 'weightInKg') num? weightInKg,
    @JsonKey(name: 'heightInCm') num? heightInCm,
    @JsonKey(name: 'status') String? status,
  }) = _StudentStatisticDto;

  factory StudentStatisticDto.fromJson(Map<String, dynamic> json) =>
      _$StudentStatisticDtoFromJson(json);
}

@freezed
sealed class StudentWithConfigVODto with _$StudentWithConfigVODto {
  factory StudentWithConfigVODto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'schoolName') String? schoolName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'levelId') String? levelId,
    @JsonKey(name: 'levelName') String? levelName,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'registrationDate') DateTime? registrationDate,
    @JsonKey(name: 'config') ChildConfigVODto? config,
  }) = _StudentWithConfigVODto;

  factory StudentWithConfigVODto.fromJson(Map<String, dynamic> json) =>
      _$StudentWithConfigVODtoFromJson(json);
}

@freezed
sealed class TagClassDto with _$TagClassDto {
  factory TagClassDto({
    @JsonKey(name: 'teacherId') String? teacherId,
    @JsonKey(name: 'classId') String? classId,
  }) = _TagClassDto;

  factory TagClassDto.fromJson(Map<String, dynamic> json) =>
      _$TagClassDtoFromJson(json);
}

@freezed
sealed class TagLevelDto with _$TagLevelDto {
  factory TagLevelDto({
    @JsonKey(name: 'teacherId') String? teacherId,
    @JsonKey(name: 'levelId') String? levelId,
  }) = _TagLevelDto;

  factory TagLevelDto.fromJson(Map<String, dynamic> json) =>
      _$TagLevelDtoFromJson(json);
}

@freezed
sealed class TagStudentsDto with _$TagStudentsDto {
  factory TagStudentsDto({
    @JsonKey(name: 'teacherId') String? teacherId,
    @JsonKey(name: 'studentId') String? studentId,
  }) = _TagStudentsDto;

  factory TagStudentsDto.fromJson(Map<String, dynamic> json) =>
      _$TagStudentsDtoFromJson(json);
}

@freezed
sealed class TeacherServiceQueryParameterDto
    with _$TeacherServiceQueryParameterDto {
  factory TeacherServiceQueryParameterDto({
    @JsonKey(name: 'pageNumber') int? pageNumber,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'overrideIsAciveFilter') bool? overrideIsAciveFilter,
    @JsonKey(name: 'academicYearId') String? academicYearId,
    @JsonKey(name: 'schoolId') String? schoolId,
  }) = _TeacherServiceQueryParameterDto;

  factory TeacherServiceQueryParameterDto.fromJson(Map<String, dynamic> json) =>
      _$TeacherServiceQueryParameterDtoFromJson(json);
}

@freezed
sealed class TemperatureCheckDto with _$TemperatureCheckDto {
  factory TemperatureCheckDto({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'temperature') required num temperature,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _TemperatureCheckDto;

  factory TemperatureCheckDto.fromJson(Map<String, dynamic> json) =>
      _$TemperatureCheckDtoFromJson(json);
}

@freezed
sealed class TemperatureCheckParameterDto with _$TemperatureCheckParameterDto {
  factory TemperatureCheckParameterDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') required String studentId,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'temperature') required num temperature,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'utcDate') DateTime? utcDate,
  }) = _TemperatureCheckParameterDto;

  factory TemperatureCheckParameterDto.fromJson(Map<String, dynamic> json) =>
      _$TemperatureCheckParameterDtoFromJson(json);
}

@freezed
sealed class TimeSlotDto with _$TimeSlotDto {
  factory TimeSlotDto({
    @JsonKey(name: 'end') DateTimeTimeZoneDto? end,
    @JsonKey(name: 'start') DateTimeTimeZoneDto? start,
    @JsonKey(name: '@odata.type') String? odataType,
  }) = _TimeSlotDto;

  factory TimeSlotDto.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotDtoFromJson(json);
}

@freezed
sealed class UserConfigDto with _$UserConfigDto {
  factory UserConfigDto({
    @JsonKey(name: 'notificationFrequent') String? notificationFrequent,
    @JsonKey(name: 'showDailyRoutine') bool? showDailyRoutine,
    @JsonKey(name: 'enablePTCBooking') bool? enablePTCBooking,
  }) = _UserConfigDto;

  factory UserConfigDto.fromJson(Map<String, dynamic> json) =>
      _$UserConfigDtoFromJson(json);
}

T _throwStateError<T>(String message) => throw StateError(message);
