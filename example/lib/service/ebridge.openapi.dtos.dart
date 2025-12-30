// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

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
    @JsonKey(name: 'accountType') int? accountType,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'contacts') List<ContactApiDto>? contacts,
    @JsonKey(name: 'identifierType') int? identifierType,
    @JsonKey(name: 'accountImage') ImageUrlResultDto? accountImage,
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
    @JsonKey(name: 'level') String? level,
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
    @JsonKey(name: 'learningDomains')
    List<LearningDomainApiDto>? learningDomains,
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
    @JsonKey(name: 'attachments') List<ContentAttachmentApiDto>? attachments,
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
sealed class ContentAttachmentApiDto with _$ContentAttachmentApiDto {
  factory ContentAttachmentApiDto({
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'description') String? description,
  }) = _ContentAttachmentApiDto;

  factory ContentAttachmentApiDto.fromJson(Map<String, dynamic> json) =>
      _$ContentAttachmentApiDtoFromJson(json);
}

@freezed
sealed class ConversationApiDto with _$ConversationApiDto {
  factory ConversationApiDto({
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'topic') required String topic,
    @JsonKey(name: 'isClosed') bool? isClosed,
    @JsonKey(name: 'dateClosed') DateTime? dateClosed,
    @JsonKey(name: 'initiatorAccountId') int? initiatorAccountId,
    @JsonKey(name: 'initiatorAccountName') String? initiatorAccountName,
    @JsonKey(name: 'recipientAccountId') int? recipientAccountId,
    @JsonKey(name: 'recipientAccountName') String? recipientAccountName,
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
    @JsonKey(name: 'senderAccountName') String? senderAccountName,
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
sealed class CreditNoteApiDto with _$CreditNoteApiDto {
  factory CreditNoteApiDto({
    @JsonKey(name: 'creditNoteId') int? creditNoteId,
    @JsonKey(name: 'entityNumber') String? entityNumber,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'creditNoteDate') DateTime? creditNoteDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'cancellationRemarks') String? cancellationRemarks,
    @JsonKey(name: 'totalAmountBeforeTax') num? totalAmountBeforeTax,
    @JsonKey(name: 'totalTaxAmount') num? totalTaxAmount,
    @JsonKey(name: 'totalAmountAfterTax') num? totalAmountAfterTax,
    @JsonKey(name: 'printUrl') String? printUrl,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _CreditNoteApiDto;

  factory CreditNoteApiDto.fromJson(Map<String, dynamic> json) =>
      _$CreditNoteApiDtoFromJson(json);
}

@freezed
sealed class CreditNoteItemApiDto with _$CreditNoteItemApiDto {
  factory CreditNoteItemApiDto({
    @JsonKey(name: 'creditNoteItemId') int? creditNoteItemId,
    @JsonKey(name: 'creditNoteId') int? creditNoteId,
    @JsonKey(name: 'creditNote') CreditNoteApiDto? creditNote,
    @JsonKey(name: 'invoiceId') int? invoiceId,
    @JsonKey(name: 'feeItemId') int? feeItemId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'quantity') num? quantity,
    @JsonKey(name: 'unitPrice') num? unitPrice,
    @JsonKey(name: 'taxRate') num? taxRate,
    @JsonKey(name: 'amountBeforeTax') num? amountBeforeTax,
    @JsonKey(name: 'taxAmount') num? taxAmount,
    @JsonKey(name: 'amountAfterTax') num? amountAfterTax,
    @JsonKey(name: 'creditNoteStatus') int? creditNoteStatus,
    @JsonKey(name: 'printUrl') String? printUrl,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _CreditNoteItemApiDto;

  factory CreditNoteItemApiDto.fromJson(Map<String, dynamic> json) =>
      _$CreditNoteItemApiDtoFromJson(json);
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
    @JsonKey(name: 'deleteRequestDate') DateTime? deleteRequestDate,
    @JsonKey(name: 'branchRoles') List<UserBranchRoleDto>? branchRoles,
  }) = _CurrentUserInfoDto;

  factory CurrentUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserInfoDtoFromJson(json);
}

@freezed
sealed class DailyLogApiDto with _$DailyLogApiDto {
  factory DailyLogApiDto({
    @JsonKey(name: 'dayLogs') List<DayLogApiDto>? dayLogs,
    @JsonKey(name: 'student') StudentApiDto? student,
  }) = _DailyLogApiDto;

