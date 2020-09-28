import 'package:json_annotation/json_annotation.dart';

part 'group.g.dart';

enum GroupMembershipType {
  @JsonValue("invite_only")
  INVITE_ONLY,
  @JsonValue("moderated")
  MODERATED
}

enum GroupEntityStatus {
  @JsonValue("active")
  ACTIVE,
  @JsonValue("inactive")
  INACTIVE
}
enum GroupMemberRole {
  @JsonValue("admin")
  ADMIN,
  @JsonValue("member")
  MEMBER
}

@JsonSerializable()
class GroupMember {
  @JsonKey(nullable: true)
  String createdOn;
  @JsonKey(nullable: true)
  String createdBy;
  @JsonKey(nullable: true)
  String updatedOn;
  @JsonKey(nullable: true)
  String updatedBy;

  String name;
  String groupId;
  String userId;
  GroupMemberRole role;
  GroupEntityStatus status;

  GroupMember(this.createdOn, this.createdBy, this.updatedOn, this.updatedBy,
      this.name, this.groupId, this.userId, this.role, this.status);

  factory GroupMember.fromJson(Map<String, dynamic> json) => _$GroupMemberFromJson(json);
  Map<String, dynamic> toJson() => _$GroupMemberToJson(this);
}

@JsonSerializable()
class GroupActivity {
  @JsonKey(nullable: true)
  GroupEntityStatus status;
  @JsonKey(nullable: true)
  dynamic activityInfo;
  @JsonKey(nullable: true)
  String createdOn;
  @JsonKey(nullable: true)
  String createdBy;
  @JsonKey(nullable: true)
  String updatedOn;
  @JsonKey(nullable: true)
  String updatedBy;

  String id;
  String type;

  GroupActivity(this.status, this.activityInfo, this.createdOn, this.createdBy,
      this.updatedOn, this.updatedBy, this.id, this.type);

  factory GroupActivity.fromJson(Map<String, dynamic> json) => _$GroupActivityFromJson(json);
  Map<String, dynamic> toJson() => _$GroupActivityToJson(this);
}

@JsonSerializable()
class ActivitiesGrouped {
  String title;
  num count;
  List<GroupActivity> items;

  ActivitiesGrouped(this.title, this.count, this.items);

  factory ActivitiesGrouped.fromJson(Map<String, dynamic> json) => _$ActivitiesGroupedFromJson(json);
  Map<String, dynamic> toJson() => _$ActivitiesGroupedToJson(this);
}

@JsonSerializable()
class Group {
  @JsonKey(nullable: true)
  GroupEntityStatus status;
  @JsonKey(nullable: true)
  String createdOn;
  @JsonKey(nullable: true)
  String createdBy;
  @JsonKey(nullable: true)
  String updatedOn;
  @JsonKey(nullable: true)
  String updatedBy;
  @JsonKey(nullable: true)
  List<GroupActivity> activities;
  @JsonKey(nullable: true)
  List<ActivitiesGrouped> activitiesGrouped;
  @JsonKey(nullable: true)
  List<GroupMember> members;

  String name;
  String description;
  String id;
  GroupMembershipType membershipType;

  Group(
      this.status,
      this.createdOn,
      this.createdBy,
      this.updatedOn,
      this.updatedBy,
      this.activities,
      this.activitiesGrouped,
      this.members,
      this.name,
      this.description,
      this.id,
      this.membershipType);

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
