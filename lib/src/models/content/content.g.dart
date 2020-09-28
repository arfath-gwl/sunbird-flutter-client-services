// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    (json['altMsg'] as List)
        ?.map((e) =>
            e == null ? null : AltMsg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['organisation'] as String,
    json['author'] as String,
    json['collaborators'] as String,
    json['originData'] == null
        ? null
        : OriginData.fromJson(json['originData'] as Map<String, dynamic>),
    json['origin'] as String,
    json['totalQuestions'] as num,
    json['itemSetPreviewUrl'] as String,
    (json['leafNodes'] as List)?.map((e) => e as String)?.toList(),
    json['leafNodesCount'] as num,
    json['identifier'] as String,
    json['name'] as String,
    json['appIcon'] as String,
    json['description'] as String,
    json['pkgVersion'] as String,
    json['status'] as String,
    json['size'] as String,
    json['owner'] as String,
    json['creator'] as String,
    json['subject'],
    json['board'] as String,
    json['medium'],
    json['publisher'] as String,
    json['me_totalRatingsCount'] as num,
    json['me_averageRating'] as String,
    json['me_totalDownloads'] as String,
    json['copyright'] as String,
    json['copyrightYear'] as String,
    json['license'] as String,
    json['licenseDetails'] == null
        ? null
        : LicenseDetails.fromJson(
            json['licenseDetails'] as Map<String, dynamic>),
    json['expires'] as String,
    json['downloadUrl'] as String,
    json['variants'] as Map<String, dynamic>,
    json['artifactUrl'] as String,
    (json['language'] as List)?.map((e) => e as String)?.toList(),
    (json['gradeLevel'] as List)?.map((e) => e as String)?.toList(),
    json['osId'] as String,
    json['contentType'] as String,
    json['resourceType'] as String,
    json['mimeType'] as String,
    json['artifactMimeType'] as String,
    json['versionKey'] as String,
    json['contentEncoding'] as String,
    json['contentDisposition'] as String,
    json['contentTypesCount'] as String,
    json['lastPublishedOn'] as String,
    json['createdOn'] as String,
    json['createdBy'] as String,
    json['channel'] as String,
    (json['screenshots'] as List)?.map((e) => e as String)?.toList(),
    json['audience'],
    (json['pragma'] as List)?.map((e) => e as String)?.toList(),
    (json['attributions'] as List)?.map((e) => e as String)?.toList(),
    (json['dialcodes'] as List)?.map((e) => e as String)?.toList(),
    (json['childNodes'] as List)?.map((e) => e as String)?.toList(),
    json['previewUrl'] as String,
    json['framework'] as String,
    json['creators'] as String,
    json['contributors'] as String,
    json['streamingUrl'] as String,
    json['totalScore'],
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'altMsg': instance.altMsg,
      'organisation': instance.organisation,
      'author': instance.author,
      'collaborators': instance.collaborators,
      'originData': instance.originData,
      'origin': instance.origin,
      'totalQuestions': instance.totalQuestions,
      'itemSetPreviewUrl': instance.itemSetPreviewUrl,
      'leafNodes': instance.leafNodes,
      'leafNodesCount': instance.leafNodesCount,
      'identifier': instance.identifier,
      'name': instance.name,
      'appIcon': instance.appIcon,
      'description': instance.description,
      'pkgVersion': instance.pkgVersion,
      'status': instance.status,
      'size': instance.size,
      'owner': instance.owner,
      'creator': instance.creator,
      'subject': instance.subject,
      'board': instance.board,
      'medium': instance.medium,
      'publisher': instance.publisher,
      'me_totalRatingsCount': instance.me_totalRatingsCount,
      'me_averageRating': instance.me_averageRating,
      'me_totalDownloads': instance.me_totalDownloads,
      'copyright': instance.copyright,
      'copyrightYear': instance.copyrightYear,
      'license': instance.license,
      'licenseDetails': instance.licenseDetails,
      'expires': instance.expires,
      'downloadUrl': instance.downloadUrl,
      'variants': instance.variants,
      'artifactUrl': instance.artifactUrl,
      'language': instance.language,
      'gradeLevel': instance.gradeLevel,
      'osId': instance.osId,
      'contentType': instance.contentType,
      'resourceType': instance.resourceType,
      'mimeType': instance.mimeType,
      'artifactMimeType': instance.artifactMimeType,
      'versionKey': instance.versionKey,
      'contentEncoding': instance.contentEncoding,
      'contentDisposition': instance.contentDisposition,
      'contentTypesCount': instance.contentTypesCount,
      'lastPublishedOn': instance.lastPublishedOn,
      'createdOn': instance.createdOn,
      'createdBy': instance.createdBy,
      'channel': instance.channel,
      'screenshots': instance.screenshots,
      'audience': instance.audience,
      'pragma': instance.pragma,
      'attributions': instance.attributions,
      'dialcodes': instance.dialcodes,
      'childNodes': instance.childNodes,
      'previewUrl': instance.previewUrl,
      'framework': instance.framework,
      'creators': instance.creators,
      'contributors': instance.contributors,
      'streamingUrl': instance.streamingUrl,
      'totalScore': instance.totalScore,
    };

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) {
  return LicenseDetails(
    json['description'] as String,
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$LicenseDetailsToJson(LicenseDetails instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'url': instance.url,
    };

AltMsg _$AltMsgFromJson(Map<String, dynamic> json) {
  return AltMsg(
    json['key'] as String,
    json['value'] as String,
    json['translations'] as String,
  );
}

Map<String, dynamic> _$AltMsgToJson(AltMsg instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'translations': instance.translations,
    };

OriginData _$OriginDataFromJson(Map<String, dynamic> json) {
  return OriginData(
    json['name'] as String,
    json['author'] as String,
    json['license'] as String,
    json['organisation'] as String,
  );
}

Map<String, dynamic> _$OriginDataToJson(OriginData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'license': instance.license,
      'organisation': instance.organisation,
    };