  factory DailyLogApiDto.fromJson(Map<String, dynamic> json) =>
      _$DailyLogApiDtoFromJson(json);
}

@freezed
sealed class DayLogApiDto with _$DayLogApiDto {
  factory DayLogApiDto({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'attendanceList')
    required List<StudentAttendanceApiDto> attendanceList,
    @JsonKey(name: 'temperatureList')
    required List<StudentTemperatureApiDto> temperatureList,
    @JsonKey(name: 'checkInOutList')
    required List<StudentCheckInOutApiDto> checkInOutList,
    @JsonKey(name: 'infantWellnessActivityList')
    required List<InfantWellnessActivityDTODto> infantWellnessActivityList,
    @JsonKey(name: 'infantCareActivityList')
    required List<InfantCareActivityApiDto> infantCareActivityList,
    @JsonKey(name: 'infantCareActivityLogList')
    required List<InfantCareActivityLogApiDto> infantCareActivityLogList,
  }) = _DayLogApiDto;

  factory DayLogApiDto.fromJson(Map<String, dynamic> json) =>
      _$DayLogApiDtoFromJson(json);
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
sealed class FeedActivityDto with _$FeedActivityDto {
  factory FeedActivityDto({
    @JsonKey(name: 'feedType') int? feedType,
    @JsonKey(name: 'bottleSource') String? bottleSource,
    @JsonKey(name: 'bottleVolume') String? bottleVolume,
    @JsonKey(name: 'latchOnSide') String? latchOnSide,
    @JsonKey(name: 'solidServingAmount') String? solidServingAmount,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _FeedActivityDto;

  factory FeedActivityDto.fromJson(Map<String, dynamic> json) =>
      _$FeedActivityDtoFromJson(json);
}

@freezed
sealed class FileUploadParamDto with _$FileUploadParamDto {
  factory FileUploadParamDto({
    @JsonKey(name: 'base64') required String base64,
    @JsonKey(name: 'fileName') required String fileName,
    @JsonKey(name: 'contentType') int? contentType,
    @JsonKey(name: 'entityId') String? entityId,
    @JsonKey(name: 'subFolders') List<String>? subFolders,
  }) = _FileUploadParamDto;

  factory FileUploadParamDto.fromJson(Map<String, dynamic> json) =>
      _$FileUploadParamDtoFromJson(json);
}

@freezed
sealed class FileUploadResultDto with _$FileUploadResultDto {
  factory FileUploadResultDto({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'fileName') String? fileName,
  }) = _FileUploadResultDto;

  factory FileUploadResultDto.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResultDtoFromJson(json);
}

@freezed
sealed class HygieneActivityDto with _$HygieneActivityDto {
  factory HygieneActivityDto({
    @JsonKey(name: 'hygieneType') int? hygieneType,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _HygieneActivityDto;

  factory HygieneActivityDto.fromJson(Map<String, dynamic> json) =>
      _$HygieneActivityDtoFromJson(json);
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
sealed class InfantWellnessActivityDto with _$InfantWellnessActivityDto {
  factory InfantWellnessActivityDto({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _InfantWellnessActivityDto;

  factory InfantWellnessActivityDto.fromJson(Map<String, dynamic> json) =>
      _$InfantWellnessActivityDtoFromJson(json);
}

@freezed
sealed class InfantWellnessActivityDtoDto with _$InfantWellnessActivityDtoDto {
  factory InfantWellnessActivityDtoDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'feedType') int? feedType,
    @JsonKey(name: 'bottleSource') String? bottleSource,
    @JsonKey(name: 'bottleVolume') String? bottleVolume,
    @JsonKey(name: 'latchOnSide') String? latchOnSide,
    @JsonKey(name: 'solidServingAmount') String? solidServingAmount,
    @JsonKey(name: 'poopTexture') int? poopTexture,
    @JsonKey(name: 'poopColour') int? poopColour,
    @JsonKey(name: 'hygieneType') int? hygieneType,
    @JsonKey(name: 'restEndTime') String? restEndTime,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
  }) = _InfantWellnessActivityDtoDto;

  factory InfantWellnessActivityDtoDto.fromJson(Map<String, dynamic> json) =>
      _$InfantWellnessActivityDtoDtoFromJson(json);
}

@freezed
sealed class InfantWellnessActivityDTODto with _$InfantWellnessActivityDTODto {
  factory InfantWellnessActivityDTODto({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activities') List<InfantWellnessActivityDto>? activities,
    @JsonKey(name: 'lastFeed') FeedActivityDto? lastFeed,
    @JsonKey(name: 'lasRest') RestActivityDto? lasRest,
    @JsonKey(name: 'lastPoop') PoopActivityDto? lastPoop,
    @JsonKey(name: 'lastHygiene') HygieneActivityDto? lastHygiene,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _InfantWellnessActivityDTODto;

  factory InfantWellnessActivityDTODto.fromJson(Map<String, dynamic> json) =>
      _$InfantWellnessActivityDTODtoFromJson(json);
}

@freezed
sealed class InvoiceApiDto with _$InvoiceApiDto {
  factory InvoiceApiDto({
    @JsonKey(name: 'invoiceId') int? invoiceId,
    @JsonKey(name: 'entityNumber') String? entityNumber,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'account') AccountApiDto? account,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'branch') BranchApiDto? branch,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'billingYear') int? billingYear,
    @JsonKey(name: 'billingMonth') int? billingMonth,
    @JsonKey(name: 'invoiceDate') DateTime? invoiceDate,
    @JsonKey(name: 'dueDate') String? dueDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'invoiceTitle') String? invoiceTitle,
    @JsonKey(name: 'voidRemarks') String? voidRemarks,
    @JsonKey(name: 'totalTaxAmount') num? totalTaxAmount,
    @JsonKey(name: 'totalChargeableAmountBeforeTax')
    num? totalChargeableAmountBeforeTax,
    @JsonKey(name: 'totalChargeableAmountAfterTax')
    num? totalChargeableAmountAfterTax,
    @JsonKey(name: 'totalDeductibleAmountBeforeTax')
    num? totalDeductibleAmountBeforeTax,
    @JsonKey(name: 'totalDeductibleAmountAfterTax')
    num? totalDeductibleAmountAfterTax,
    @JsonKey(name: 'totalInvoiceAmount') num? totalInvoiceAmount,
    @JsonKey(name: 'totalPaidAmount') num? totalPaidAmount,
    @JsonKey(name: 'totalOutstandingAmount') num? totalOutstandingAmount,
    @JsonKey(name: 'items') List<InvoiceItemApiDto>? items,
    @JsonKey(name: 'receiptItems') List<ReceiptItemApiDto>? receiptItems,
    @JsonKey(name: 'creditNoteItems')
    List<CreditNoteItemApiDto>? creditNoteItems,
    @JsonKey(name: 'printUrl') String? printUrl,
    @JsonKey(name: 'payNowQrString') String? payNowQrString,
    @JsonKey(name: 'payNowQrImageBase64') String? payNowQrImageBase64,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _InvoiceApiDto;

  factory InvoiceApiDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceApiDtoFromJson(json);
}

@freezed
sealed class InvoiceItemApiDto with _$InvoiceItemApiDto {
  factory InvoiceItemApiDto({
    @JsonKey(name: 'invoiceItemId') int? invoiceItemId,
    @JsonKey(name: 'invoiceId') int? invoiceId,
    @JsonKey(name: 'feeItemId') int? feeItemId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'quantity') num? quantity,
    @JsonKey(name: 'unitPrice') num? unitPrice,
    @JsonKey(name: 'taxRate') num? taxRate,
    @JsonKey(name: 'amountBeforeTax') num? amountBeforeTax,
    @JsonKey(name: 'taxAmount') num? taxAmount,
    @JsonKey(name: 'amountAfterTax') num? amountAfterTax,
    @JsonKey(name: 'isDeductible') bool? isDeductible,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _InvoiceItemApiDto;

  factory InvoiceItemApiDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemApiDtoFromJson(json);
}

@freezed
sealed class LearningDomainApiDto with _$LearningDomainApiDto {
  factory LearningDomainApiDto({
    @JsonKey(name: 'learningDomainId') int? learningDomainId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'learningObjectives')
    List<LearningObjectiveApiDto>? learningObjectives,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _LearningDomainApiDto;

  factory LearningDomainApiDto.fromJson(Map<String, dynamic> json) =>
      _$LearningDomainApiDtoFromJson(json);
}

@freezed
sealed class LearningObjectiveApiDto with _$LearningObjectiveApiDto {
  factory LearningObjectiveApiDto({
    @JsonKey(name: 'learningObjectiveId') int? learningObjectiveId,
    @JsonKey(name: 'learningDomainId') int? learningDomainId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _LearningObjectiveApiDto;

  factory LearningObjectiveApiDto.fromJson(Map<String, dynamic> json) =>
      _$LearningObjectiveApiDtoFromJson(json);
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
sealed class LookUpDto with _$LookUpDto {
  factory LookUpDto({
    @JsonKey(name: 'lookUpType') int? lookUpType,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _LookUpDto;

  factory LookUpDto.fromJson(Map<String, dynamic> json) =>
      _$LookUpDtoFromJson(json);
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
sealed class PagedResultOfDailyLogApiDto with _$PagedResultOfDailyLogApiDto {
  factory PagedResultOfDailyLogApiDto({
    @JsonKey(name: 'items') List<DailyLogApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfDailyLogApiDto;

  factory PagedResultOfDailyLogApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfDailyLogApiDtoFromJson(json);
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
sealed class PagedResultOfInvoiceApiDto with _$PagedResultOfInvoiceApiDto {
  factory PagedResultOfInvoiceApiDto({
    @JsonKey(name: 'items') List<InvoiceApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfInvoiceApiDto;

  factory PagedResultOfInvoiceApiDto.fromJson(Map<String, dynamic> json) =>
      _$PagedResultOfInvoiceApiDtoFromJson(json);
}

@freezed
sealed class PagedResultOfLearningDomainApiDto
    with _$PagedResultOfLearningDomainApiDto {
  factory PagedResultOfLearningDomainApiDto({
    @JsonKey(name: 'items') List<LearningDomainApiDto>? items,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'hasNextPage') bool? hasNextPage,
    @JsonKey(name: 'hasPreviousPage') bool? hasPreviousPage,
    @JsonKey(name: 'totalPages') int? totalPages,
  }) = _PagedResultOfLearningDomainApiDto;

  factory PagedResultOfLearningDomainApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$PagedResultOfLearningDomainApiDtoFromJson(json);
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
sealed class PoopActivityDto with _$PoopActivityDto {
  factory PoopActivityDto({
    @JsonKey(name: 'poopTexture') int? poopTexture,
    @JsonKey(name: 'poopColour') int? poopColour,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _PoopActivityDto;

  factory PoopActivityDto.fromJson(Map<String, dynamic> json) =>
      _$PoopActivityDtoFromJson(json);
}

@freezed
sealed class ProblemDetailsDto with _$ProblemDetailsDto {
  factory ProblemDetailsDto({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'detail') String? detail,
    @JsonKey(name: 'instance') String? instance,
  }) = _ProblemDetailsDto;

  factory ProblemDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsDtoFromJson(json);
}

@freezed
sealed class ReceiptApiDto with _$ReceiptApiDto {
  factory ReceiptApiDto({
    @JsonKey(name: 'receiptId') int? receiptId,
    @JsonKey(name: 'entityNumber') String? entityNumber,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'paymentReference') String? paymentReference,
    @JsonKey(name: 'paymentMethod') int? paymentMethod,
    @JsonKey(name: 'paymentDate') DateTime? paymentDate,
    @JsonKey(name: 'receiptDate') DateTime? receiptDate,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'voidRemarks') String? voidRemarks,
    @JsonKey(name: 'totalReceiptAmount') num? totalReceiptAmount,
    @JsonKey(name: 'printUrl') String? printUrl,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ReceiptApiDto;

  factory ReceiptApiDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptApiDtoFromJson(json);
}

@freezed
sealed class ReceiptItemApiDto with _$ReceiptItemApiDto {
  factory ReceiptItemApiDto({
    @JsonKey(name: 'receiptItemId') int? receiptItemId,
    @JsonKey(name: 'receiptId') int? receiptId,
    @JsonKey(name: 'receipt') ReceiptApiDto? receipt,
    @JsonKey(name: 'invoiceId') int? invoiceId,
    @JsonKey(name: 'appliedAmount') num? appliedAmount,
    @JsonKey(name: 'receiptStatus') int? receiptStatus,
    @JsonKey(name: 'paymentMethod') int? paymentMethod,
    @JsonKey(name: 'paymentDate') DateTime? paymentDate,
    @JsonKey(name: 'printUrl') String? printUrl,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
  }) = _ReceiptItemApiDto;

  factory ReceiptItemApiDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptItemApiDtoFromJson(json);
}

@freezed
sealed class RestActivityDto with _$RestActivityDto {
  factory RestActivityDto({
    @JsonKey(name: 'restDuration') int? restDuration,
    @JsonKey(name: 'restEndTime') String? restEndTime,
    @JsonKey(name: 'restEndTimeBridge') String? restEndTimeBridge,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'activityType') int? activityType,
    @JsonKey(name: 'activityDate') String? activityDate,
    @JsonKey(name: 'activityDateBridge') DateTime? activityDateBridge,
    @JsonKey(name: 'activityTime') String? activityTime,
    @JsonKey(name: 'activityTimeBridge') String? activityTimeBridge,
    @JsonKey(name: 'carriedOutBy') String? carriedOutBy,
    @JsonKey(name: 'nextActivityDate') String? nextActivityDate,
    @JsonKey(name: 'nextActivityDateBridge') DateTime? nextActivityDateBridge,
    @JsonKey(name: 'nextActivityTime') String? nextActivityTime,
    @JsonKey(name: 'nextActivityTimeBridge') String? nextActivityTimeBridge,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'createdByUserId') String? createdByUserId,
    @JsonKey(name: 'createdDate') DateTime? createdDate,
    @JsonKey(name: 'lastUpdatedByUserId') String? lastUpdatedByUserId,
    @JsonKey(name: 'updatedDate') DateTime? updatedDate,
    @JsonKey(name: 'integrationRefId') String? integrationRefId,
  }) = _RestActivityDto;

  factory RestActivityDto.fromJson(Map<String, dynamic> json) =>
      _$RestActivityDtoFromJson(json);
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
    @JsonKey(name: 'branchCode') String? branchCode,
    @JsonKey(name: 'branchName') String? branchName,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'identifier') String? identifier,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'start') String? start,
    @JsonKey(name: 'end') String? end,
    @JsonKey(name: 'enrolmentDate') String? enrolmentDate,
    @JsonKey(name: 'admissionDate') String? admissionDate,
    @JsonKey(name: 'withdrawalDate') String? withdrawalDate,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'countSchoolDays') int? countSchoolDays,
    @JsonKey(name: 'countPresent') int? countPresent,
    @JsonKey(name: 'countAbsent') int? countAbsent,
    @JsonKey(name: 'rate') int? rate,
    @JsonKey(name: 'totalSchoolDays') int? totalSchoolDays,
    @JsonKey(name: 'rateV2') int? rateV2,
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
    @JsonKey(name: 'relationToChildId') int? relationToChildId,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'branchId') int? branchId,
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'statusReasons')
    List<AuthorisedPersonDeactivationReasonApiDto>? statusReasons,
    @JsonKey(name: 'authorisedPersonImage')
    ImageUrlResultDto? authorisedPersonImage,
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
    StudentAuthorisedPersonApiDto? checkOutAuthorisedPerson,
    @JsonKey(name: 'temperatures') List<dynamic>? temperatures,
    @JsonKey(name: 'checkInImage') ImageUrlResultDto? checkInImage,
    @JsonKey(name: 'checkOutImage') ImageUrlResultDto? checkOutImage,
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
sealed class StudentCheckInOutCreateRequestDto
    with _$StudentCheckInOutCreateRequestDto {
  factory StudentCheckInOutCreateRequestDto({
    @JsonKey(name: 'accountId') int? accountId,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkInRemarks') String? checkInRemarks,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'checkOutRemarks') String? checkOutRemarks,
    @JsonKey(name: 'checkInAuthorisedPersonId') int? checkInAuthorisedPersonId,
    @JsonKey(name: 'checkOutAuthorisedPersonId')
    int? checkOutAuthorisedPersonId,
    @JsonKey(name: 'checkInImageBase64') String? checkInImageBase64,
    @JsonKey(name: 'checkOutImageBase64') String? checkOutImageBase64,
  }) = _StudentCheckInOutCreateRequestDto;

  factory StudentCheckInOutCreateRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$StudentCheckInOutCreateRequestDtoFromJson(json);
}

@freezed
sealed class StudentCheckInOutUpdateRequestDto
    with _$StudentCheckInOutUpdateRequestDto {
  factory StudentCheckInOutUpdateRequestDto({
    @JsonKey(name: 'studentCheckInOutId') int? studentCheckInOutId,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'checkOutRemarks') String? checkOutRemarks,
    @JsonKey(name: 'checkOutAuthorisedPersonId')
    int? checkOutAuthorisedPersonId,
    @JsonKey(name: 'checkOutImageBase64') String? checkOutImageBase64,
  }) = _StudentCheckInOutUpdateRequestDto;

  factory StudentCheckInOutUpdateRequestDto.fromJson(
          Map<String, dynamic> json) =>
      _$StudentCheckInOutUpdateRequestDtoFromJson(json);
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
sealed class SurveyApiDto with _$SurveyApiDto {
  factory SurveyApiDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'parentAccountId') int? parentAccountId,
    @JsonKey(name: 'url') String? url,
  }) = _SurveyApiDto;

  factory SurveyApiDto.fromJson(Map<String, dynamic> json) =>
      _$SurveyApiDtoFromJson(json);
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
