import 'package:json_annotation/json_annotation.dart';
import '../content/content.dart';

part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Batch {
  @JsonKey(nullable: true) CreatorDetails creatorDetails;
  @JsonKey(nullable: true) String enrollmentEndDate;

  String identifier;
  String id;
  List<String> createdFor;
  dynamic courseAdditionalInfo;
  String endDate;
  String description;
  dynamic participant;
  String updatedDate;
  String createdDate;
  List<String> mentors;
  String name;
  String enrollmentType;
  String courseId;
  String startDate;
  String hashTagId;
  num status;
  String courseCreator;
  String createdBy;
  dynamic cert_templates;

  Batch(
      this.creatorDetails,
      this.enrollmentEndDate,
      this.identifier,
      this.id,
      this.createdFor,
      this.courseAdditionalInfo,
      this.endDate,
      this.description,
      this.participant,
      this.updatedDate,
      this.createdDate,
      this.mentors,
      this.name,
      this.enrollmentType,
      this.courseId,
      this.startDate,
      this.hashTagId,
      this.status,
      this.courseCreator,
      this.createdBy,
      this.cert_templates);

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
  Map<String, dynamic> toJson() => _$BatchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatorDetails {
  @JsonKey(nullable: true) String firstName;
  @JsonKey(nullable: true) String lastName;

  CreatorDetails(this.firstName, this.lastName);

  factory CreatorDetails.fromJson(Map<String, dynamic> json) => _$CreatorDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CourseCertificate {
  @JsonKey(nullable: true) String identifier;
  @JsonKey(nullable: true) String url;
  @JsonKey(nullable: true) String id;
  String name;
  String lastIssuedOn;
  String token;

  CourseCertificate(this.identifier, this.url, this.id, this.name,
      this.lastIssuedOn, this.token);

  factory CourseCertificate.fromJson(Map<String, dynamic> json) => _$CourseCertificateFromJson(json);
  Map<String, dynamic> toJson() => _$CourseCertificateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Course {
  @JsonKey(nullable: true) String dateTime;
  @JsonKey(nullable: true) String identifier;
  @JsonKey(nullable: true) num lastReadContentStatus;
  @JsonKey(nullable: true) String enrolledDate;
  @JsonKey(nullable: true) String addedBy;
  @JsonKey(nullable: true) String contentId;
  @JsonKey(nullable: true) bool active;
  @JsonKey(nullable: true) String description;
  @JsonKey(nullable: true) String courseLogoUrl;
  @JsonKey(nullable: true) String batchId;
  @JsonKey(nullable: true) String userId;
  @JsonKey(nullable: true) Content content;
  @JsonKey(nullable: true) String contentStatus;
  @JsonKey(nullable: true) String courseName;
  @JsonKey(nullable: true) num leafNodesCount;
  @JsonKey(nullable: true) num progress;
  @JsonKey(nullable: true) String id;
  @JsonKey(nullable: true) String lastReadContentId;
  @JsonKey(nullable: true) String courseId;
  @JsonKey(nullable: true) num status;
  @JsonKey(nullable: true) List<String> contentsPlayedOffline;
  @JsonKey(nullable: true) Map<String, dynamic> batch;
  @JsonKey(nullable: true) num completionPercentage;
  @JsonKey(nullable: true) List<CourseCertificate> certificates;
  @JsonKey(nullable: true) List<CourseCertificate> issuedCertificates;
  @JsonKey(nullable: true) List<Batch> batches;

  Course(
      this.dateTime,
      this.identifier,
      this.lastReadContentStatus,
      this.enrolledDate,
      this.addedBy,
      this.contentId,
      this.active,
      this.description,
      this.courseLogoUrl,
      this.batchId,
      this.userId,
      this.content,
      this.contentStatus,
      this.courseName,
      this.leafNodesCount,
      this.progress,
      this.id,
      this.lastReadContentId,
      this.courseId,
      this.status,
      this.contentsPlayedOffline,
      this.batch,
      this.completionPercentage,
      this.certificates,
      this.issuedCertificates,
      this.batches);

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
