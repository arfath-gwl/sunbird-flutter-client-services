// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Form _$FormFromJson(Map<String, dynamic> json) {
  return Form(
    json['last_modified_on'] as String,
    json['type'] as String,
    json['subtype'] as String,
    json['action'] as String,
    json['component'] as String,
    json['framework'] as String,
    json['data'] == null
        ? null
        : FormData.fromJson(json['data'] as Map<String, dynamic>),
    json['created_on'] as String,
    json['rootOrgId'] as String,
  );
}

Map<String, dynamic> _$FormToJson(Form instance) => <String, dynamic>{
      'last_modified_on': instance.last_modified_on,
      'type': instance.type,
      'subtype': instance.subtype,
      'action': instance.action,
      'component': instance.component,
      'framework': instance.framework,
      'data': instance.data?.toJson(),
      'created_on': instance.created_on,
      'rootOrgId': instance.rootOrgId,
    };

FormData _$FormDataFromJson(Map<String, dynamic> json) {
  return FormData(
    json['templateName'] as String,
    json['action'] as String,
    json['fields'] as List,
  );
}

Map<String, dynamic> _$FormDataToJson(FormData instance) => <String, dynamic>{
      'fields': instance.fields,
      'templateName': instance.templateName,
      'action': instance.action,
    };
