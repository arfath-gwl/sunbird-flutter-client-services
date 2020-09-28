// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['lastName'] as String,
    (json['declarations'] as List)
        ?.map((e) => e == null
            ? null
            : UserDeclaration.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['externalIds'] as List)
        ?.map((e) =>
            e == null ? null : ExternalId.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['id'] as String,
    json['userId'] as String,
    json['identifier'] as String,
    json['firstName'] as String,
    json['rootOrg'] == null
        ? null
        : RootOrg.fromJson(json['rootOrg'] as Map<String, dynamic>),
    json['tncAcceptedVersion'] as String,
    json['tncAcceptedOn'] as String,
    json['tncLatestVersion'] as String,
    json['promptTnC'] as bool,
    json['tncLatestVersionUrl'] as String,
    json['avatar'] as String,
    json['managedBy'] as String,
    json['locationIds'] as String,
    json['framework'],
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'lastName': instance.lastName,
      'declarations': instance.declarations,
      'externalIds': instance.externalIds,
      'id': instance.id,
      'userId': instance.userId,
      'identifier': instance.identifier,
      'firstName': instance.firstName,
      'rootOrg': instance.rootOrg,
      'tncAcceptedVersion': instance.tncAcceptedVersion,
      'tncAcceptedOn': instance.tncAcceptedOn,
      'tncLatestVersion': instance.tncLatestVersion,
      'promptTnC': instance.promptTnC,
      'tncLatestVersionUrl': instance.tncLatestVersionUrl,
      'avatar': instance.avatar,
      'managedBy': instance.managedBy,
      'locationIds': instance.locationIds,
      'framework': instance.framework,
    };

ExternalId _$ExternalIdFromJson(Map<String, dynamic> json) {
  return ExternalId(
    json['id'] as String,
    json['operation'] as String,
    json['idType'] as String,
    json['provider'] as String,
  );
}

Map<String, dynamic> _$ExternalIdToJson(ExternalId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operation': instance.operation,
      'idType': instance.idType,
      'provider': instance.provider,
    };

UserDeclaration _$UserDeclarationFromJson(Map<String, dynamic> json) {
  return UserDeclaration(
    json['errorType'] as String,
    _$enumDecodeNullable(_$UserDeclarationStatusEnumMap, json['status']),
    _$enumDecodeNullable(_$UserDeclarationOperationEnumMap, json['operation']),
    json['userId'] as String,
    json['orgId'] as String,
    json['persona'] as String,
    json['info'],
  );
}

Map<String, dynamic> _$UserDeclarationToJson(UserDeclaration instance) =>
    <String, dynamic>{
      'errorType': instance.errorType,
      'status': _$UserDeclarationStatusEnumMap[instance.status],
      'operation': _$UserDeclarationOperationEnumMap[instance.operation],
      'userId': instance.userId,
      'orgId': instance.orgId,
      'persona': instance.persona,
      'info': instance.info,
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

const _$UserDeclarationStatusEnumMap = {
  UserDeclarationStatus.PENDING: 'PENDING',
  UserDeclarationStatus.VALIDATED: 'VALIDATED',
  UserDeclarationStatus.REJECTED: 'REJECTED',
  UserDeclarationStatus.ERROR: 'ERROR',
};

const _$UserDeclarationOperationEnumMap = {
  UserDeclarationOperation.EDIT: 'edit',
  UserDeclarationOperation.ADD: 'add',
  UserDeclarationOperation.REMOVE: 'remove',
};

RootOrg _$RootOrgFromJson(Map<String, dynamic> json) {
  return RootOrg(
    json['rootOrgId'] as String,
    json['orgName'] as String,
    json['slug'] as String,
    json['hashTagId'] as String,
  );
}

Map<String, dynamic> _$RootOrgToJson(RootOrg instance) => <String, dynamic>{
      'rootOrgId': instance.rootOrgId,
      'orgName': instance.orgName,
      'slug': instance.slug,
      'hashTagId': instance.hashTagId,
    };

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
    json['id'] as String,
    json['userId'] as String,
    json['category'] as String,
    json['priority'] as num,
    json['createdBy'] as String,
    json['createdOn'] as String,
    json['channel'] as String,
    json['status'] as String,
    json['expireOn'] as String,
    json['data'] == null
        ? null
        : FeedData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'category': instance.category,
      'priority': instance.priority,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn,
      'channel': instance.channel,
      'status': instance.status,
      'expireOn': instance.expireOn,
      'data': instance.data,
    };

FeedData _$FeedDataFromJson(Map<String, dynamic> json) {
  return FeedData(
    (json['prospectChannels'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$FeedDataToJson(FeedData instance) => <String, dynamic>{
      'prospectChannels': instance.prospectChannels,
    };
