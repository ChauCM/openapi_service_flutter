// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebridge.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcademicYearApiDto _$AcademicYearApiDtoFromJson(Map<String, dynamic> json) =>
    _AcademicYearApiDto(
      academicYearId: (json['academicYearId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$AcademicYearApiDtoToJson(_AcademicYearApiDto instance) =>
    <String, dynamic>{
      'academicYearId': instance.academicYearId,
      'branchId': instance.branchId,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

_AccountApiDto _$AccountApiDtoFromJson(Map<String, dynamic> json) =>
    _AccountApiDto(
      accountId: (json['accountId'] as num?)?.toInt(),
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      contacts: (json['contacts'] as List<dynamic>?)
          ?.map((e) => ContactApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifierType: (json['identifierType'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$AccountApiDtoToJson(_AccountApiDto instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'name': instance.name,
      'identifier': instance.identifier,
      'contacts': instance.contacts,
      'identifierType': instance.identifierType,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_AccountDeviceSessionApiDto _$AccountDeviceSessionApiDtoFromJson(
        Map<String, dynamic> json) =>
    _AccountDeviceSessionApiDto(
      accountDeviceSessionId: (json['accountDeviceSessionId'] as num).toInt(),
      accountId: (json['accountId'] as num).toInt(),
      pushNotificationToken: json['pushNotificationToken'] as String?,
      name: json['name'] as String?,
      os: json['os'] as String?,
      osVersion: json['osVersion'] as String?,
      deviceId: json['deviceId'] as String,
      model: json['model'] as String?,
      manufacturer: json['manufacturer'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$AccountDeviceSessionApiDtoToJson(
        _AccountDeviceSessionApiDto instance) =>
    <String, dynamic>{
      'accountDeviceSessionId': instance.accountDeviceSessionId,
      'accountId': instance.accountId,
      'pushNotificationToken': instance.pushNotificationToken,
      'name': instance.name,
      'os': instance.os,
      'osVersion': instance.osVersion,
      'deviceId': instance.deviceId,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_AccountDeviceSessionApiPutDto _$AccountDeviceSessionApiPutDtoFromJson(
        Map<String, dynamic> json) =>
    _AccountDeviceSessionApiPutDto(
      pushNotificationToken: json['pushNotificationToken'] as String?,
      name: json['name'] as String?,
      os: json['os'] as String?,
      osVersion: json['osVersion'] as String?,
      model: json['model'] as String?,
      manufacturer: json['manufacturer'] as String?,
    );

Map<String, dynamic> _$AccountDeviceSessionApiPutDtoToJson(
        _AccountDeviceSessionApiPutDto instance) =>
    <String, dynamic>{
      'pushNotificationToken': instance.pushNotificationToken,
      'name': instance.name,
      'os': instance.os,
      'osVersion': instance.osVersion,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
    };

_AccountImageApiDto _$AccountImageApiDtoFromJson(Map<String, dynamic> json) =>
    _AccountImageApiDto(
      imageUrlResult: json['imageUrlResult'] == null
          ? null
          : ImageUrlResultDto.fromJson(
              json['imageUrlResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountImageApiDtoToJson(_AccountImageApiDto instance) =>
    <String, dynamic>{
      'imageUrlResult': instance.imageUrlResult,
    };

_AddressApiDto _$AddressApiDtoFromJson(Map<String, dynamic> json) =>
    _AddressApiDto(
      addressId: (json['addressId'] as num?)?.toInt(),
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      countryId: (json['countryId'] as num?)?.toInt(),
      country: json['country'] == null
          ? null
          : CountryApiDto.fromJson(json['country'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$AddressApiDtoToJson(_AddressApiDto instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'countryId': instance.countryId,
      'country': instance.country,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_AttendanceRecordDTODto _$AttendanceRecordDTODtoFromJson(
        Map<String, dynamic> json) =>
    _AttendanceRecordDTODto(
      id: (json['id'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      date: json['date'] as String?,
      isPresent: json['isPresent'] as bool?,
      status: json['status'] as String?,
      isWeekend: json['isWeekend'] as bool?,
      isClassClosure: json['isClassClosure'] as bool?,
      remarks: json['remarks'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      createdBy: json['createdBy'] as String?,
      updatedBy: json['updatedBy'] as String?,
    );

Map<String, dynamic> _$AttendanceRecordDTODtoToJson(
        _AttendanceRecordDTODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'classId': instance.classId,
      'date': instance.date,
      'isPresent': instance.isPresent,
      'status': instance.status,
      'isWeekend': instance.isWeekend,
      'isClassClosure': instance.isClassClosure,
      'remarks': instance.remarks,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
    };

_AuthorisedPersonDeactivationReasonApiDto
    _$AuthorisedPersonDeactivationReasonApiDtoFromJson(
            Map<String, dynamic> json) =>
        _AuthorisedPersonDeactivationReasonApiDto(
          authorisedPersonDeactivationReasonId:
              (json['authorisedPersonDeactivationReasonId'] as num?)?.toInt(),
          authorisedPersonId: (json['authorisedPersonId'] as num?)?.toInt(),
          activated: json['activated'] as bool?,
          reason: json['reason'] as String?,
          isDeleted: json['isDeleted'] as bool?,
          createdByUserId: json['createdByUserId'] as String?,
          createdDate: json['createdDate'] == null
              ? null
              : DateTime.parse(json['createdDate'] as String),
          lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
          updatedDate: json['updatedDate'] == null
              ? null
              : DateTime.parse(json['updatedDate'] as String),
        );

Map<String, dynamic> _$AuthorisedPersonDeactivationReasonApiDtoToJson(
        _AuthorisedPersonDeactivationReasonApiDto instance) =>
    <String, dynamic>{
      'authorisedPersonDeactivationReasonId':
          instance.authorisedPersonDeactivationReasonId,
      'authorisedPersonId': instance.authorisedPersonId,
      'activated': instance.activated,
      'reason': instance.reason,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_AuthorisedPersonReasonApiDtoRequestDto
    _$AuthorisedPersonReasonApiDtoRequestDtoFromJson(
            Map<String, dynamic> json) =>
        _AuthorisedPersonReasonApiDtoRequestDto(
          reason: json['reason'] as String,
        );

Map<String, dynamic> _$AuthorisedPersonReasonApiDtoRequestDtoToJson(
        _AuthorisedPersonReasonApiDtoRequestDto instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_BranchApiDto _$BranchApiDtoFromJson(Map<String, dynamic> json) =>
    _BranchApiDto(
      branchId: (json['branchId'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : AccountApiDto.fromJson(json['account'] as Map<String, dynamic>),
      companyId: (json['companyId'] as num?)?.toInt(),
      company: json['company'] == null
          ? null
          : CompanyApiDto.fromJson(json['company'] as Map<String, dynamic>),
      defaultCurrencyId: (json['defaultCurrencyId'] as num?)?.toInt(),
      govtRegName: json['govtRegName'] as String?,
      govtRegNo: json['govtRegNo'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$BranchApiDtoToJson(_BranchApiDto instance) =>
    <String, dynamic>{
      'branchId': instance.branchId,
      'code': instance.code,
      'name': instance.name,
      'accountId': instance.accountId,
      'account': instance.account,
      'companyId': instance.companyId,
      'company': instance.company,
      'defaultCurrencyId': instance.defaultCurrencyId,
      'govtRegName': instance.govtRegName,
      'govtRegNo': instance.govtRegNo,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_CalendarItemApiDto _$CalendarItemApiDtoFromJson(Map<String, dynamic> json) =>
    _CalendarItemApiDto(
      id: (json['id'] as num?)?.toInt(),
      subject: json['subject'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      isAllDay: json['isAllDay'] as bool?,
      calendarItemType: (json['calendarItemType'] as num?)?.toInt(),
      recurrenceRule: json['recurrenceRule'] as String?,
      recurrenceException: json['recurrenceException'] as String?,
      recurrenceId: (json['recurrenceId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      academicYearId: (json['academicYearId'] as num?)?.toInt(),
      academicTermId: (json['academicTermId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$CalendarItemApiDtoToJson(_CalendarItemApiDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'location': instance.location,
      'description': instance.description,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'isAllDay': instance.isAllDay,
      'calendarItemType': instance.calendarItemType,
      'recurrenceRule': instance.recurrenceRule,
      'recurrenceException': instance.recurrenceException,
      'recurrenceId': instance.recurrenceId,
      'branchId': instance.branchId,
      'academicYearId': instance.academicYearId,
      'academicTermId': instance.academicTermId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ClassApiDto _$ClassApiDtoFromJson(Map<String, dynamic> json) => _ClassApiDto(
      classId: (json['classId'] as num?)?.toInt(),
      levelId: (json['levelId'] as num?)?.toInt(),
      level: json['level'] == null
          ? null
          : LevelApiDto.fromJson(json['level'] as Map<String, dynamic>),
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      maxCapacity: (json['maxCapacity'] as num?)?.toInt(),
      mainTeacherId: (json['mainTeacherId'] as num?)?.toInt(),
      mainTeacher: json['mainTeacher'] == null
          ? null
          : TeacherApiDto.fromJson(json['mainTeacher'] as Map<String, dynamic>),
      academicYearId: (json['academicYearId'] as num?)?.toInt(),
      academicYear: json['academicYear'] == null
          ? null
          : AcademicYearApiDto.fromJson(
              json['academicYear'] as Map<String, dynamic>),
      classSubjects: (json['classSubjects'] as List<dynamic>?)
          ?.map((e) => ClassSubjectApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ClassApiDtoToJson(_ClassApiDto instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'levelId': instance.levelId,
      'level': instance.level,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'maxCapacity': instance.maxCapacity,
      'mainTeacherId': instance.mainTeacherId,
      'mainTeacher': instance.mainTeacher,
      'academicYearId': instance.academicYearId,
      'academicYear': instance.academicYear,
      'classSubjects': instance.classSubjects,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ClassAttendanceDTODto _$ClassAttendanceDTODtoFromJson(
        Map<String, dynamic> json) =>
    _ClassAttendanceDTODto(
      classId: (json['classId'] as num?)?.toInt(),
      className: json['className'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) =>
              StudentAttendanceDTODto.fromJson(e as Map<String, dynamic>))
          .toList(),
      sumPresent: (json['sumPresent'] as num?)?.toInt(),
      sumSchoolDays: (json['sumSchoolDays'] as num?)?.toInt(),
      classAttendanceRate: (json['classAttendanceRate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClassAttendanceDTODtoToJson(
        _ClassAttendanceDTODto instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'className': instance.className,
      'students': instance.students,
      'sumPresent': instance.sumPresent,
      'sumSchoolDays': instance.sumSchoolDays,
      'classAttendanceRate': instance.classAttendanceRate,
    };

_ClassRefApiDto _$ClassRefApiDtoFromJson(Map<String, dynamic> json) =>
    _ClassRefApiDto(
      classId: (json['classId'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ClassRefApiDtoToJson(_ClassRefApiDto instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'name': instance.name,
    };

_ClassSubjectApiDto _$ClassSubjectApiDtoFromJson(Map<String, dynamic> json) =>
    _ClassSubjectApiDto(
      classSubjectId: (json['classSubjectId'] as num?)?.toInt(),
      subjectId: (json['subjectId'] as num?)?.toInt(),
      subject: json['subject'] == null
          ? null
          : SubjectApiDto.fromJson(json['subject'] as Map<String, dynamic>),
      classId: (json['classId'] as num?)?.toInt(),
      classField: json['class'] == null
          ? null
          : ClassRefApiDto.fromJson(json['class'] as Map<String, dynamic>),
      teacherId: (json['teacherId'] as num?)?.toInt(),
      teacher: json['teacher'] == null
          ? null
          : TeacherApiDto.fromJson(json['teacher'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ClassSubjectApiDtoToJson(_ClassSubjectApiDto instance) =>
    <String, dynamic>{
      'classSubjectId': instance.classSubjectId,
      'subjectId': instance.subjectId,
      'subject': instance.subject,
      'classId': instance.classId,
      'class': instance.classField,
      'teacherId': instance.teacherId,
      'teacher': instance.teacher,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_CompanyApiDto _$CompanyApiDtoFromJson(Map<String, dynamic> json) =>
    _CompanyApiDto(
      companyId: (json['companyId'] as num?)?.toInt(),
      code: json['code'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : AccountApiDto.fromJson(json['account'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$CompanyApiDtoToJson(_CompanyApiDto instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'code': instance.code,
      'accountId': instance.accountId,
      'account': instance.account,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ContactApiDto _$ContactApiDtoFromJson(Map<String, dynamic> json) =>
    _ContactApiDto(
      contactId: (json['contactId'] as num?)?.toInt(),
      contactType: (json['contactType'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      addressId: (json['addressId'] as num?)?.toInt(),
      address: json['address'] == null
          ? null
          : AddressApiDto.fromJson(json['address'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ContactApiDtoToJson(_ContactApiDto instance) =>
    <String, dynamic>{
      'contactId': instance.contactId,
      'contactType': instance.contactType,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'addressId': instance.addressId,
      'address': instance.address,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ContentApiDto _$ContentApiDtoFromJson(Map<String, dynamic> json) =>
    _ContentApiDto(
      studentContentId: (json['studentContentId'] as num?)?.toInt(),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      learningDomains: (json['learningDomains'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      contentTitle: json['contentTitle'] as String?,
      contentBody: json['contentBody'] as String?,
      activityDateTime: json['activityDateTime'] == null
          ? null
          : DateTime.parse(json['activityDateTime'] as String),
      contentType: (json['contentType'] as num?)?.toInt(),
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
      includeFutureEnrolment: json['includeFutureEnrolment'] as bool?,
      attachmentFolderClassId:
          (json['attachmentFolderClassId'] as num?)?.toInt(),
      attachmentFolder: json['attachmentFolder'] as String?,
      defaultUrl: json['defaultUrl'] as String?,
      branchId: (json['branchId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ContentApiDtoToJson(_ContentApiDto instance) =>
    <String, dynamic>{
      'studentContentId': instance.studentContentId,
      'students': instance.students,
      'classes': instance.classes,
      'levels': instance.levels,
      'learningDomains': instance.learningDomains,
      'contentTitle': instance.contentTitle,
      'contentBody': instance.contentBody,
      'activityDateTime': instance.activityDateTime?.toIso8601String(),
      'contentType': instance.contentType,
      'publishDate': instance.publishDate?.toIso8601String(),
      'includeFutureEnrolment': instance.includeFutureEnrolment,
      'attachmentFolderClassId': instance.attachmentFolderClassId,
      'attachmentFolder': instance.attachmentFolder,
      'defaultUrl': instance.defaultUrl,
      'branchId': instance.branchId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ConversationApiDto _$ConversationApiDtoFromJson(Map<String, dynamic> json) =>
    _ConversationApiDto(
      conversationId: (json['conversationId'] as num?)?.toInt(),
      topic: json['topic'] as String,
      isClosed: json['isClosed'] as bool?,
      dateClosed: json['dateClosed'] == null
          ? null
          : DateTime.parse(json['dateClosed'] as String),
      initiatorAccountId: (json['initiatorAccountId'] as num?)?.toInt(),
      recipientAccountId: (json['recipientAccountId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ConversationApiDtoToJson(_ConversationApiDto instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'topic': instance.topic,
      'isClosed': instance.isClosed,
      'dateClosed': instance.dateClosed?.toIso8601String(),
      'initiatorAccountId': instance.initiatorAccountId,
      'recipientAccountId': instance.recipientAccountId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ConversationCloseDto _$ConversationCloseDtoFromJson(
        Map<String, dynamic> json) =>
    _ConversationCloseDto(
      dateClosed: json['dateClosed'] == null
          ? null
          : DateTime.parse(json['dateClosed'] as String),
    );

Map<String, dynamic> _$ConversationCloseDtoToJson(
        _ConversationCloseDto instance) =>
    <String, dynamic>{
      'dateClosed': instance.dateClosed?.toIso8601String(),
    };

_ConversationMessageApiDto _$ConversationMessageApiDtoFromJson(
        Map<String, dynamic> json) =>
    _ConversationMessageApiDto(
      conversationMessageId: (json['conversationMessageId'] as num?)?.toInt(),
      message: json['message'] as String,
      senderAccountId: (json['senderAccountId'] as num?)?.toInt(),
      isRead: json['isRead'] as bool?,
      conversationId: (json['conversationId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$ConversationMessageApiDtoToJson(
        _ConversationMessageApiDto instance) =>
    <String, dynamic>{
      'conversationMessageId': instance.conversationMessageId,
      'message': instance.message,
      'senderAccountId': instance.senderAccountId,
      'isRead': instance.isRead,
      'conversationId': instance.conversationId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_ConversationMessageMutationDto _$ConversationMessageMutationDtoFromJson(
        Map<String, dynamic> json) =>
    _ConversationMessageMutationDto(
      message: json['message'] as String,
      conversationId: (json['conversationId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$ConversationMessageMutationDtoToJson(
        _ConversationMessageMutationDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'conversationId': instance.conversationId,
      'isDeleted': instance.isDeleted,
    };

_ConversationMessageReadStatusDto _$ConversationMessageReadStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _ConversationMessageReadStatusDto(
      isRead: json['isRead'] as bool?,
    );

Map<String, dynamic> _$ConversationMessageReadStatusDtoToJson(
        _ConversationMessageReadStatusDto instance) =>
    <String, dynamic>{
      'isRead': instance.isRead,
    };

_ConversationMutationDto _$ConversationMutationDtoFromJson(
        Map<String, dynamic> json) =>
    _ConversationMutationDto(
      topic: json['topic'] as String,
      isClosed: json['isClosed'] as bool?,
      dateClosed: json['dateClosed'] == null
          ? null
          : DateTime.parse(json['dateClosed'] as String),
      initiatorAccountId: (json['initiatorAccountId'] as num?)?.toInt(),
      recipientAccountId: (json['recipientAccountId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$ConversationMutationDtoToJson(
        _ConversationMutationDto instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'isClosed': instance.isClosed,
      'dateClosed': instance.dateClosed?.toIso8601String(),
      'initiatorAccountId': instance.initiatorAccountId,
      'recipientAccountId': instance.recipientAccountId,
      'isDeleted': instance.isDeleted,
    };

_CountryApiDto _$CountryApiDtoFromJson(Map<String, dynamic> json) =>
    _CountryApiDto(
      countryId: (json['countryId'] as num?)?.toInt(),
      isO2: json['isO2'] as String?,
      isO3: json['isO3'] as String?,
      name: json['name'] as String?,
      citizenship: json['citizenship'] as String?,
      idd: json['idd'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$CountryApiDtoToJson(_CountryApiDto instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'isO2': instance.isO2,
      'isO3': instance.isO3,
      'name': instance.name,
      'citizenship': instance.citizenship,
      'idd': instance.idd,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_CurrentUserInfoDto _$CurrentUserInfoDtoFromJson(Map<String, dynamic> json) =>
    _CurrentUserInfoDto(
      accountId: (json['accountId'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : AccountApiDto.fromJson(json['account'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      lastActiveBranchId: (json['lastActiveBranchId'] as num?)?.toInt(),
      branchRoles: (json['branchRoles'] as List<dynamic>?)
          ?.map((e) => UserBranchRoleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentUserInfoDtoToJson(_CurrentUserInfoDto instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'account': instance.account,
      'userId': instance.userId,
      'fullName': instance.fullName,
      'email': instance.email,
      'emailConfirmed': instance.emailConfirmed,
      'lastActiveBranchId': instance.lastActiveBranchId,
      'branchRoles': instance.branchRoles,
    };

_EmployeeApiDto _$EmployeeApiDtoFromJson(Map<String, dynamic> json) =>
    _EmployeeApiDto(
      employeeType: (json['employeeType'] as num?)?.toInt(),
      code: json['code'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : AccountApiDto.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeApiDtoToJson(_EmployeeApiDto instance) =>
    <String, dynamic>{
      'employeeType': instance.employeeType,
      'code': instance.code,
      'accountId': instance.accountId,
      'account': instance.account,
    };

_EnrolmentApiDto _$EnrolmentApiDtoFromJson(Map<String, dynamic> json) =>
    _EnrolmentApiDto(
      enrolmentId: (json['enrolmentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      classField: json['class'] == null
          ? null
          : ClassApiDto.fromJson(json['class'] as Map<String, dynamic>),
      academicYearId: (json['academicYearId'] as num?)?.toInt(),
      academicYear: json['academicYear'] == null
          ? null
          : AcademicYearApiDto.fromJson(
              json['academicYear'] as Map<String, dynamic>),
      enrolmentDate: json['enrolmentDate'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EnrolmentApiDtoToJson(_EnrolmentApiDto instance) =>
    <String, dynamic>{
      'enrolmentId': instance.enrolmentId,
      'branchId': instance.branchId,
      'studentId': instance.studentId,
      'classId': instance.classId,
      'class': instance.classField,
      'academicYearId': instance.academicYearId,
      'academicYear': instance.academicYear,
      'enrolmentDate': instance.enrolmentDate,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
    };

_ImageUrlResultDto _$ImageUrlResultDtoFromJson(Map<String, dynamic> json) =>
    _ImageUrlResultDto(
      url: json['url'] as String?,
      fallbackUrl: json['fallbackUrl'] as String?,
    );

Map<String, dynamic> _$ImageUrlResultDtoToJson(_ImageUrlResultDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fallbackUrl': instance.fallbackUrl,
    };

_InfantCareActivityApiDto _$InfantCareActivityApiDtoFromJson(
        Map<String, dynamic> json) =>
    _InfantCareActivityApiDto(
      infantCareActivityId: (json['infantCareActivityId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      ageInMonths: (json['ageInMonths'] as num?)?.toInt(),
      promotionDate: json['promotionDate'] == null
          ? null
          : DateTime.parse(json['promotionDate'] as String),
      lastFeedDateTime: json['lastFeedDateTime'] == null
          ? null
          : DateTime.parse(json['lastFeedDateTime'] as String),
      lastFeedTime: json['lastFeedTime'] as String?,
      nextFeedDateTime: json['nextFeedDateTime'] == null
          ? null
          : DateTime.parse(json['nextFeedDateTime'] as String),
      nextFeedTime: json['nextFeedTime'] as String?,
      feedRemarks: json['feedRemarks'] as String?,
      feedPerformedBy: json['feedPerformedBy'] as String?,
      lastDiaperDateTime: json['lastDiaperDateTime'] == null
          ? null
          : DateTime.parse(json['lastDiaperDateTime'] as String),
      lastDiaperTime: json['lastDiaperTime'] as String?,
      nextDiaperDateTime: json['nextDiaperDateTime'] == null
          ? null
          : DateTime.parse(json['nextDiaperDateTime'] as String),
      nextDiaperTime: json['nextDiaperTime'] as String?,
      diaperRemarks: json['diaperRemarks'] as String?,
      diaperPerformedBy: json['diaperPerformedBy'] as String?,
      napDateTime: json['napDateTime'] == null
          ? null
          : DateTime.parse(json['napDateTime'] as String),
      napTime: json['napTime'] as String?,
      napDuration: (json['napDuration'] as num?)?.toInt(),
      napPerformedBy: json['napPerformedBy'] as String?,
      remarks: json['remarks'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$InfantCareActivityApiDtoToJson(
        _InfantCareActivityApiDto instance) =>
    <String, dynamic>{
      'infantCareActivityId': instance.infantCareActivityId,
      'studentId': instance.studentId,
      'branchId': instance.branchId,
      'ageInMonths': instance.ageInMonths,
      'promotionDate': instance.promotionDate?.toIso8601String(),
      'lastFeedDateTime': instance.lastFeedDateTime?.toIso8601String(),
      'lastFeedTime': instance.lastFeedTime,
      'nextFeedDateTime': instance.nextFeedDateTime?.toIso8601String(),
      'nextFeedTime': instance.nextFeedTime,
      'feedRemarks': instance.feedRemarks,
      'feedPerformedBy': instance.feedPerformedBy,
      'lastDiaperDateTime': instance.lastDiaperDateTime?.toIso8601String(),
      'lastDiaperTime': instance.lastDiaperTime,
      'nextDiaperDateTime': instance.nextDiaperDateTime?.toIso8601String(),
      'nextDiaperTime': instance.nextDiaperTime,
      'diaperRemarks': instance.diaperRemarks,
      'diaperPerformedBy': instance.diaperPerformedBy,
      'napDateTime': instance.napDateTime?.toIso8601String(),
      'napTime': instance.napTime,
      'napDuration': instance.napDuration,
      'napPerformedBy': instance.napPerformedBy,
      'remarks': instance.remarks,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_InfantCareActivityLogApiDto _$InfantCareActivityLogApiDtoFromJson(
        Map<String, dynamic> json) =>
    _InfantCareActivityLogApiDto(
      infantCareActivityLogId:
          (json['infantCareActivityLogId'] as num?)?.toInt(),
      infantCareActivityId: (json['infantCareActivityId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      activityType: (json['activityType'] as num?)?.toInt(),
      remarks: json['remarks'] as String?,
      performedBy: json['performedBy'] as String?,
      performedAt: json['performedAt'] == null
          ? null
          : DateTime.parse(json['performedAt'] as String),
      nextScheduledAt: json['nextScheduledAt'] == null
          ? null
          : DateTime.parse(json['nextScheduledAt'] as String),
      additionalField: json['additionalField'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$InfantCareActivityLogApiDtoToJson(
        _InfantCareActivityLogApiDto instance) =>
    <String, dynamic>{
      'infantCareActivityLogId': instance.infantCareActivityLogId,
      'infantCareActivityId': instance.infantCareActivityId,
      'studentId': instance.studentId,
      'branchId': instance.branchId,
      'activityType': instance.activityType,
      'remarks': instance.remarks,
      'performedBy': instance.performedBy,
      'performedAt': instance.performedAt?.toIso8601String(),
      'nextScheduledAt': instance.nextScheduledAt?.toIso8601String(),
      'additionalField': instance.additionalField,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_InfantCareActivityLogCreateDto _$InfantCareActivityLogCreateDtoFromJson(
        Map<String, dynamic> json) =>
    _InfantCareActivityLogCreateDto(
      infantCareActivityId: (json['infantCareActivityId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      activityType: (json['activityType'] as num).toInt(),
      performedAt: DateTime.parse(json['performedAt'] as String),
      nextScheduledAt: json['nextScheduledAt'] == null
          ? null
          : DateTime.parse(json['nextScheduledAt'] as String),
      remarks: json['remarks'] as String?,
      performedBy: json['performedBy'] as String?,
      additionalField: json['additionalField'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$InfantCareActivityLogCreateDtoToJson(
        _InfantCareActivityLogCreateDto instance) =>
    <String, dynamic>{
      'infantCareActivityId': instance.infantCareActivityId,
      'studentId': instance.studentId,
      'activityType': instance.activityType,
      'performedAt': instance.performedAt.toIso8601String(),
      'nextScheduledAt': instance.nextScheduledAt?.toIso8601String(),
      'remarks': instance.remarks,
      'performedBy': instance.performedBy,
      'additionalField': instance.additionalField,
      'isDeleted': instance.isDeleted,
    };

_InfantCareActivityLogUpdateDto _$InfantCareActivityLogUpdateDtoFromJson(
        Map<String, dynamic> json) =>
    _InfantCareActivityLogUpdateDto(
      infantCareActivityLogId: (json['infantCareActivityLogId'] as num).toInt(),
      activityType: (json['activityType'] as num?)?.toInt(),
      performedAt: json['performedAt'] == null
          ? null
          : DateTime.parse(json['performedAt'] as String),
      nextScheduledAt: json['nextScheduledAt'] == null
          ? null
          : DateTime.parse(json['nextScheduledAt'] as String),
      remarks: json['remarks'] as String?,
      performedBy: json['performedBy'] as String?,
      additionalField: json['additionalField'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$InfantCareActivityLogUpdateDtoToJson(
        _InfantCareActivityLogUpdateDto instance) =>
    <String, dynamic>{
      'infantCareActivityLogId': instance.infantCareActivityLogId,
      'activityType': instance.activityType,
      'performedAt': instance.performedAt?.toIso8601String(),
      'nextScheduledAt': instance.nextScheduledAt?.toIso8601String(),
      'remarks': instance.remarks,
      'performedBy': instance.performedBy,
      'additionalField': instance.additionalField,
      'isDeleted': instance.isDeleted,
    };

_InfantCareActivitySaveDto _$InfantCareActivitySaveDtoFromJson(
        Map<String, dynamic> json) =>
    _InfantCareActivitySaveDto(
      studentId: (json['studentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      promotionDate: json['promotionDate'] == null
          ? null
          : DateTime.parse(json['promotionDate'] as String),
      lastFeedDateTime: json['lastFeedDateTime'] == null
          ? null
          : DateTime.parse(json['lastFeedDateTime'] as String),
      lastFeedTime: json['lastFeedTime'] as String?,
      nextFeedDateTime: json['nextFeedDateTime'] == null
          ? null
          : DateTime.parse(json['nextFeedDateTime'] as String),
      nextFeedTime: json['nextFeedTime'] as String?,
      feedRemarks: json['feedRemarks'] as String?,
      feedPerformedBy: json['feedPerformedBy'] as String?,
      lastDiaperDateTime: json['lastDiaperDateTime'] == null
          ? null
          : DateTime.parse(json['lastDiaperDateTime'] as String),
      lastDiaperTime: json['lastDiaperTime'] as String?,
      nextDiaperDateTime: json['nextDiaperDateTime'] == null
          ? null
          : DateTime.parse(json['nextDiaperDateTime'] as String),
      nextDiaperTime: json['nextDiaperTime'] as String?,
      diaperRemarks: json['diaperRemarks'] as String?,
      diaperPerformedBy: json['diaperPerformedBy'] as String?,
      napDateTime: json['napDateTime'] == null
          ? null
          : DateTime.parse(json['napDateTime'] as String),
      napTime: json['napTime'] as String?,
      napDuration: (json['napDuration'] as num?)?.toInt(),
      napPerformedBy: json['napPerformedBy'] as String?,
      remarks: json['remarks'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$InfantCareActivitySaveDtoToJson(
        _InfantCareActivitySaveDto instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'branchId': instance.branchId,
      'promotionDate': instance.promotionDate?.toIso8601String(),
      'lastFeedDateTime': instance.lastFeedDateTime?.toIso8601String(),
      'lastFeedTime': instance.lastFeedTime,
      'nextFeedDateTime': instance.nextFeedDateTime?.toIso8601String(),
      'nextFeedTime': instance.nextFeedTime,
      'feedRemarks': instance.feedRemarks,
      'feedPerformedBy': instance.feedPerformedBy,
      'lastDiaperDateTime': instance.lastDiaperDateTime?.toIso8601String(),
      'lastDiaperTime': instance.lastDiaperTime,
      'nextDiaperDateTime': instance.nextDiaperDateTime?.toIso8601String(),
      'nextDiaperTime': instance.nextDiaperTime,
      'diaperRemarks': instance.diaperRemarks,
      'diaperPerformedBy': instance.diaperPerformedBy,
      'napDateTime': instance.napDateTime?.toIso8601String(),
      'napTime': instance.napTime,
      'napDuration': instance.napDuration,
      'napPerformedBy': instance.napPerformedBy,
      'remarks': instance.remarks,
      'isDeleted': instance.isDeleted,
    };

_LevelApiDto _$LevelApiDtoFromJson(Map<String, dynamic> json) => _LevelApiDto(
      levelId: (json['levelId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      minAgeInMonths: (json['minAgeInMonths'] as num?)?.toInt(),
      maxAgeInMonths: (json['maxAgeInMonths'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$LevelApiDtoToJson(_LevelApiDto instance) =>
    <String, dynamic>{
      'levelId': instance.levelId,
      'branchId': instance.branchId,
      'code': instance.code,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'minAgeInMonths': instance.minAgeInMonths,
      'maxAgeInMonths': instance.maxAgeInMonths,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_LookUpApiDto _$LookUpApiDtoFromJson(Map<String, dynamic> json) =>
    _LookUpApiDto(
      lookUpId: (json['lookUpId'] as num?)?.toInt(),
      lookUpType: (json['lookUpType'] as num?)?.toInt(),
      name: json['name'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$LookUpApiDtoToJson(_LookUpApiDto instance) =>
    <String, dynamic>{
      'lookUpId': instance.lookUpId,
      'lookUpType': instance.lookUpType,
      'name': instance.name,
      'isDeleted': instance.isDeleted,
      'createdDate': instance.createdDate?.toIso8601String(),
    };

_NotificationApiDto _$NotificationApiDtoFromJson(Map<String, dynamic> json) =>
    _NotificationApiDto(
      title: json['title'] as String?,
      description: json['description'] as String?,
      notificationType: (json['notificationType'] as num?)?.toInt(),
      entityId: (json['entityId'] as num?)?.toInt(),
      isPublic: json['isPublic'] as bool?,
      isRead: json['isRead'] as bool?,
      readDateTime: json['readDateTime'] == null
          ? null
          : DateTime.parse(json['readDateTime'] as String),
      notificationRecipientId:
          (json['notificationRecipientId'] as num?)?.toInt(),
      recipientAccountId: (json['recipientAccountId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$NotificationApiDtoToJson(_NotificationApiDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'notificationType': instance.notificationType,
      'entityId': instance.entityId,
      'isPublic': instance.isPublic,
      'isRead': instance.isRead,
      'readDateTime': instance.readDateTime?.toIso8601String(),
      'notificationRecipientId': instance.notificationRecipientId,
      'recipientAccountId': instance.recipientAccountId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_NotificationSummaryDto _$NotificationSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    _NotificationSummaryDto(
      totalUnread: (json['totalUnread'] as num?)?.toInt(),
      totalRead: (json['totalRead'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotificationSummaryDtoToJson(
        _NotificationSummaryDto instance) =>
    <String, dynamic>{
      'totalUnread': instance.totalUnread,
      'totalRead': instance.totalRead,
      'total': instance.total,
    };

_PagedResultOfAccountDeviceSessionApiDto
    _$PagedResultOfAccountDeviceSessionApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfAccountDeviceSessionApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => AccountDeviceSessionApiDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfAccountDeviceSessionApiDtoToJson(
        _PagedResultOfAccountDeviceSessionApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfBranchApiDto _$PagedResultOfBranchApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfBranchApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BranchApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfBranchApiDtoToJson(
        _PagedResultOfBranchApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfCalendarItemApiDto _$PagedResultOfCalendarItemApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfCalendarItemApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CalendarItemApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfCalendarItemApiDtoToJson(
        _PagedResultOfCalendarItemApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfClassApiDto _$PagedResultOfClassApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfClassApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ClassApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfClassApiDtoToJson(
        _PagedResultOfClassApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfContentApiDto _$PagedResultOfContentApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfContentApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ContentApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfContentApiDtoToJson(
        _PagedResultOfContentApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfConversationApiDto _$PagedResultOfConversationApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfConversationApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ConversationApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfConversationApiDtoToJson(
        _PagedResultOfConversationApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfConversationMessageApiDto
    _$PagedResultOfConversationMessageApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfConversationMessageApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  ConversationMessageApiDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfConversationMessageApiDtoToJson(
        _PagedResultOfConversationMessageApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfInfantCareActivityApiDto
    _$PagedResultOfInfantCareActivityApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfInfantCareActivityApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  InfantCareActivityApiDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfInfantCareActivityApiDtoToJson(
        _PagedResultOfInfantCareActivityApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfInfantCareActivityLogApiDto
    _$PagedResultOfInfantCareActivityLogApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfInfantCareActivityLogApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => InfantCareActivityLogApiDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfInfantCareActivityLogApiDtoToJson(
        _PagedResultOfInfantCareActivityLogApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfNotificationApiDto _$PagedResultOfNotificationApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfNotificationApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => NotificationApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfNotificationApiDtoToJson(
        _PagedResultOfNotificationApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfStudentApiDto _$PagedResultOfStudentApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfStudentApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => StudentApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfStudentApiDtoToJson(
        _PagedResultOfStudentApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfStudentAttendanceApiDto
    _$PagedResultOfStudentAttendanceApiDtoFromJson(Map<String, dynamic> json) =>
        _PagedResultOfStudentAttendanceApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  StudentAttendanceApiDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfStudentAttendanceApiDtoToJson(
        _PagedResultOfStudentAttendanceApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfStudentAuthorisedPersonApiDto
    _$PagedResultOfStudentAuthorisedPersonApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfStudentAuthorisedPersonApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => StudentAuthorisedPersonApiDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfStudentAuthorisedPersonApiDtoToJson(
        _PagedResultOfStudentAuthorisedPersonApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfStudentCheckInOutApiDto
    _$PagedResultOfStudentCheckInOutApiDtoFromJson(Map<String, dynamic> json) =>
        _PagedResultOfStudentCheckInOutApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  StudentCheckInOutApiDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfStudentCheckInOutApiDtoToJson(
        _PagedResultOfStudentCheckInOutApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfStudentTemperatureApiDto
    _$PagedResultOfStudentTemperatureApiDtoFromJson(
            Map<String, dynamic> json) =>
        _PagedResultOfStudentTemperatureApiDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  StudentTemperatureApiDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfStudentTemperatureApiDtoToJson(
        _PagedResultOfStudentTemperatureApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfTeacherApiDto _$PagedResultOfTeacherApiDtoFromJson(
        Map<String, dynamic> json) =>
    _PagedResultOfTeacherApiDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TeacherApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PagedResultOfTeacherApiDtoToJson(
        _PagedResultOfTeacherApiDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_PagedResultOfUserBranchRoleViewDto
    _$PagedResultOfUserBranchRoleViewDtoFromJson(Map<String, dynamic> json) =>
        _PagedResultOfUserBranchRoleViewDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  UserBranchRoleViewDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          page: (json['page'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalCount: (json['totalCount'] as num?)?.toInt(),
          hasNextPage: json['hasNextPage'] as bool?,
          hasPreviousPage: json['hasPreviousPage'] as bool?,
          totalPages: (json['totalPages'] as num?)?.toInt(),
        );

Map<String, dynamic> _$PagedResultOfUserBranchRoleViewDtoToJson(
        _PagedResultOfUserBranchRoleViewDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
      'totalPages': instance.totalPages,
    };

_StudentApiDto _$StudentApiDtoFromJson(Map<String, dynamic> json) =>
    _StudentApiDto(
      studentId: (json['studentId'] as num?)?.toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : AccountApiDto.fromJson(json['account'] as Map<String, dynamic>),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      identifier: json['identifier'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      age: (json['age'] as num?)?.toInt(),
      genderId: (json['genderId'] as num?)?.toInt(),
      citizenshipId: (json['citizenshipId'] as num?)?.toInt(),
      mainLanguageSpokenId: (json['mainLanguageSpokenId'] as num?)?.toInt(),
      raceId: (json['raceId'] as num?)?.toInt(),
      residenceStatusId: (json['residenceStatusId'] as num?)?.toInt(),
      enrolments: (json['enrolments'] as List<dynamic>?)
          ?.map((e) => EnrolmentApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentApiDtoToJson(_StudentApiDto instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'accountId': instance.accountId,
      'account': instance.account,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'identifier': instance.identifier,
      'dateOfBirth': instance.dateOfBirth,
      'age': instance.age,
      'genderId': instance.genderId,
      'citizenshipId': instance.citizenshipId,
      'mainLanguageSpokenId': instance.mainLanguageSpokenId,
      'raceId': instance.raceId,
      'residenceStatusId': instance.residenceStatusId,
      'enrolments': instance.enrolments,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_StudentAttendanceApiDto _$StudentAttendanceApiDtoFromJson(
        Map<String, dynamic> json) =>
    _StudentAttendanceApiDto(
      studentAttendanceId: (json['studentAttendanceId'] as num?)?.toInt(),
      date: json['date'] as String?,
      isPresent: json['isPresent'] as bool?,
      remarks: json['remarks'] as String?,
      classId: (json['classId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentAttendanceApiDtoToJson(
        _StudentAttendanceApiDto instance) =>
    <String, dynamic>{
      'studentAttendanceId': instance.studentAttendanceId,
      'date': instance.date,
      'isPresent': instance.isPresent,
      'remarks': instance.remarks,
      'classId': instance.classId,
      'studentId': instance.studentId,
      'accountId': instance.accountId,
      'branchId': instance.branchId,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_StudentAttendanceDTODto _$StudentAttendanceDTODtoFromJson(
        Map<String, dynamic> json) =>
    _StudentAttendanceDTODto(
      studentId: (json['studentId'] as num?)?.toInt(),
      identifier: json['identifier'] as String?,
      studentName: json['studentName'] as String?,
      enrolmentDate: json['enrolmentDate'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      countSchoolDays: (json['countSchoolDays'] as num?)?.toInt(),
      countPresent: (json['countPresent'] as num?)?.toInt(),
      countAbsent: (json['countAbsent'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      attendanceRecords: (json['attendanceRecords'] as List<dynamic>?)
          ?.map(
              (e) => AttendanceRecordDTODto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentAttendanceDTODtoToJson(
        _StudentAttendanceDTODto instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'identifier': instance.identifier,
      'studentName': instance.studentName,
      'enrolmentDate': instance.enrolmentDate,
      'dob': instance.dob,
      'gender': instance.gender,
      'countSchoolDays': instance.countSchoolDays,
      'countPresent': instance.countPresent,
      'countAbsent': instance.countAbsent,
      'rate': instance.rate,
      'attendanceRecords': instance.attendanceRecords,
    };

_StudentAuthorisedPersonApiDto _$StudentAuthorisedPersonApiDtoFromJson(
        Map<String, dynamic> json) =>
    _StudentAuthorisedPersonApiDto(
      studentAuthorisedPersonId:
          (json['studentAuthorisedPersonId'] as num?)?.toInt(),
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      contactNumber: json['contactNumber'] as String?,
      relationToChild: json['relationToChild'] == null
          ? null
          : LookUpApiDto.fromJson(
              json['relationToChild'] as Map<String, dynamic>),
      studentId: (json['studentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      statusReasons: (json['statusReasons'] as List<dynamic>?)
          ?.map((e) => AuthorisedPersonDeactivationReasonApiDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentAuthorisedPersonApiDtoToJson(
        _StudentAuthorisedPersonApiDto instance) =>
    <String, dynamic>{
      'studentAuthorisedPersonId': instance.studentAuthorisedPersonId,
      'name': instance.name,
      'identifier': instance.identifier,
      'contactNumber': instance.contactNumber,
      'relationToChild': instance.relationToChild,
      'studentId': instance.studentId,
      'branchId': instance.branchId,
      'isActive': instance.isActive,
      'statusReasons': instance.statusReasons,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_StudentAuthorisedPersonApiDto2Dto _$StudentAuthorisedPersonApiDto2DtoFromJson(
        Map<String, dynamic> json) =>
    _StudentAuthorisedPersonApiDto2Dto(
      studentAuthorisedPersonId:
          (json['studentAuthorisedPersonId'] as num?)?.toInt(),
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      contactNumber: json['contactNumber'] as String?,
      relationToChild: json['relationToChild'],
      studentId: (json['studentId'] as num?)?.toInt(),
      branchId: (json['branchId'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      statusReasons: (json['statusReasons'] as List<dynamic>?)
          ?.map((e) => AuthorisedPersonDeactivationReasonApiDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentAuthorisedPersonApiDto2DtoToJson(
        _StudentAuthorisedPersonApiDto2Dto instance) =>
    <String, dynamic>{
      'studentAuthorisedPersonId': instance.studentAuthorisedPersonId,
      'name': instance.name,
      'identifier': instance.identifier,
      'contactNumber': instance.contactNumber,
      'relationToChild': instance.relationToChild,
      'studentId': instance.studentId,
      'branchId': instance.branchId,
      'isActive': instance.isActive,
      'statusReasons': instance.statusReasons,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_StudentCheckInOutApiDto _$StudentCheckInOutApiDtoFromJson(
        Map<String, dynamic> json) =>
    _StudentCheckInOutApiDto(
      studentCheckInOutId: (json['studentCheckInOutId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      checkInTime: json['checkInTime'] == null
          ? null
          : DateTime.parse(json['checkInTime'] as String),
      checkInRemarks: json['checkInRemarks'] as String?,
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      checkOutRemarks: json['checkOutRemarks'] as String?,
      branchId: (json['branchId'] as num?)?.toInt(),
      checkInAuthorisedPerson: json['checkInAuthorisedPerson'] == null
          ? null
          : StudentAuthorisedPersonApiDto.fromJson(
              json['checkInAuthorisedPerson'] as Map<String, dynamic>),
      checkOutAuthorisedPerson: json['checkOutAuthorisedPerson'] == null
          ? null
          : StudentAuthorisedPersonApiDto2Dto.fromJson(
              json['checkOutAuthorisedPerson'] as Map<String, dynamic>),
      temperatures: (json['temperatures'] as List<dynamic>?)
          ?.map((e) =>
              StudentTemperatureApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentCheckInOutApiDtoToJson(
        _StudentCheckInOutApiDto instance) =>
    <String, dynamic>{
      'studentCheckInOutId': instance.studentCheckInOutId,
      'studentId': instance.studentId,
      'accountId': instance.accountId,
      'checkInTime': instance.checkInTime?.toIso8601String(),
      'checkInRemarks': instance.checkInRemarks,
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'checkOutRemarks': instance.checkOutRemarks,
      'branchId': instance.branchId,
      'checkInAuthorisedPerson': instance.checkInAuthorisedPerson,
      'checkOutAuthorisedPerson': instance.checkOutAuthorisedPerson,
      'temperatures': instance.temperatures,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_StudentTemperatureApiDto _$StudentTemperatureApiDtoFromJson(
        Map<String, dynamic> json) =>
    _StudentTemperatureApiDto(
      temperatureId: (json['temperatureId'] as num?)?.toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      checkInOutId: (json['checkInOutId'] as num?)?.toInt(),
      temperatureValue: json['temperatureValue'] as num?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$StudentTemperatureApiDtoToJson(
        _StudentTemperatureApiDto instance) =>
    <String, dynamic>{
      'temperatureId': instance.temperatureId,
      'accountId': instance.accountId,
      'studentId': instance.studentId,
      'checkInOutId': instance.checkInOutId,
      'temperatureValue': instance.temperatureValue,
      'date': instance.date?.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_SubjectApiDto _$SubjectApiDtoFromJson(Map<String, dynamic> json) =>
    _SubjectApiDto(
      subjectId: (json['subjectId'] as num?)?.toInt(),
      levelId: (json['levelId'] as num?)?.toInt(),
      level: json['level'] == null
          ? null
          : LevelApiDto.fromJson(json['level'] as Map<String, dynamic>),
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      maxCapacity: (json['maxCapacity'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
      createdByUserId: json['createdByUserId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedByUserId: json['lastUpdatedByUserId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$SubjectApiDtoToJson(_SubjectApiDto instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'levelId': instance.levelId,
      'level': instance.level,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'maxCapacity': instance.maxCapacity,
      'isDeleted': instance.isDeleted,
      'createdByUserId': instance.createdByUserId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedByUserId': instance.lastUpdatedByUserId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_TeacherApiDto _$TeacherApiDtoFromJson(Map<String, dynamic> json) =>
    _TeacherApiDto(
      teacherId: (json['teacherId'] as num?)?.toInt(),
      employeeId: (json['employeeId'] as num?)?.toInt(),
      employee: json['employee'] == null
          ? null
          : EmployeeApiDto.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherApiDtoToJson(_TeacherApiDto instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'employeeId': instance.employeeId,
      'employee': instance.employee,
    };

_UserBranchRoleDto _$UserBranchRoleDtoFromJson(Map<String, dynamic> json) =>
    _UserBranchRoleDto(
      branchId: (json['branchId'] as num?)?.toInt(),
      roleCode: json['roleCode'] as String?,
      studentId: (json['studentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserBranchRoleDtoToJson(_UserBranchRoleDto instance) =>
    <String, dynamic>{
      'branchId': instance.branchId,
      'roleCode': instance.roleCode,
      'studentId': instance.studentId,
    };

_UserBranchRoleViewDto _$UserBranchRoleViewDtoFromJson(
        Map<String, dynamic> json) =>
    _UserBranchRoleViewDto(
      branchId: (json['branchId'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      roleCode: json['roleCode'] as String?,
      studentId: (json['studentId'] as num?)?.toInt(),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserBranchRoleViewDtoToJson(
        _UserBranchRoleViewDto instance) =>
    <String, dynamic>{
      'branchId': instance.branchId,
      'userId': instance.userId,
      'roleCode': instance.roleCode,
      'studentId': instance.studentId,
      'email': instance.email,
    };
