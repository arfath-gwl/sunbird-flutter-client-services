import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  @JsonKey(nullable: true) String lastName;
  @JsonKey(nullable: true) List<UserDeclaration> declarations;
  @JsonKey(nullable: true) List<ExternalId> externalIds;

  String id;
  String userId;
  String identifier;
  String firstName;
  RootOrg rootOrg;
  String tncAcceptedVersion;
  String tncAcceptedOn;
  String tncLatestVersion;
  bool promptTnC;
  String tncLatestVersionUrl;
  String avatar;
  String managedBy;
  String locationIds;
  dynamic framework;

  User(
      this.lastName,
      this.declarations,
      this.externalIds,
      this.id,
      this.userId,
      this.identifier,
      this.firstName,
      this.rootOrg,
      this.tncAcceptedVersion,
      this.tncAcceptedOn,
      this.tncLatestVersion,
      this.promptTnC,
      this.tncLatestVersionUrl,
      this.avatar,
      this.managedBy,
      this.locationIds,
      this.framework);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExternalId {
  String id;
  String operation;
  String idType;
  String provider;

  ExternalId(this.id, this.operation, this.idType, this.provider);

  factory ExternalId.fromJson(Map<String, dynamic> json) => _$ExternalIdFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalIdToJson(this);
}

enum UserDeclarationOperation {
  @JsonValue("edit")
  EDIT,
  @JsonValue("add")
  ADD,
  @JsonValue("remove")
  REMOVE
}

enum UserDeclarationStatus {
  @JsonValue("PENDING")
  PENDING,
  @JsonValue("VALIDATED")
  VALIDATED,
  @JsonValue("REJECTED")
  REJECTED,
  @JsonValue("ERROR")
  ERROR
}

@JsonSerializable(explicitToJson: true)
class UserDeclaration {
  @JsonKey(nullable: true) String errorType;
  @JsonKey(nullable: true) UserDeclarationStatus status;

  UserDeclarationOperation operation;
  String userId;
  String orgId;
  String persona;
  dynamic info;

  UserDeclaration(this.errorType, this.status, this.operation, this.userId,
      this.orgId, this.persona, this.info);

  factory UserDeclaration.fromJson(Map<String, dynamic> json) => _$UserDeclarationFromJson(json);
  Map<String, dynamic> toJson() => _$UserDeclarationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RootOrg {
  @JsonKey(nullable: true) String rootOrgId;
  @JsonKey(nullable: true) String orgName;
  @JsonKey(nullable: true) String slug;
  String hashTagId;

  RootOrg(this.rootOrgId, this.orgName, this.slug, this.hashTagId);

  factory RootOrg.fromJson(Map<String, dynamic> json) => _$RootOrgFromJson(json);
  Map<String, dynamic> toJson() => _$RootOrgToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Feed {
  String id;
  String userId;
  String category;
  num priority;
  String createdBy;
  String createdOn;
  String channel;
  String status;
  String expireOn;
  FeedData data;

  Feed(this.id, this.userId, this.category, this.priority, this.createdBy,
      this.createdOn, this.channel, this.status, this.expireOn, this.data);

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FeedData {
  List<String> prospectChannels;

  FeedData(this.prospectChannels);

  factory FeedData.fromJson(Map<String, dynamic> json) => _$FeedDataFromJson(json);
  Map<String, dynamic> toJson() => _$FeedDataToJson(this);
}
