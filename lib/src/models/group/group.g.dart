// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) {
  return GroupMember(
    json['createdOn'] as String,
    json['createdBy'] as String,
    json['updatedOn'] as String,
    json['updatedBy'] as String,
    json['name'] as String,
    json['groupId'] as String,
    json['userId'] as String,
    _$enumDecodeNullable(_$GroupMemberRoleEnumMap, json['role']),
    _$enumDecodeNullable(_$GroupEntityStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) =>
    <String, dynamic>{
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'updatedOn': instance.updatedOn,
      'updatedBy': instance.updatedBy,
      'name': instance.name,
      'groupId': instance.groupId,
      'userId': instance.userId,
      'role': _$GroupMemberRoleEnumMap[instance.role],
      'status': _$GroupEntityStatusEnumMap[instance.status],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GroupMemberRoleEnumMap = {
  GroupMemberRole.ADMIN: 'admin',
  GroupMemberRole.MEMBER: 'member',
};

const _$GroupEntityStatusEnumMap = {
  GroupEntityStatus.ACTIVE: 'active',
  GroupEntityStatus.INACTIVE: 'inactive',
};

GroupActivity _$GroupActivityFromJson(Map<String, dynamic> json) {
  return GroupActivity(
    _$enumDecodeNullable(_$GroupEntityStatusEnumMap, json['status']),
    json['activityInfo'],
    json['createdOn'] as String,
    json['createdBy'] as String,
    json['updatedOn'] as String,
    json['updatedBy'] as String,
    json['id'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$GroupActivityToJson(GroupActivity instance) =>
    <String, dynamic>{
      'status': _$GroupEntityStatusEnumMap[instance.status],
      'activityInfo': instance.activityInfo,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'updatedOn': instance.updatedOn,
      'updatedBy': instance.updatedBy,
      'id': instance.id,
      'type': instance.type,
    };

ActivitiesGrouped _$ActivitiesGroupedFromJson(Map<String, dynamic> json) {
  return ActivitiesGrouped(
    json['title'] as String,
    json['count'] as num,
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : GroupActivity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ActivitiesGroupedToJson(ActivitiesGrouped instance) =>
    <String, dynamic>{
      'title': instance.title,
      'count': instance.count,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    _$enumDecodeNullable(_$GroupEntityStatusEnumMap, json['status']),
    json['createdOn'] as String,
    json['createdBy'] as String,
    json['updatedOn'] as String,
    json['updatedBy'] as String,
    (json['activities'] as List)
        ?.map((e) => e == null
            ? null
            : GroupActivity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['activitiesGrouped'] as List)
        ?.map((e) => e == null
            ? null
            : ActivitiesGrouped.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['members'] as List)
        ?.map((e) =>
            e == null ? null : GroupMember.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    json['description'] as String,
    json['id'] as String,
    _$enumDecodeNullable(_$GroupMembershipTypeEnumMap, json['membershipType']),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'status': _$GroupEntityStatusEnumMap[instance.status],
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'updatedOn': instance.updatedOn,
      'updatedBy': instance.updatedBy,
      'activities': instance.activities?.map((e) => e?.toJson())?.toList(),
      'activitiesGrouped':
          instance.activitiesGrouped?.map((e) => e?.toJson())?.toList(),
      'members': instance.members?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'membershipType': _$GroupMembershipTypeEnumMap[instance.membershipType],
    };

const _$GroupMembershipTypeEnumMap = {
  GroupMembershipType.INVITE_ONLY: 'invite_only',
  GroupMembershipType.MODERATED: 'moderated',
};
