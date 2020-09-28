// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Batch _$BatchFromJson(Map<String, dynamic> json) {
  return Batch(
    json['creatorDetails'] == null
        ? null
        : CreatorDetails.fromJson(
            json['creatorDetails'] as Map<String, dynamic>),
    json['enrollmentEndDate'] as String,
    json['identifier'] as String,
    json['id'] as String,
    (json['createdFor'] as List)?.map((e) => e as String)?.toList(),
    json['courseAdditionalInfo'],
    json['endDate'] as String,
    json['description'] as String,
    json['participant'],
    json['updatedDate'] as String,
    json['createdDate'] as String,
    (json['mentors'] as List)?.map((e) => e as String)?.toList(),
    json['name'] as String,
    json['enrollmentType'] as String,
    json['courseId'] as String,
    json['startDate'] as String,
    json['hashTagId'] as String,
    json['status'] as num,
    json['courseCreator'] as String,
    json['createdBy'] as String,
    json['cert_templates'],
  );
}

Map<String, dynamic> _$BatchToJson(Batch instance) => <String, dynamic>{
      'creatorDetails': instance.creatorDetails?.toJson(),
      'enrollmentEndDate': instance.enrollmentEndDate,
      'identifier': instance.identifier,
      'id': instance.id,
      'createdFor': instance.createdFor,
      'courseAdditionalInfo': instance.courseAdditionalInfo,
      'endDate': instance.endDate,
      'description': instance.description,
      'participant': instance.participant,
      'updatedDate': instance.updatedDate,
      'createdDate': instance.createdDate,
      'mentors': instance.mentors,
      'name': instance.name,
      'enrollmentType': instance.enrollmentType,
      'courseId': instance.courseId,
      'startDate': instance.startDate,
      'hashTagId': instance.hashTagId,
      'status': instance.status,
      'courseCreator': instance.courseCreator,
      'createdBy': instance.createdBy,
      'cert_templates': instance.cert_templates,
    };

CreatorDetails _$CreatorDetailsFromJson(Map<String, dynamic> json) {
  return CreatorDetails(
    json['firstName'] as String,
    json['lastName'] as String,
  );
}

Map<String, dynamic> _$CreatorDetailsToJson(CreatorDetails instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

CourseCertificate _$CourseCertificateFromJson(Map<String, dynamic> json) {
  return CourseCertificate(
    json['identifier'] as String,
    json['url'] as String,
    json['id'] as String,
    json['name'] as String,
    json['lastIssuedOn'] as String,
    json['token'] as String,
  );
}

Map<String, dynamic> _$CourseCertificateToJson(CourseCertificate instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'url': instance.url,
      'id': instance.id,
      'name': instance.name,
      'lastIssuedOn': instance.lastIssuedOn,
      'token': instance.token,
    };

Course _$CourseFromJson(Map<String, dynamic> json) {
  return Course(
    json['dateTime'] as String,
    json['identifier'] as String,
    json['lastReadContentStatus'] as num,
    json['enrolledDate'] as String,
    json['addedBy'] as String,
    json['contentId'] as String,
    json['active'] as bool,
    json['description'] as String,
    json['courseLogoUrl'] as String,
    json['batchId'] as String,
    json['userId'] as String,
    json['content'] == null
        ? null
        : Content.fromJson(json['content'] as Map<String, dynamic>),
    json['contentStatus'] as String,
    json['courseName'] as String,
    json['leafNodesCount'] as num,
    json['progress'] as num,
    json['id'] as String,
    json['lastReadContentId'] as String,
    json['courseId'] as String,
    json['status'] as num,
    (json['contentsPlayedOffline'] as List)?.map((e) => e as String)?.toList(),
    json['batch'] as Map<String, dynamic>,
    json['completionPercentage'] as num,
    (json['certificates'] as List)
        ?.map((e) => e == null
            ? null
            : CourseCertificate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['issuedCertificates'] as List)
        ?.map((e) => e == null
            ? null
            : CourseCertificate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['batches'] as List)
        ?.map(
            (e) => e == null ? null : Batch.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'dateTime': instance.dateTime,
      'identifier': instance.identifier,
      'lastReadContentStatus': instance.lastReadContentStatus,
      'enrolledDate': instance.enrolledDate,
      'addedBy': instance.addedBy,
      'contentId': instance.contentId,
      'active': instance.active,
      'description': instance.description,
      'courseLogoUrl': instance.courseLogoUrl,
      'batchId': instance.batchId,
      'userId': instance.userId,
      'content': instance.content?.toJson(),
      'contentStatus': instance.contentStatus,
      'courseName': instance.courseName,
      'leafNodesCount': instance.leafNodesCount,
      'progress': instance.progress,
      'id': instance.id,
      'lastReadContentId': instance.lastReadContentId,
      'courseId': instance.courseId,
      'status': instance.status,
      'contentsPlayedOffline': instance.contentsPlayedOffline,
      'batch': instance.batch,
      'completionPercentage': instance.completionPercentage,
      'certificates': instance.certificates?.map((e) => e?.toJson())?.toList(),
      'issuedCertificates':
          instance.issuedCertificates?.map((e) => e?.toJson())?.toList(),
      'batches': instance.batches?.map((e) => e?.toJson())?.toList(),
    };
