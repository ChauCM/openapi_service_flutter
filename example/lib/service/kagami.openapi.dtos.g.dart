// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kagami.openapi.dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) => _AccountDto(
      id: json['id'] as String,
      accountType: json['accountType'] as String,
      contactInfo: json['contactInfo'] == null
          ? null
          : ContactInfoDto.fromJson(
              json['contactInfo'] as Map<String, dynamic>),
      personalInfo: json['personalInfo'] == null
          ? null
          : PersonalInfoDto.fromJson(
              json['personalInfo'] as Map<String, dynamic>),
      addressList: (json['addressList'] as List<dynamic>?)
          ?.map((e) => AddressInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccountDtoToJson(_AccountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountType': instance.accountType,
      'contactInfo': instance.contactInfo,
      'personalInfo': instance.personalInfo,
      'addressList': instance.addressList,
    };

_AddressInfoDto _$AddressInfoDtoFromJson(Map<String, dynamic> json) =>
    _AddressInfoDto(
      id: json['id'] as String,
      accountID: json['accountID'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      addressType: json['addressType'] as String?,
    );

Map<String, dynamic> _$AddressInfoDtoToJson(_AddressInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountID': instance.accountID,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'city': instance.city,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'addressType': instance.addressType,
    };

_AttendanceDto _$AttendanceDtoFromJson(Map<String, dynamic> json) =>
    _AttendanceDto(
      date: DateTime.parse(json['date'] as String),
      attendanceStatus: json['attendanceStatus'] as String?,
      remarks: json['remarks'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$AttendanceDtoToJson(_AttendanceDto instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'attendanceStatus': instance.attendanceStatus,
      'remarks': instance.remarks,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_AttendanceVODto _$AttendanceVODtoFromJson(Map<String, dynamic> json) =>
    _AttendanceVODto(
      id: json['id'] as String?,
      studentId: json['studentId'] as String,
      date: DateTime.parse(json['date'] as String),
      attendanceStatus: json['attendanceStatus'] as String?,
      remarks: json['remarks'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$AttendanceVODtoToJson(_AttendanceVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'date': instance.date.toIso8601String(),
      'attendanceStatus': instance.attendanceStatus,
      'remarks': instance.remarks,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_AttendeeDto _$AttendeeDtoFromJson(Map<String, dynamic> json) => _AttendeeDto(
      emailAddress: json['emailAddress'] == null
          ? null
          : EmailAddressDto.fromJson(
              json['emailAddress'] as Map<String, dynamic>),
      odataType: json['@odata.type'] as String?,
      type: $enumDecodeNullable(_$AttendeeTypeDtoEnumMap, json['type']),
      proposedNewTime: json['proposedNewTime'] == null
          ? null
          : TimeSlotDto.fromJson(
              json['proposedNewTime'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : ResponseStatusDto.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendeeDtoToJson(_AttendeeDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      '@odata.type': instance.odataType,
      'type': _$AttendeeTypeDtoEnumMap[instance.type],
      'proposedNewTime': instance.proposedNewTime,
      'status': instance.status,
    };

const _$AttendeeTypeDtoEnumMap = {
  AttendeeTypeDto.$required: 'Required',
  AttendeeTypeDto.optional: 'Optional',
  AttendeeTypeDto.resource: 'Resource',
};

_AuthorisedPickUpDto _$AuthorisedPickUpDtoFromJson(Map<String, dynamic> json) =>
    _AuthorisedPickUpDto(
      id: json['id'] as String?,
      studentId: json['studentId'] as String?,
      name: json['name'] as String?,
      indentifyNo: json['indentifyNo'] as String?,
      relationship: json['relationship'] as String?,
      contactNumber: json['contactNumber'] as String?,
      remarks: json['remarks'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AuthorisedPickUpDtoToJson(
        _AuthorisedPickUpDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'name': instance.name,
      'indentifyNo': instance.indentifyNo,
      'relationship': instance.relationship,
      'contactNumber': instance.contactNumber,
      'remarks': instance.remarks,
      'image': instance.image,
    };

_BookEventRequestParameterDto _$BookEventRequestParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _BookEventRequestParameterDto(
      teacherAccountId: json['teacherAccountId'] as String?,
      organiserEmail: json['organiserEmail'] as String?,
      eventId: json['eventId'] as String?,
      studentName: json['studentName'] as String?,
      recipients: (json['recipients'] as List<dynamic>?)
          ?.map((e) =>
              CalendarInviteRecipientDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookEventRequestParameterDtoToJson(
        _BookEventRequestParameterDto instance) =>
    <String, dynamic>{
      'teacherAccountId': instance.teacherAccountId,
      'organiserEmail': instance.organiserEmail,
      'eventId': instance.eventId,
      'studentName': instance.studentName,
      'recipients': instance.recipients,
    };

_CalendarInviteRecipientDto _$CalendarInviteRecipientDtoFromJson(
        Map<String, dynamic> json) =>
    _CalendarInviteRecipientDto(
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$CalendarInviteRecipientDtoToJson(
        _CalendarInviteRecipientDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

_CalendarItemParameterDto _$CalendarItemParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _CalendarItemParameterDto(
      eventId: json['eventId'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      subject: json['subject'] as String?,
      category: json['category'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      attendees: (json['attendees'] as List<dynamic>?)
          ?.map((e) => AttendeeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOnlineMeeting: json['isOnlineMeeting'] as bool?,
      resourcePermission: json['resourcePermission'] == null
          ? null
          : ResourcePermissionDto.fromJson(
              json['resourcePermission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalendarItemParameterDtoToJson(
        _CalendarItemParameterDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'email': instance.email,
      'name': instance.name,
      'subject': instance.subject,
      'category': instance.category,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'attendees': instance.attendees,
      'isOnlineMeeting': instance.isOnlineMeeting,
      'resourcePermission': instance.resourcePermission,
    };

_ChangePasswordParameterDto _$ChangePasswordParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _ChangePasswordParameterDto(
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$ChangePasswordParameterDtoToJson(
        _ChangePasswordParameterDto instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };

_CheckInOutDto _$CheckInOutDtoFromJson(Map<String, dynamic> json) =>
    _CheckInOutDto(
      studentId: json['studentId'] as String,
      date: DateTime.parse(json['date'] as String),
      checkType: json['checkType'] as String?,
      remarks: json['remarks'] as String?,
      photo: json['photo'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$CheckInOutDtoToJson(_CheckInOutDto instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'date': instance.date.toIso8601String(),
      'checkType': instance.checkType,
      'remarks': instance.remarks,
      'photo': instance.photo,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_CheckInOutParameterDto _$CheckInOutParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _CheckInOutParameterDto(
      id: json['id'] as String?,
      studentId: json['studentId'] as String,
      date: DateTime.parse(json['date'] as String),
      checkType: json['checkType'] as String?,
      remarks: json['remarks'] as String?,
      photo: json['photo'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$CheckInOutParameterDtoToJson(
        _CheckInOutParameterDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'date': instance.date.toIso8601String(),
      'checkType': instance.checkType,
      'remarks': instance.remarks,
      'photo': instance.photo,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_CheckInOutVODto _$CheckInOutVODtoFromJson(Map<String, dynamic> json) =>
    _CheckInOutVODto(
      id: json['id'] as String?,
      studentId: json['studentId'] as String,
      date: DateTime.parse(json['date'] as String),
      checkType: json['checkType'] as String?,
      remarks: json['remarks'] as String?,
      photo: json['photo'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$CheckInOutVODtoToJson(_CheckInOutVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'date': instance.date.toIso8601String(),
      'checkType': instance.checkType,
      'remarks': instance.remarks,
      'photo': instance.photo,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_ChildConfigVODto _$ChildConfigVODtoFromJson(Map<String, dynamic> json) =>
    _ChildConfigVODto(
      showBilling: json['showBilling'] as bool?,
      showDailyRoutine: json['showDailyRoutine'] as bool?,
      enablePTCBooking: json['enablePTCBooking'] as bool?,
      enableMedication: json['enableMedication'] as bool?,
      medicationAcceptDays: (json['medicationAcceptDays'] as num?)?.toInt(),
      medicationAllowBeforeHour:
          (json['medicationAllowBeforeHour'] as num?)?.toInt(),
      medicationLimit: (json['medicationLimit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChildConfigVODtoToJson(_ChildConfigVODto instance) =>
    <String, dynamic>{
      'showBilling': instance.showBilling,
      'showDailyRoutine': instance.showDailyRoutine,
      'enablePTCBooking': instance.enablePTCBooking,
      'enableMedication': instance.enableMedication,
      'medicationAcceptDays': instance.medicationAcceptDays,
      'medicationAllowBeforeHour': instance.medicationAllowBeforeHour,
      'medicationLimit': instance.medicationLimit,
    };

_CommunicationsParameterDto _$CommunicationsParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _CommunicationsParameterDto(
      topic: json['topic'] as String?,
      notificationType: json['notificationType'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      referenceId: json['referenceId'] as String?,
      notificationIds: json['notificationIds'] as String?,
    );

Map<String, dynamic> _$CommunicationsParameterDtoToJson(
        _CommunicationsParameterDto instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'notificationType': instance.notificationType,
      'title': instance.title,
      'body': instance.body,
      'referenceId': instance.referenceId,
      'notificationIds': instance.notificationIds,
    };

_ContactInfoDto _$ContactInfoDtoFromJson(Map<String, dynamic> json) =>
    _ContactInfoDto(
      accountId: json['accountId'] as String,
      mobilePhone: json['mobilePhone'] as String?,
      homePhone: json['homePhone'] as String?,
      emailAddress: json['emailAddress'] as String?,
    );

Map<String, dynamic> _$ContactInfoDtoToJson(_ContactInfoDto instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'mobilePhone': instance.mobilePhone,
      'homePhone': instance.homePhone,
      'emailAddress': instance.emailAddress,
    };

_CourseComponentAttendanceDto _$CourseComponentAttendanceDtoFromJson(
        Map<String, dynamic> json) =>
    _CourseComponentAttendanceDto(
      createdById: json['createdById'] as String?,
      createdDateTime: json['createdDateTime'] == null
          ? null
          : DateTime.parse(json['createdDateTime'] as String),
      lastModifiedById: json['lastModifiedById'] as String?,
      lastModifiedDateTime: json['lastModifiedDateTime'] == null
          ? null
          : DateTime.parse(json['lastModifiedDateTime'] as String),
      createdByName: json['createdByName'] as String?,
      lastModifiedByName: json['lastModifiedByName'] as String?,
      courseComponentId: (json['courseComponentId'] as num?)?.toInt(),
      studentId: json['studentId'] as String?,
      attendanceDate: json['attendanceDate'] == null
          ? null
          : DateTime.parse(json['attendanceDate'] as String),
      attendanceStatus: json['attendanceStatus'] as String?,
      attendanceRemarks: json['attendanceRemarks'] as String?,
    );

Map<String, dynamic> _$CourseComponentAttendanceDtoToJson(
        _CourseComponentAttendanceDto instance) =>
    <String, dynamic>{
      'createdById': instance.createdById,
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'lastModifiedById': instance.lastModifiedById,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'createdByName': instance.createdByName,
      'lastModifiedByName': instance.lastModifiedByName,
      'courseComponentId': instance.courseComponentId,
      'studentId': instance.studentId,
      'attendanceDate': instance.attendanceDate?.toIso8601String(),
      'attendanceStatus': instance.attendanceStatus,
      'attendanceRemarks': instance.attendanceRemarks,
    };

_CourseComponentAttendanceParameterDto
    _$CourseComponentAttendanceParameterDtoFromJson(
            Map<String, dynamic> json) =>
        _CourseComponentAttendanceParameterDto(
          courseComponentId: (json['courseComponentId'] as num?)?.toInt(),
          studentId: json['studentId'] as String?,
          attendanceDate: json['attendanceDate'] == null
              ? null
              : DateTime.parse(json['attendanceDate'] as String),
          attendanceStatus: json['attendanceStatus'] as String?,
        );

Map<String, dynamic> _$CourseComponentAttendanceParameterDtoToJson(
        _CourseComponentAttendanceParameterDto instance) =>
    <String, dynamic>{
      'courseComponentId': instance.courseComponentId,
      'studentId': instance.studentId,
      'attendanceDate': instance.attendanceDate?.toIso8601String(),
      'attendanceStatus': instance.attendanceStatus,
    };

_CourseComponentStudentParameterDto
    _$CourseComponentStudentParameterDtoFromJson(Map<String, dynamic> json) =>
        _CourseComponentStudentParameterDto(
          courseComponentId: (json['courseComponentId'] as num?)?.toInt(),
          academicYearId: json['academicYearId'] as String?,
          studentId: json['studentId'] as String?,
          isActive: json['isActive'] as bool?,
        );

Map<String, dynamic> _$CourseComponentStudentParameterDtoToJson(
        _CourseComponentStudentParameterDto instance) =>
    <String, dynamic>{
      'courseComponentId': instance.courseComponentId,
      'academicYearId': instance.academicYearId,
      'studentId': instance.studentId,
      'isActive': instance.isActive,
    };

_CustomNotificationParametersDto _$CustomNotificationParametersDtoFromJson(
        Map<String, dynamic> json) =>
    _CustomNotificationParametersDto(
      teacherId: json['teacherId'] as String?,
      schoolId: json['schoolId'] as String?,
      ptcInfo: json['ptcInfo'] as String?,
      tagStudents: (json['tagStudents'] as List<dynamic>?)
          ?.map((e) => TagStudentsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagClasses: (json['tagClasses'] as List<dynamic>?)
          ?.map((e) => TagClassDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagLevels: (json['tagLevels'] as List<dynamic>?)
          ?.map((e) => TagLevelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomNotificationParametersDtoToJson(
        _CustomNotificationParametersDto instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'schoolId': instance.schoolId,
      'ptcInfo': instance.ptcInfo,
      'tagStudents': instance.tagStudents,
      'tagClasses': instance.tagClasses,
      'tagLevels': instance.tagLevels,
    };

_DailyLogAttendanceDto _$DailyLogAttendanceDtoFromJson(
        Map<String, dynamic> json) =>
    _DailyLogAttendanceDto(
      id: (json['id'] as num?)?.toInt(),
      studentId: json['studentId'] as String?,
      attendanceDate: json['attendanceDate'] == null
          ? null
          : DateTime.parse(json['attendanceDate'] as String),
      status: json['status'] as String?,
      remarks: json['remarks'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedBy: json['updatedBy'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$DailyLogAttendanceDtoToJson(
        _DailyLogAttendanceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'attendanceDate': instance.attendanceDate?.toIso8601String(),
      'status': instance.status,
      'remarks': instance.remarks,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };

_DateTimeTimeZoneDto _$DateTimeTimeZoneDtoFromJson(Map<String, dynamic> json) =>
    _DateTimeTimeZoneDto(
      dateTime: json['dateTime'] as String?,
      timeZone: json['timeZone'] as String?,
      odataType: json['@odata.type'] as String?,
    );

Map<String, dynamic> _$DateTimeTimeZoneDtoToJson(
        _DateTimeTimeZoneDto instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'timeZone': instance.timeZone,
      '@odata.type': instance.odataType,
    };

_EditBookEventParameterDto _$EditBookEventParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _EditBookEventParameterDto(
      oldOrganiserEmail: json['oldOrganiserEmail'] as String?,
      oldEventId: json['oldEventId'] as String?,
      newOrganiserEmail: json['newOrganiserEmail'] as String?,
      newEventId: json['newEventId'] as String?,
      recipients: (json['recipients'] as List<dynamic>?)
          ?.map((e) =>
              CalendarInviteRecipientDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EditBookEventParameterDtoToJson(
        _EditBookEventParameterDto instance) =>
    <String, dynamic>{
      'oldOrganiserEmail': instance.oldOrganiserEmail,
      'oldEventId': instance.oldEventId,
      'newOrganiserEmail': instance.newOrganiserEmail,
      'newEventId': instance.newEventId,
      'recipients': instance.recipients,
    };

_EmailAddressDto _$EmailAddressDtoFromJson(Map<String, dynamic> json) =>
    _EmailAddressDto(
      address: json['address'] as String?,
      name: json['name'] as String?,
      odataType: json['@odata.type'] as String?,
    );

Map<String, dynamic> _$EmailAddressDtoToJson(_EmailAddressDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      '@odata.type': instance.odataType,
    };

_LastTemperatureVODto _$LastTemperatureVODtoFromJson(
        Map<String, dynamic> json) =>
    _LastTemperatureVODto(
      id: (json['id'] as num?)?.toInt(),
      lastTimeStamp: json['lastTimeStamp'] == null
          ? null
          : DateTime.parse(json['lastTimeStamp'] as String),
      lastTempCheck: json['lastTempCheck'] as String?,
    );

Map<String, dynamic> _$LastTemperatureVODtoToJson(
        _LastTemperatureVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastTimeStamp': instance.lastTimeStamp?.toIso8601String(),
      'lastTempCheck': instance.lastTempCheck,
    };

_LoginParameterDto _$LoginParameterDtoFromJson(Map<String, dynamic> json) =>
    _LoginParameterDto(
      loginId: json['loginId'] as String,
      password: json['password'] as String,
      organisation: json['organisation'] as String,
      deviceToken: json['deviceToken'] as String?,
      accountType: json['accountType'] as String?,
    );

Map<String, dynamic> _$LoginParameterDtoToJson(_LoginParameterDto instance) =>
    <String, dynamic>{
      'loginId': instance.loginId,
      'password': instance.password,
      'organisation': instance.organisation,
      'deviceToken': instance.deviceToken,
      'accountType': instance.accountType,
    };

_MarkAttendanceParameterDto _$MarkAttendanceParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _MarkAttendanceParameterDto(
      attendanceStatus: json['attendanceStatus'] as String?,
      remarks: json['remarks'] as String?,
      optionalDateTime: json['optionalDateTime'] as String?,
    );

Map<String, dynamic> _$MarkAttendanceParameterDtoToJson(
        _MarkAttendanceParameterDto instance) =>
    <String, dynamic>{
      'attendanceStatus': instance.attendanceStatus,
      'remarks': instance.remarks,
      'optionalDateTime': instance.optionalDateTime,
    };

_MarkCheckInOutParameterDto _$MarkCheckInOutParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _MarkCheckInOutParameterDto(
      checkType: json['checkType'] as String?,
      remarks: json['remarks'] as String?,
      optionalDateTime: json['optionalDateTime'] as String?,
      fileName: json['fileName'] as String?,
      file64BitString: json['file64BitString'] as String?,
    );

Map<String, dynamic> _$MarkCheckInOutParameterDtoToJson(
        _MarkCheckInOutParameterDto instance) =>
    <String, dynamic>{
      'checkType': instance.checkType,
      'remarks': instance.remarks,
      'optionalDateTime': instance.optionalDateTime,
      'fileName': instance.fileName,
      'file64BitString': instance.file64BitString,
    };

_MarkDailyRoutineParameterDto _$MarkDailyRoutineParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _MarkDailyRoutineParameterDto(
      referenceType: json['referenceType'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$MarkDailyRoutineParameterDtoToJson(
        _MarkDailyRoutineParameterDto instance) =>
    <String, dynamic>{
      'referenceType': instance.referenceType,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'remarks': instance.remarks,
    };

_MarkMassAttendanceParameterDto _$MarkMassAttendanceParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _MarkMassAttendanceParameterDto(
      attendanceStatus: json['attendanceStatus'] as String?,
      remarks: json['remarks'] as String?,
      studentIds: (json['studentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      optionalDateTime: json['optionalDateTime'] as String?,
    );

Map<String, dynamic> _$MarkMassAttendanceParameterDtoToJson(
        _MarkMassAttendanceParameterDto instance) =>
    <String, dynamic>{
      'attendanceStatus': instance.attendanceStatus,
      'remarks': instance.remarks,
      'studentIds': instance.studentIds,
      'optionalDateTime': instance.optionalDateTime,
    };

_MarkTemperatureCheckParameterDto _$MarkTemperatureCheckParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _MarkTemperatureCheckParameterDto(
      temperature: json['temperature'] as num?,
      remarks: json['remarks'] as String?,
      optionalDateTime: json['optionalDateTime'] as String?,
    );

Map<String, dynamic> _$MarkTemperatureCheckParameterDtoToJson(
        _MarkTemperatureCheckParameterDto instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'remarks': instance.remarks,
      'optionalDateTime': instance.optionalDateTime,
    };

_MedicineAuditDetailVODto _$MedicineAuditDetailVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineAuditDetailVODto(
      id: (json['id'] as num?)?.toInt(),
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      name: json['name'] as String?,
      dosage: json['dosage'] as String?,
      administrationManner: json['administrationManner'] as String?,
      medicineExpirationDate: json['medicineExpirationDate'] == null
          ? null
          : DateTime.parse(json['medicineExpirationDate'] as String),
      entityFileRefId: json['entityFileRefId'] as String?,
      entityFileUrl: json['entityFileUrl'] as String?,
      fileUrl: json['fileUrl'] as String?,
      remarks: json['remarks'] as String?,
      isTaken: json['isTaken'] as bool?,
    );

Map<String, dynamic> _$MedicineAuditDetailVODtoToJson(
        _MedicineAuditDetailVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicineFormId': instance.medicineFormId,
      'name': instance.name,
      'dosage': instance.dosage,
      'administrationManner': instance.administrationManner,
      'medicineExpirationDate':
          instance.medicineExpirationDate?.toIso8601String(),
      'entityFileRefId': instance.entityFileRefId,
      'entityFileUrl': instance.entityFileUrl,
      'fileUrl': instance.fileUrl,
      'remarks': instance.remarks,
      'isTaken': instance.isTaken,
    };

_MedicineAuditTrailsDto _$MedicineAuditTrailsDtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineAuditTrailsDto(
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      photoUrl: json['photoUrl'] as String?,
      remarks: json['remarks'] as String?,
      medicineDetailTakenIds: json['medicineDetailTakenIds'] as String?,
      administratorDate: json['administratorDate'] == null
          ? null
          : DateTime.parse(json['administratorDate'] as String),
    );

Map<String, dynamic> _$MedicineAuditTrailsDtoToJson(
        _MedicineAuditTrailsDto instance) =>
    <String, dynamic>{
      'medicineFormId': instance.medicineFormId,
      'photoUrl': instance.photoUrl,
      'remarks': instance.remarks,
      'medicineDetailTakenIds': instance.medicineDetailTakenIds,
      'administratorDate': instance.administratorDate?.toIso8601String(),
    };

_MedicineAuditTrailsVerifierDto _$MedicineAuditTrailsVerifierDtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineAuditTrailsVerifierDto(
      medicineAuditId: (json['medicineAuditId'] as num).toInt(),
      remark: json['remark'] as String?,
    );

Map<String, dynamic> _$MedicineAuditTrailsVerifierDtoToJson(
        _MedicineAuditTrailsVerifierDto instance) =>
    <String, dynamic>{
      'medicineAuditId': instance.medicineAuditId,
      'remark': instance.remark,
    };

_MedicineAuditWebViewVODto _$MedicineAuditWebViewVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineAuditWebViewVODto(
      audit: MedicineAuditWithDetailVODto.fromJson(
          json['audit'] as Map<String, dynamic>),
      formStartDate: json['formStartDate'] == null
          ? null
          : DateTime.parse(json['formStartDate'] as String),
      formEndDate: json['formEndDate'] == null
          ? null
          : DateTime.parse(json['formEndDate'] as String),
      student: json['student'] == null
          ? null
          : StudentBaseInfoVODto.fromJson(
              json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicineAuditWebViewVODtoToJson(
        _MedicineAuditWebViewVODto instance) =>
    <String, dynamic>{
      'audit': instance.audit,
      'formStartDate': instance.formStartDate?.toIso8601String(),
      'formEndDate': instance.formEndDate?.toIso8601String(),
      'student': instance.student,
    };

_MedicineAuditWebViewVOPaginationDto
    _$MedicineAuditWebViewVOPaginationDtoFromJson(Map<String, dynamic> json) =>
        _MedicineAuditWebViewVOPaginationDto(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  MedicineAuditWebViewVODto.fromJson(e as Map<String, dynamic>))
              .toList(),
          totalRecords: (json['totalRecords'] as num?)?.toInt(),
          currentPage: (json['currentPage'] as num?)?.toInt(),
          pageSize: (json['pageSize'] as num?)?.toInt(),
          totalPages: (json['totalPages'] as num?)?.toInt(),
          hasNext: json['hasNext'] as bool?,
          hasPrevious: json['hasPrevious'] as bool?,
        );

Map<String, dynamic> _$MedicineAuditWebViewVOPaginationDtoToJson(
        _MedicineAuditWebViewVOPaginationDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalRecords': instance.totalRecords,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasNext': instance.hasNext,
      'hasPrevious': instance.hasPrevious,
    };

_MedicineAuditWithDetailVODto _$MedicineAuditWithDetailVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineAuditWithDetailVODto(
      id: (json['id'] as num?)?.toInt(),
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      administratorDate: json['administratorDate'] == null
          ? null
          : DateTime.parse(json['administratorDate'] as String),
      administratorConId: json['administratorConId'] as String?,
      administratorName: json['administratorName'] as String?,
      administratorRemark: json['administratorRemark'] as String?,
      photoUrl: json['photoUrl'] as String?,
      verifierDate: json['verifierDate'] == null
          ? null
          : DateTime.parse(json['verifierDate'] as String),
      verifierConId: json['verifierConId'] as String?,
      verifierName: json['verifierName'] as String?,
      verifierRemark: json['verifierRemark'] as String?,
      status: json['status'] as String?,
      medicineDetails: (json['medicineDetails'] as List<dynamic>?)
          ?.map((e) =>
              MedicineAuditDetailVODto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MedicineAuditWithDetailVODtoToJson(
        _MedicineAuditWithDetailVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicineFormId': instance.medicineFormId,
      'administratorDate': instance.administratorDate?.toIso8601String(),
      'administratorConId': instance.administratorConId,
      'administratorName': instance.administratorName,
      'administratorRemark': instance.administratorRemark,
      'photoUrl': instance.photoUrl,
      'verifierDate': instance.verifierDate?.toIso8601String(),
      'verifierConId': instance.verifierConId,
      'verifierName': instance.verifierName,
      'verifierRemark': instance.verifierRemark,
      'status': instance.status,
      'medicineDetails': instance.medicineDetails,
    };

_MedicineDataStudentVODto _$MedicineDataStudentVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineDataStudentVODto(
      student: json['student'] == null
          ? null
          : StudentBaseInfoVODto.fromJson(
              json['student'] as Map<String, dynamic>),
      activeRequestCount: (json['activeRequestCount'] as num?)?.toInt(),
      expiredRequestCount: (json['expiredRequestCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MedicineDataStudentVODtoToJson(
        _MedicineDataStudentVODto instance) =>
    <String, dynamic>{
      'student': instance.student,
      'activeRequestCount': instance.activeRequestCount,
      'expiredRequestCount': instance.expiredRequestCount,
    };

_MedicineDetailsDto _$MedicineDetailsDtoFromJson(Map<String, dynamic> json) =>
    _MedicineDetailsDto(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      dosage: json['dosage'] as String,
      administrationManner: json['administrationManner'] as String?,
      entityFileRefId: json['entityFileRefId'] as String?,
      fileUrl: json['fileUrl'] as String?,
      medicineExpirationDate: json['medicineExpirationDate'] == null
          ? null
          : DateTime.parse(json['medicineExpirationDate'] as String),
    );

Map<String, dynamic> _$MedicineDetailsDtoToJson(_MedicineDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dosage': instance.dosage,
      'administrationManner': instance.administrationManner,
      'entityFileRefId': instance.entityFileRefId,
      'fileUrl': instance.fileUrl,
      'medicineExpirationDate':
          instance.medicineExpirationDate?.toIso8601String(),
    };

_MedicineDetailsVODto _$MedicineDetailsVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineDetailsVODto(
      id: (json['id'] as num?)?.toInt(),
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      name: json['name'] as String?,
      dosage: json['dosage'] as String?,
      administrationManner: json['administrationManner'] as String?,
      medicineExpirationDate: json['medicineExpirationDate'] == null
          ? null
          : DateTime.parse(json['medicineExpirationDate'] as String),
      entityFileRefId: json['entityFileRefId'] as String?,
      entityFileUrl: json['entityFileUrl'] as String?,
      fileUrl: json['fileUrl'] as String?,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$MedicineDetailsVODtoToJson(
        _MedicineDetailsVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicineFormId': instance.medicineFormId,
      'name': instance.name,
      'dosage': instance.dosage,
      'administrationManner': instance.administrationManner,
      'medicineExpirationDate':
          instance.medicineExpirationDate?.toIso8601String(),
      'entityFileRefId': instance.entityFileRefId,
      'entityFileUrl': instance.entityFileUrl,
      'fileUrl': instance.fileUrl,
      'remarks': instance.remarks,
    };

_MedicineFormDto _$MedicineFormDtoFromJson(Map<String, dynamic> json) =>
    _MedicineFormDto(
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      applicationDate: json['applicationDate'] == null
          ? null
          : DateTime.parse(json['applicationDate'] as String),
      studentId: json['studentId'] as String,
      parentType: json['parentType'] as String?,
      parentEmail: json['parentEmail'] as String?,
      studentCourseId: json['studentCourseId'] as String?,
      administrationTime: json['administrationTime'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      remarks: json['remarks'] as String?,
      status: json['status'] as String?,
      acknowledgedBy: json['acknowledgedBy'] as String?,
      acknowledgedDateTime: json['acknowledgedDateTime'] == null
          ? null
          : DateTime.parse(json['acknowledgedDateTime'] as String),
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      rejectedBy: json['rejectedBy'] as String?,
      rejectedDateTime: json['rejectedDateTime'] == null
          ? null
          : DateTime.parse(json['rejectedDateTime'] as String),
      acknowledgeCancelBy: json['acknowledgeCancelBy'] as String?,
      acknowledgeCancelDateTime: json['acknowledgeCancelDateTime'] == null
          ? null
          : DateTime.parse(json['acknowledgeCancelDateTime'] as String),
      updatedBy: json['updatedBy'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      schoolId: json['schoolId'] as String?,
      classId: json['classId'] as String?,
      rejectRemarks: json['rejectRemarks'] as String?,
      previousStatus: json['previousStatus'] as String?,
      previousUpdatedDate: json['previousUpdatedDate'] == null
          ? null
          : DateTime.parse(json['previousUpdatedDate'] as String),
    );

Map<String, dynamic> _$MedicineFormDtoToJson(_MedicineFormDto instance) =>
    <String, dynamic>{
      'medicineFormId': instance.medicineFormId,
      'applicationDate': instance.applicationDate?.toIso8601String(),
      'studentId': instance.studentId,
      'parentType': instance.parentType,
      'parentEmail': instance.parentEmail,
      'studentCourseId': instance.studentCourseId,
      'administrationTime': instance.administrationTime,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'remarks': instance.remarks,
      'status': instance.status,
      'acknowledgedBy': instance.acknowledgedBy,
      'acknowledgedDateTime': instance.acknowledgedDateTime?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'rejectedBy': instance.rejectedBy,
      'rejectedDateTime': instance.rejectedDateTime?.toIso8601String(),
      'acknowledgeCancelBy': instance.acknowledgeCancelBy,
      'acknowledgeCancelDateTime':
          instance.acknowledgeCancelDateTime?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'schoolId': instance.schoolId,
      'classId': instance.classId,
      'rejectRemarks': instance.rejectRemarks,
      'previousStatus': instance.previousStatus,
      'previousUpdatedDate': instance.previousUpdatedDate?.toIso8601String(),
    };

_MedicineFormFullVODto _$MedicineFormFullVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineFormFullVODto(
      medicineFormId: (json['medicineFormId'] as num?)?.toInt(),
      applicationDate: json['applicationDate'] == null
          ? null
          : DateTime.parse(json['applicationDate'] as String),
      studentId: json['studentId'] as String?,
      parentType: json['parentType'] as String?,
      parentEmail: json['parentEmail'] as String?,
      studentCourseId: json['studentCourseId'] as String?,
      administrationTime: json['administrationTime'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      remarks: json['remarks'] as String?,
      medicineFormStatus: json['medicineFormStatus'] as String?,
      createdBy: json['createdBy'] as String?,
      createdByName: json['createdByName'] as String?,
      acknowledgedBy: json['acknowledgedBy'] as String?,
      acknowledgedByName: json['acknowledgedByName'] as String?,
      acknowledgedDateTime: json['acknowledgedDateTime'] == null
          ? null
          : DateTime.parse(json['acknowledgedDateTime'] as String),
      rejectedBy: json['rejectedBy'] as String?,
      rejectedByName: json['rejectedByName'] as String?,
      rejectedDateTime: json['rejectedDateTime'] == null
          ? null
          : DateTime.parse(json['rejectedDateTime'] as String),
      acknowledgeCancelBy: json['acknowledgeCancelBy'] as String?,
      acknowledgeCancelByName: json['acknowledgeCancelByName'] as String?,
      acknowledgeCancelDateTime: json['acknowledgeCancelDateTime'] == null
          ? null
          : DateTime.parse(json['acknowledgeCancelDateTime'] as String),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      rejectRemarks: json['rejectRemarks'] as String?,
      medicineDetails: (json['medicineDetails'] as List<dynamic>?)
          ?.map((e) => MedicineDetailsVODto.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestAudit: json['latestAudit'] == null
          ? null
          : MedicineAuditWithDetailVODto.fromJson(
              json['latestAudit'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : StudentBaseInfoVODto.fromJson(
              json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicineFormFullVODtoToJson(
        _MedicineFormFullVODto instance) =>
    <String, dynamic>{
      'medicineFormId': instance.medicineFormId,
      'applicationDate': instance.applicationDate?.toIso8601String(),
      'studentId': instance.studentId,
      'parentType': instance.parentType,
      'parentEmail': instance.parentEmail,
      'studentCourseId': instance.studentCourseId,
      'administrationTime': instance.administrationTime,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'remarks': instance.remarks,
      'medicineFormStatus': instance.medicineFormStatus,
      'createdBy': instance.createdBy,
      'createdByName': instance.createdByName,
      'acknowledgedBy': instance.acknowledgedBy,
      'acknowledgedByName': instance.acknowledgedByName,
      'acknowledgedDateTime': instance.acknowledgedDateTime?.toIso8601String(),
      'rejectedBy': instance.rejectedBy,
      'rejectedByName': instance.rejectedByName,
      'rejectedDateTime': instance.rejectedDateTime?.toIso8601String(),
      'acknowledgeCancelBy': instance.acknowledgeCancelBy,
      'acknowledgeCancelByName': instance.acknowledgeCancelByName,
      'acknowledgeCancelDateTime':
          instance.acknowledgeCancelDateTime?.toIso8601String(),
      'createdDate': instance.createdDate?.toIso8601String(),
      'rejectRemarks': instance.rejectRemarks,
      'medicineDetails': instance.medicineDetails,
      'latestAudit': instance.latestAudit,
      'student': instance.student,
    };

_MedicineFormFullVOPaginationDto _$MedicineFormFullVOPaginationDtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineFormFullVOPaginationDto(
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => MedicineFormFullVODto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRecords: (json['totalRecords'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNext: json['hasNext'] as bool?,
      hasPrevious: json['hasPrevious'] as bool?,
    );

Map<String, dynamic> _$MedicineFormFullVOPaginationDtoToJson(
        _MedicineFormFullVOPaginationDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalRecords': instance.totalRecords,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasNext': instance.hasNext,
      'hasPrevious': instance.hasPrevious,
    };

_MedicineFormRejectDto _$MedicineFormRejectDtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineFormRejectDto(
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$MedicineFormRejectDtoToJson(
        _MedicineFormRejectDto instance) =>
    <String, dynamic>{
      'remarks': instance.remarks,
    };

_MedicineFormSchoolConfigVODto _$MedicineFormSchoolConfigVODtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineFormSchoolConfigVODto(
      medicationEnable: json['medicationEnable'] as bool?,
      medicationTakePhotoEnable: json['medicationTakePhotoEnable'] as bool?,
      medicationAcceptDays: (json['medicationAcceptDays'] as num?)?.toInt(),
      medicationAllowBeforeHour:
          (json['medicationAllowBeforeHour'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MedicineFormSchoolConfigVODtoToJson(
        _MedicineFormSchoolConfigVODto instance) =>
    <String, dynamic>{
      'medicationEnable': instance.medicationEnable,
      'medicationTakePhotoEnable': instance.medicationTakePhotoEnable,
      'medicationAcceptDays': instance.medicationAcceptDays,
      'medicationAllowBeforeHour': instance.medicationAllowBeforeHour,
    };

_MedicineFormUpdateDto _$MedicineFormUpdateDtoFromJson(
        Map<String, dynamic> json) =>
    _MedicineFormUpdateDto(
      administrationTime: json['administrationTime'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      remarks: json['remarks'] as String?,
      medicineDetails: (json['medicineDetails'] as List<dynamic>?)
          ?.map((e) => MedicineDetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MedicineFormUpdateDtoToJson(
        _MedicineFormUpdateDto instance) =>
    <String, dynamic>{
      'administrationTime': instance.administrationTime,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'remarks': instance.remarks,
      'medicineDetails': instance.medicineDetails,
    };

_OTPParameterDto _$OTPParameterDtoFromJson(Map<String, dynamic> json) =>
    _OTPParameterDto(
      emailAddress: json['emailAddress'] as String?,
    );

Map<String, dynamic> _$OTPParameterDtoToJson(_OTPParameterDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
    };

_OTPValidateParameterDto _$OTPValidateParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _OTPValidateParameterDto(
      otpNumber: json['otpNumber'] as String?,
      emailAddress: json['emailAddress'] as String?,
    );

Map<String, dynamic> _$OTPValidateParameterDtoToJson(
        _OTPValidateParameterDto instance) =>
    <String, dynamic>{
      'otpNumber': instance.otpNumber,
      'emailAddress': instance.emailAddress,
    };

_PersonalInfoDto _$PersonalInfoDtoFromJson(Map<String, dynamic> json) =>
    _PersonalInfoDto(
      accountId: json['accountId'] as String,
      firstName: json['firstName'] as String?,
      displayName: json['displayName'] as String?,
      lastName: json['lastName'] as String?,
      firstNameOther: json['firstNameOther'] as String?,
      lastNameOther: json['lastNameOther'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      idType: json['idType'] as String?,
      idExpiryDate: json['idExpiryDate'] == null
          ? null
          : DateTime.parse(json['idExpiryDate'] as String),
      nationality: json['nationality'] as String?,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$PersonalInfoDtoToJson(_PersonalInfoDto instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'firstName': instance.firstName,
      'displayName': instance.displayName,
      'lastName': instance.lastName,
      'firstNameOther': instance.firstNameOther,
      'lastNameOther': instance.lastNameOther,
      'dob': instance.dob?.toIso8601String(),
      'idType': instance.idType,
      'idExpiryDate': instance.idExpiryDate?.toIso8601String(),
      'nationality': instance.nationality,
      'photoURL': instance.photoURL,
    };

_PostDto _$PostDtoFromJson(Map<String, dynamic> json) => _PostDto(
      createdById: json['createdById'] as String?,
      createdDateTime: json['createdDateTime'] == null
          ? null
          : DateTime.parse(json['createdDateTime'] as String),
      lastModifiedById: json['lastModifiedById'] as String?,
      lastModifiedDateTime: json['lastModifiedDateTime'] == null
          ? null
          : DateTime.parse(json['lastModifiedDateTime'] as String),
      lastModifiedByName: json['lastModifiedByName'] as String?,
      id: json['id'] as String,
      postType: json['postType'] as String,
      status: json['status'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      academicYearId: json['academicYearId'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      isAllClass: json['isAllClass'] as bool?,
      isAllLevel: json['isAllLevel'] as bool?,
      postTags: (json['postTags'] as List<dynamic>?)
          ?.map((e) => PostTagDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => PostFileDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postAssociatedWithStudents: (json['postAssociatedWithStudents']
              as List<dynamic>?)
          ?.map((e) =>
              PostAssociatedWithStudentsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postStudents: (json['postStudents'] as List<dynamic>?)
          ?.map((e) => PostStudentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postClasses: (json['postClasses'] as List<dynamic>?)
          ?.map((e) => PostClassDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postCourses: (json['postCourses'] as List<dynamic>?)
          ?.map((e) => PostCourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postGoals: (json['postGoals'] as List<dynamic>?)
          ?.map((e) => PostGoalDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postReactions: (json['postReactions'] as List<dynamic>?)
          ?.map((e) => PostReactionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      postClassString: json['postClassString'] as String?,
      postStudentString: json['postStudentString'] as String?,
      allowComment: json['allowComment'] as bool?,
      viewCount: (json['viewCount'] as num?)?.toInt(),
      createdByName: json['createdByName'] as String?,
      markedDate: json['markedDate'] == null
          ? null
          : DateTime.parse(json['markedDate'] as String),
      schoolId: json['schoolId'] as String?,
      homeSchool: json['homeSchool'] as String?,
      literacy: json['literacy'] as String?,
      numeracy: json['numeracy'] as String?,
      observation: json['observation'] as String?,
    );

Map<String, dynamic> _$PostDtoToJson(_PostDto instance) => <String, dynamic>{
      'createdById': instance.createdById,
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'lastModifiedById': instance.lastModifiedById,
      'lastModifiedDateTime': instance.lastModifiedDateTime?.toIso8601String(),
      'lastModifiedByName': instance.lastModifiedByName,
      'id': instance.id,
      'postType': instance.postType,
      'status': instance.status,
      'publishDate': instance.publishDate.toIso8601String(),
      'academicYearId': instance.academicYearId,
      'description': instance.description,
      'title': instance.title,
      'isAllClass': instance.isAllClass,
      'isAllLevel': instance.isAllLevel,
      'postTags': instance.postTags,
      'files': instance.files,
      'postAssociatedWithStudents': instance.postAssociatedWithStudents,
      'postStudents': instance.postStudents,
      'postClasses': instance.postClasses,
      'postCourses': instance.postCourses,
      'postGoals': instance.postGoals,
      'postReactions': instance.postReactions,
      'postClassString': instance.postClassString,
      'postStudentString': instance.postStudentString,
      'allowComment': instance.allowComment,
      'viewCount': instance.viewCount,
      'createdByName': instance.createdByName,
      'markedDate': instance.markedDate?.toIso8601String(),
      'schoolId': instance.schoolId,
      'homeSchool': instance.homeSchool,
      'literacy': instance.literacy,
      'numeracy': instance.numeracy,
      'observation': instance.observation,
    };

_PostAssociatedWithStudentsDto _$PostAssociatedWithStudentsDtoFromJson(
        Map<String, dynamic> json) =>
    _PostAssociatedWithStudentsDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      studentId: json['studentId'] as String,
      academicYearId: json['academicYearId'] as String,
      courseId: json['courseId'] as String,
      classId: json['classId'] as String,
      studentName: json['studentName'] as String?,
    );

Map<String, dynamic> _$PostAssociatedWithStudentsDtoToJson(
        _PostAssociatedWithStudentsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'studentId': instance.studentId,
      'academicYearId': instance.academicYearId,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'studentName': instance.studentName,
    };

_PostClassDto _$PostClassDtoFromJson(Map<String, dynamic> json) =>
    _PostClassDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      classId: json['classId'] as String,
      classname: json['classname'] as String?,
    );

Map<String, dynamic> _$PostClassDtoToJson(_PostClassDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'classId': instance.classId,
      'classname': instance.classname,
    };

_PostCommentDto _$PostCommentDtoFromJson(Map<String, dynamic> json) =>
    _PostCommentDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      content: json['content'] as String,
      publishedDate: DateTime.parse(json['publishedDate'] as String),
      commentBy: json['commentBy'] as String,
      threadId: json['threadId'] as String?,
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      status: json['status'] as String?,
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => PostCommentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$PostCommentDtoToJson(_PostCommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'content': instance.content,
      'publishedDate': instance.publishedDate.toIso8601String(),
      'commentBy': instance.commentBy,
      'threadId': instance.threadId,
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'status': instance.status,
      'replies': instance.replies,
      'displayName': instance.displayName,
    };

_PostCourseDto _$PostCourseDtoFromJson(Map<String, dynamic> json) =>
    _PostCourseDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      courseId: json['courseId'] as String,
      schoolId: json['schoolId'] as String,
      academicYearId: json['academicYearId'] as String,
      courseName: json['courseName'] as String?,
    );

Map<String, dynamic> _$PostCourseDtoToJson(_PostCourseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'courseId': instance.courseId,
      'schoolId': instance.schoolId,
      'academicYearId': instance.academicYearId,
      'courseName': instance.courseName,
    };

_PostFileDto _$PostFileDtoFromJson(Map<String, dynamic> json) => _PostFileDto(
      id: json['id'] as String?,
      postId: json['postId'] as String?,
      fileName: json['fileName'] as String?,
      contentType: json['contentType'] as String?,
      fileUrl: json['fileUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      sequenceNo: (json['sequenceNo'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PostFileDtoToJson(_PostFileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'fileName': instance.fileName,
      'contentType': instance.contentType,
      'fileUrl': instance.fileUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'sequenceNo': instance.sequenceNo,
    };

_PostGoalDto _$PostGoalDtoFromJson(Map<String, dynamic> json) => _PostGoalDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      domain: json['domain'] as String?,
      goal: json['goal'] as String?,
      indicator: json['indicator'] as String?,
      masId: json['masId'] as String?,
      masOrder: json['masOrder'] as String?,
    );

Map<String, dynamic> _$PostGoalDtoToJson(_PostGoalDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'domain': instance.domain,
      'goal': instance.goal,
      'indicator': instance.indicator,
      'masId': instance.masId,
      'masOrder': instance.masOrder,
    };

_PostQueryStringParametersDto _$PostQueryStringParametersDtoFromJson(
        Map<String, dynamic> json) =>
    _PostQueryStringParametersDto(
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      schoolId: json['schoolId'] as String?,
      academicYearId: json['academicYearId'] as String?,
      studentId: json['studentId'] as String?,
      postType: json['postType'] as String?,
      status: json['status'] as String?,
      courseId: json['courseId'] as String?,
      classId: json['classId'] as String?,
      teacherId: json['teacherId'] as String?,
      startDateYyyMMdd: json['startDate_yyyMMdd'] as String?,
      endDateYyyMMdd: json['endDate_yyyMMdd'] as String?,
      searchString: json['searchString'] as String?,
      getMarkedDays: json['getMarkedDays'] as String?,
      teacherIdFilter: json['teacherIdFilter'] as String?,
      isFilterSearch: json['isFilterSearch'] as bool?,
    );

Map<String, dynamic> _$PostQueryStringParametersDtoToJson(
        _PostQueryStringParametersDto instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'schoolId': instance.schoolId,
      'academicYearId': instance.academicYearId,
      'studentId': instance.studentId,
      'postType': instance.postType,
      'status': instance.status,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'teacherId': instance.teacherId,
      'startDate_yyyMMdd': instance.startDateYyyMMdd,
      'endDate_yyyMMdd': instance.endDateYyyMMdd,
      'searchString': instance.searchString,
      'getMarkedDays': instance.getMarkedDays,
      'teacherIdFilter': instance.teacherIdFilter,
      'isFilterSearch': instance.isFilterSearch,
    };

_PostReactionDto _$PostReactionDtoFromJson(Map<String, dynamic> json) =>
    _PostReactionDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      reactionType: json['reactionType'] as String?,
      reactionUserId: json['reactionUserId'] as String?,
      reactionUserName: json['reactionUserName'] as String?,
    );

Map<String, dynamic> _$PostReactionDtoToJson(_PostReactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'reactionType': instance.reactionType,
      'reactionUserId': instance.reactionUserId,
      'reactionUserName': instance.reactionUserName,
    };

_PostStudentDto _$PostStudentDtoFromJson(Map<String, dynamic> json) =>
    _PostStudentDto(
      id: json['id'] as String,
      postId: json['postId'] as String,
      studentId: json['studentId'] as String,
      academicYearId: json['academicYearId'] as String,
      studentName: json['studentName'] as String?,
    );

Map<String, dynamic> _$PostStudentDtoToJson(_PostStudentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'studentId': instance.studentId,
      'academicYearId': instance.academicYearId,
      'studentName': instance.studentName,
    };

_PostTagDto _$PostTagDtoFromJson(Map<String, dynamic> json) => _PostTagDto(
      id: json['id'] as String?,
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$PostTagDtoToJson(_PostTagDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
    };

_PostToPDFParametersDto _$PostToPDFParametersDtoFromJson(
        Map<String, dynamic> json) =>
    _PostToPDFParametersDto(
      schoolId: json['schoolId'] as String,
      academicYearId: json['academicYearId'] as String?,
      studentIds: (json['studentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      postType: json['postType'] as String?,
      status: json['status'] as String?,
      courseId: json['courseId'] as String?,
      classId: json['classId'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      separateFilePerStudent: json['separateFilePerStudent'] as bool?,
    );

Map<String, dynamic> _$PostToPDFParametersDtoToJson(
        _PostToPDFParametersDto instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'academicYearId': instance.academicYearId,
      'studentIds': instance.studentIds,
      'postType': instance.postType,
      'status': instance.status,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'separateFilePerStudent': instance.separateFilePerStudent,
    };

_RefreshTokenParameterDto _$RefreshTokenParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _RefreshTokenParameterDto(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshTokenParameterDtoToJson(
        _RefreshTokenParameterDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

_ResetPasswordParameterDto _$ResetPasswordParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _ResetPasswordParameterDto(
      otpNumber: json['otpNumber'] as String?,
      emailAddress: json['emailAddress'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ResetPasswordParameterDtoToJson(
        _ResetPasswordParameterDto instance) =>
    <String, dynamic>{
      'otpNumber': instance.otpNumber,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
    };

_ResourcePermissionDto _$ResourcePermissionDtoFromJson(
        Map<String, dynamic> json) =>
    _ResourcePermissionDto(
      levels: json['levels'] as String?,
      classes: json['classes'] as String?,
      students: json['students'] as String?,
      batchNumber: json['batchNumber'] as String?,
      attendeeReference: json['attendeeReference'] as String?,
    );

Map<String, dynamic> _$ResourcePermissionDtoToJson(
        _ResourcePermissionDto instance) =>
    <String, dynamic>{
      'levels': instance.levels,
      'classes': instance.classes,
      'students': instance.students,
      'batchNumber': instance.batchNumber,
      'attendeeReference': instance.attendeeReference,
    };

_ResponseStatusDto _$ResponseStatusDtoFromJson(Map<String, dynamic> json) =>
    _ResponseStatusDto(
      response: $enumDecodeNullable(_$ResponseTypeDtoEnumMap, json['response']),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      odataType: json['@odata.type'] as String?,
    );

Map<String, dynamic> _$ResponseStatusDtoToJson(_ResponseStatusDto instance) =>
    <String, dynamic>{
      'response': _$ResponseTypeDtoEnumMap[instance.response],
      'time': instance.time?.toIso8601String(),
      '@odata.type': instance.odataType,
    };

const _$ResponseTypeDtoEnumMap = {
  ResponseTypeDto.none: 'None',
  ResponseTypeDto.organizer: 'Organizer',
  ResponseTypeDto.tentativelyAccepted: 'TentativelyAccepted',
  ResponseTypeDto.accepted: 'Accepted',
  ResponseTypeDto.declined: 'Declined',
  ResponseTypeDto.notResponded: 'NotResponded',
};

_StudentDto _$StudentDtoFromJson(Map<String, dynamic> json) => _StudentDto(
      id: json['id'] as String,
      studentNo: json['studentNo'] as String?,
      displayName: json['displayName'] as String?,
      schoolId: json['schoolId'] as String?,
      account: json['account'] == null
          ? null
          : AccountDto.fromJson(json['account'] as Map<String, dynamic>),
      photo: json['photo'] as String?,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
      schoolName: json['schoolName'] as String?,
      studentLevelId: json['studentLevelId'] as String?,
      levelId: json['levelId'] as String?,
      levelName: json['levelName'] as String?,
      classId: json['classId'] as String?,
      className: json['className'] as String?,
    );

Map<String, dynamic> _$StudentDtoToJson(_StudentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentNo': instance.studentNo,
      'displayName': instance.displayName,
      'schoolId': instance.schoolId,
      'account': instance.account,
      'photo': instance.photo,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'schoolName': instance.schoolName,
      'studentLevelId': instance.studentLevelId,
      'levelId': instance.levelId,
      'levelName': instance.levelName,
      'classId': instance.classId,
      'className': instance.className,
    };

_StudentBaseInfoVODto _$StudentBaseInfoVODtoFromJson(
        Map<String, dynamic> json) =>
    _StudentBaseInfoVODto(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      schoolId: json['schoolId'] as String?,
      schoolName: json['schoolName'] as String?,
      classId: json['classId'] as String?,
      className: json['className'] as String?,
      photo: json['photo'] as String?,
      levelId: json['levelId'] as String?,
      levelName: json['levelName'] as String?,
      status: json['status'] as String?,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
    );

Map<String, dynamic> _$StudentBaseInfoVODtoToJson(
        _StudentBaseInfoVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'schoolId': instance.schoolId,
      'schoolName': instance.schoolName,
      'classId': instance.classId,
      'className': instance.className,
      'photo': instance.photo,
      'levelId': instance.levelId,
      'levelName': instance.levelName,
      'status': instance.status,
      'registrationDate': instance.registrationDate?.toIso8601String(),
    };

_StudentMiniDailyLogVODto _$StudentMiniDailyLogVODtoFromJson(
        Map<String, dynamic> json) =>
    _StudentMiniDailyLogVODto(
      student: json['student'] == null
          ? null
          : StudentDto.fromJson(json['student'] as Map<String, dynamic>),
      attendanceStatus: json['attendanceStatus'] == null
          ? null
          : AttendanceVODto.fromJson(
              json['attendanceStatus'] as Map<String, dynamic>),
      lastTemperatureStatus: json['lastTemperatureStatus'] == null
          ? null
          : LastTemperatureVODto.fromJson(
              json['lastTemperatureStatus'] as Map<String, dynamic>),
      signInOutStatus: json['signInOutStatus'] == null
          ? null
          : CheckInOutVODto.fromJson(
              json['signInOutStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentMiniDailyLogVODtoToJson(
        _StudentMiniDailyLogVODto instance) =>
    <String, dynamic>{
      'student': instance.student,
      'attendanceStatus': instance.attendanceStatus,
      'lastTemperatureStatus': instance.lastTemperatureStatus,
      'signInOutStatus': instance.signInOutStatus,
    };

_StudentStatisticDto _$StudentStatisticDtoFromJson(Map<String, dynamic> json) =>
    _StudentStatisticDto(
      id: (json['id'] as num?)?.toInt(),
      studentId: json['studentId'] as String?,
      academicYearId: json['academicYearId'] as String?,
      academicYear: json['academicYear'] as String?,
      termId: json['termId'] as String?,
      term: json['term'] as String?,
      weightInKg: json['weightInKg'] as num?,
      heightInCm: json['heightInCm'] as num?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StudentStatisticDtoToJson(
        _StudentStatisticDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'academicYearId': instance.academicYearId,
      'academicYear': instance.academicYear,
      'termId': instance.termId,
      'term': instance.term,
      'weightInKg': instance.weightInKg,
      'heightInCm': instance.heightInCm,
      'status': instance.status,
    };

_StudentWithConfigVODto _$StudentWithConfigVODtoFromJson(
        Map<String, dynamic> json) =>
    _StudentWithConfigVODto(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      schoolId: json['schoolId'] as String?,
      schoolName: json['schoolName'] as String?,
      classId: json['classId'] as String?,
      className: json['className'] as String?,
      photo: json['photo'] as String?,
      levelId: json['levelId'] as String?,
      levelName: json['levelName'] as String?,
      status: json['status'] as String?,
      registrationDate: json['registrationDate'] == null
          ? null
          : DateTime.parse(json['registrationDate'] as String),
      config: json['config'] == null
          ? null
          : ChildConfigVODto.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentWithConfigVODtoToJson(
        _StudentWithConfigVODto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'schoolId': instance.schoolId,
      'schoolName': instance.schoolName,
      'classId': instance.classId,
      'className': instance.className,
      'photo': instance.photo,
      'levelId': instance.levelId,
      'levelName': instance.levelName,
      'status': instance.status,
      'registrationDate': instance.registrationDate?.toIso8601String(),
      'config': instance.config,
    };

_TagClassDto _$TagClassDtoFromJson(Map<String, dynamic> json) => _TagClassDto(
      teacherId: json['teacherId'] as String?,
      classId: json['classId'] as String?,
    );

Map<String, dynamic> _$TagClassDtoToJson(_TagClassDto instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'classId': instance.classId,
    };

_TagLevelDto _$TagLevelDtoFromJson(Map<String, dynamic> json) => _TagLevelDto(
      teacherId: json['teacherId'] as String?,
      levelId: json['levelId'] as String?,
    );

Map<String, dynamic> _$TagLevelDtoToJson(_TagLevelDto instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'levelId': instance.levelId,
    };

_TagStudentsDto _$TagStudentsDtoFromJson(Map<String, dynamic> json) =>
    _TagStudentsDto(
      teacherId: json['teacherId'] as String?,
      studentId: json['studentId'] as String?,
    );

Map<String, dynamic> _$TagStudentsDtoToJson(_TagStudentsDto instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'studentId': instance.studentId,
    };

_TeacherServiceQueryParameterDto _$TeacherServiceQueryParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _TeacherServiceQueryParameterDto(
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      overrideIsAciveFilter: json['overrideIsAciveFilter'] as bool?,
      academicYearId: json['academicYearId'] as String?,
      schoolId: json['schoolId'] as String?,
    );

Map<String, dynamic> _$TeacherServiceQueryParameterDtoToJson(
        _TeacherServiceQueryParameterDto instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'isActive': instance.isActive,
      'overrideIsAciveFilter': instance.overrideIsAciveFilter,
      'academicYearId': instance.academicYearId,
      'schoolId': instance.schoolId,
    };

_TemperatureCheckDto _$TemperatureCheckDtoFromJson(Map<String, dynamic> json) =>
    _TemperatureCheckDto(
      date: DateTime.parse(json['date'] as String),
      temperature: json['temperature'] as num,
      remarks: json['remarks'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$TemperatureCheckDtoToJson(
        _TemperatureCheckDto instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'temperature': instance.temperature,
      'remarks': instance.remarks,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_TemperatureCheckParameterDto _$TemperatureCheckParameterDtoFromJson(
        Map<String, dynamic> json) =>
    _TemperatureCheckParameterDto(
      id: json['id'] as String?,
      studentId: json['studentId'] as String,
      date: DateTime.parse(json['date'] as String),
      temperature: json['temperature'] as num,
      remarks: json['remarks'] as String?,
      utcDate: json['utcDate'] == null
          ? null
          : DateTime.parse(json['utcDate'] as String),
    );

Map<String, dynamic> _$TemperatureCheckParameterDtoToJson(
        _TemperatureCheckParameterDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'date': instance.date.toIso8601String(),
      'temperature': instance.temperature,
      'remarks': instance.remarks,
      'utcDate': instance.utcDate?.toIso8601String(),
    };

_TimeSlotDto _$TimeSlotDtoFromJson(Map<String, dynamic> json) => _TimeSlotDto(
      end: json['end'] == null
          ? null
          : DateTimeTimeZoneDto.fromJson(json['end'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : DateTimeTimeZoneDto.fromJson(json['start'] as Map<String, dynamic>),
      odataType: json['@odata.type'] as String?,
    );

Map<String, dynamic> _$TimeSlotDtoToJson(_TimeSlotDto instance) =>
    <String, dynamic>{
      'end': instance.end,
      'start': instance.start,
      '@odata.type': instance.odataType,
    };

_UserConfigDto _$UserConfigDtoFromJson(Map<String, dynamic> json) =>
    _UserConfigDto(
      notificationFrequent: json['notificationFrequent'] as String?,
      showDailyRoutine: json['showDailyRoutine'] as bool?,
      enablePTCBooking: json['enablePTCBooking'] as bool?,
    );

Map<String, dynamic> _$UserConfigDtoToJson(_UserConfigDto instance) =>
    <String, dynamic>{
      'notificationFrequent': instance.notificationFrequent,
      'showDailyRoutine': instance.showDailyRoutine,
      'enablePTCBooking': instance.enablePTCBooking,
    };
