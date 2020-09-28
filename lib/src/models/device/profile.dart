import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable(explicitToJson: true)
class Profile {
  UserDeclaredLocation userDeclaredLocation;
  IPLocation ipLocation;

  Profile(this.userDeclaredLocation, this.ipLocation);

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserDeclaredLocation {
  String state;
  String district;

  UserDeclaredLocation(this.state, this.district);

  factory UserDeclaredLocation.fromJson(Map<String, dynamic> json) => _$UserDeclaredLocationFromJson(json);
  Map<String, dynamic> toJson() => _$UserDeclaredLocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IPLocation {
  String state;
  String district;

  IPLocation(this.state, this.district);

  factory IPLocation.fromJson(Map<String, dynamic> json) => _$IPLocationFromJson(json);
  Map<String, dynamic> toJson() => _$IPLocationToJson(this);
}