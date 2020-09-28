// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organisation _$OrganisationFromJson(Map<String, dynamic> json) {
  return Organisation(
    json['description'] as String,
    json['orgCode'] as String,
    json['parentOrgId'] as String,
    json['channel'] as String,
    json['id'] as String,
    json['provider'] as String,
    json['rootOrgId'] as String,
    json['identifier'] as String,
    json['createdDate'] as String,
    json['createdBy'] as String,
    json['hashTagId'] as String,
    json['status'] as String,
    json['slug'] as String,
    json['isRootOrg'] as String,
    json['externalId'] as String,
    json['orgName'] as String,
  );
}

Map<String, dynamic> _$OrganisationToJson(Organisation instance) =>
    <String, dynamic>{
      'description': instance.description,
      'orgCode': instance.orgCode,
      'parentOrgId': instance.parentOrgId,
      'channel': instance.channel,
      'id': instance.id,
      'provider': instance.provider,
      'rootOrgId': instance.rootOrgId,
      'identifier': instance.identifier,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
      'hashTagId': instance.hashTagId,
      'status': instance.status,
      'slug': instance.slug,
      'isRootOrg': instance.isRootOrg,
      'externalId': instance.externalId,
      'orgName': instance.orgName,
    };
