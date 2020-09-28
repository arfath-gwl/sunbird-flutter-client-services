// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'framework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Framework _$FrameworkFromJson(Map<String, dynamic> json) {
  return Framework(
    json['index'] as num,
    json['code'] as String,
    json['description'] as String,
    json['type'] as String,
    json['name'] as String,
    json['identifier'] as String,
    json['objectType'] as String,
    (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : FrameworkCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['translations'] as String,
  );
}

Map<String, dynamic> _$FrameworkToJson(Framework instance) => <String, dynamic>{
      'index': instance.index,
      'code': instance.code,
      'description': instance.description,
      'type': instance.type,
      'name': instance.name,
      'identifier': instance.identifier,
      'objectType': instance.objectType,
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
      'translations': instance.translations,
    };

FrameworkCategory _$FrameworkCategoryFromJson(Map<String, dynamic> json) {
  return FrameworkCategory(
    (json['terms'] as List)
        ?.map((e) =>
            e == null ? null : CategoryTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['translations'] as String,
    json['identifier'] as String,
    json['code'] as String,
    json['name'] as String,
    json['description'] as String,
    json['index'] as num,
    json['status'] as String,
  );
}

Map<String, dynamic> _$FrameworkCategoryToJson(FrameworkCategory instance) =>
    <String, dynamic>{
      'terms': instance.terms?.map((e) => e?.toJson())?.toList(),
      'translations': instance.translations,
      'identifier': instance.identifier,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'index': instance.index,
      'status': instance.status,
    };

CategoryTerm _$CategoryTermFromJson(Map<String, dynamic> json) {
  return CategoryTerm(
    (json['associations'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryAssociation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['description'] as String,
    json['translations'] as String,
    (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryAssociation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['identifier'] as String,
    json['code'] as String,
    json['name'] as String,
    json['index'] as num,
    json['category'] as String,
    json['status'] as String,
  );
}

Map<String, dynamic> _$CategoryTermToJson(CategoryTerm instance) =>
    <String, dynamic>{
      'associations': instance.associations?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'translations': instance.translations,
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier,
      'code': instance.code,
      'name': instance.name,
      'index': instance.index,
      'category': instance.category,
      'status': instance.status,
    };

CategoryAssociation _$CategoryAssociationFromJson(Map<String, dynamic> json) {
  return CategoryAssociation(
    json['translations'] as String,
    json['description'] as String,
    json['identifier'] as String,
    json['code'] as String,
    json['name'] as String,
    json['category'] as String,
    json['status'] as String,
  );
}

Map<String, dynamic> _$CategoryAssociationToJson(
        CategoryAssociation instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'description': instance.description,
      'identifier': instance.identifier,
      'code': instance.code,
      'name': instance.name,
      'category': instance.category,
      'status': instance.status,
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel(
    (json['frameworks'] as List)
        ?.map((e) =>
            e == null ? null : Framework.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['identifier'] as String,
    json['code'] as String,
    json['consumerId'] as String,
    json['channel'] as String,
    json['description'] as String,
    json['createdOn'] as String,
    json['versionKey'] as String,
    json['appId'] as String,
    json['name'] as String,
    json['lastUpdatedOn'] as String,
    json['defaultFramework'] as String,
    json['status'] as String,
  );
}

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'frameworks': instance.frameworks?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier,
      'code': instance.code,
      'consumerId': instance.consumerId,
      'channel': instance.channel,
      'description': instance.description,
      'createdOn': instance.createdOn,
      'versionKey': instance.versionKey,
      'appId': instance.appId,
      'name': instance.name,
      'lastUpdatedOn': instance.lastUpdatedOn,
      'defaultFramework': instance.defaultFramework,
      'status': instance.status,
    };
