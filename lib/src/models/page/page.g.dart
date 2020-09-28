// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) {
  return Page(
    json['name'] as String,
    json['id'] as String,
    (json['sections'] as List)
        ?.map((e) =>
            e == null ? null : PageSection.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'sections': instance.sections,
    };

PageSection _$PageSectionFromJson(Map<String, dynamic> json) {
  return PageSection(
    json['display'] as String,
    json['description'] as String,
    json['alt'] as String,
    json['imgUrl'] as String,
    json['collections'] == null
        ? null
        : Content.fromJson(json['collections'] as Map<String, dynamic>),
    (json['contents'] as List)
        ?.map((e) =>
            e == null ? null : Content.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['count'] as num,
    json['index'] as num,
    json['sectionDataType'] as String,
    json['resmsgId'] as String,
    json['searchQuery'] as String,
    json['name'] as String,
    json['id'] as String,
    json['apiId'] as String,
    json['group'] as num,
  );
}

Map<String, dynamic> _$PageSectionToJson(PageSection instance) =>
    <String, dynamic>{
      'display': instance.display,
      'description': instance.description,
      'alt': instance.alt,
      'imgUrl': instance.imgUrl,
      'collections': instance.collections,
      'contents': instance.contents,
      'count': instance.count,
      'index': instance.index,
      'sectionDataType': instance.sectionDataType,
      'resmsgId': instance.resmsgId,
      'searchQuery': instance.searchQuery,
      'name': instance.name,
      'id': instance.id,
      'apiId': instance.apiId,
      'group': instance.group,
    };
