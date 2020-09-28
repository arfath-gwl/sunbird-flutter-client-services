import 'package:json_annotation/json_annotation.dart';

part 'organisation.g.dart';

@JsonSerializable(explicitToJson: true)
class Organisation {
  @JsonKey(nullable: true) String description;
  @JsonKey(nullable: true) String orgCode;
  @JsonKey(nullable: true) String parentOrgId;

  String channel;
  String id;
  String provider;
  String rootOrgId;
  String identifier;
  String createdDate;
  String createdBy;
  String hashTagId;
  String status;
  String slug;
  String isRootOrg;
  String externalId;
  String orgName;

  Organisation(this.description, this.orgCode, this.parentOrgId, this.channel,
      this.id, this.provider, this.rootOrgId, this.identifier, this.createdDate,
      this.createdBy, this.hashTagId, this.status, this.slug, this.isRootOrg,
      this.externalId, this.orgName);

  factory Organisation.fromJson(Map<String, dynamic> json) => _$OrganisationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganisationToJson(this);
}
