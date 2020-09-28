// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    json['code'] as String,
    json['name'] as String,
    json['id'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
    };
