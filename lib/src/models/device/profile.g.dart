// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    json['userDeclaredLocation'] == null
        ? null
        : UserDeclaredLocation.fromJson(
            json['userDeclaredLocation'] as Map<String, dynamic>),
    json['ipLocation'] == null
        ? null
        : IPLocation.fromJson(json['ipLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'userDeclaredLocation': instance.userDeclaredLocation?.toJson(),
      'ipLocation': instance.ipLocation?.toJson(),
    };

UserDeclaredLocation _$UserDeclaredLocationFromJson(Map<String, dynamic> json) {
  return UserDeclaredLocation(
    json['state'] as String,
    json['district'] as String,
  );
}

Map<String, dynamic> _$UserDeclaredLocationToJson(
        UserDeclaredLocation instance) =>
    <String, dynamic>{
      'state': instance.state,
      'district': instance.district,
    };

IPLocation _$IPLocationFromJson(Map<String, dynamic> json) {
  return IPLocation(
    json['state'] as String,
    json['district'] as String,
  );
}

Map<String, dynamic> _$IPLocationToJson(IPLocation instance) =>
    <String, dynamic>{
      'state': instance.state,
      'district': instance.district,
    };
