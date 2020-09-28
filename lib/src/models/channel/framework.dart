import 'package:json_annotation/json_annotation.dart';

part 'framework.g.dart';

@JsonSerializable(explicitToJson: true)
class Framework {
  @JsonKey(nullable: true) num index;
  @JsonKey(nullable: true) String code;
  @JsonKey(nullable: true) String description;
  @JsonKey(nullable: true) String type;
  String name;
  String identifier;
  String objectType;
  List<FrameworkCategory> categories;
  String translations;


  Framework(this.index, this.code, this.description, this.type, this.name,
      this.identifier, this.objectType, this.categories, this.translations);

  factory Framework.fromJson(Map<String, dynamic> json) => _$FrameworkFromJson(json);
  Map<String, dynamic> toJson() => _$FrameworkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FrameworkCategory {
  @JsonKey(nullable: true) List<CategoryTerm> terms;
  @JsonKey(nullable: true) String translations;
  String identifier;
  String code;
  String name;
  String description;
  num index;
  String status;


  FrameworkCategory(this.terms, this.translations, this.identifier, this.code,
      this.name, this.description, this.index, this.status);

  factory FrameworkCategory.fromJson(Map<String, dynamic> json) => _$FrameworkCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$FrameworkCategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryTerm {
  @JsonKey(nullable: true) List<CategoryAssociation> associations;
  @JsonKey(nullable: true) String description;
  @JsonKey(nullable: true) String translations;
  @JsonKey(nullable: true) List<CategoryAssociation> children;
  String identifier;
  String code;
  String name;
  num index;
  String category;
  String status;


  CategoryTerm(
      this.associations,
      this.description,
      this.translations,
      this.children,
      this.identifier,
      this.code,
      this.name,
      this.index,
      this.category,
      this.status);

  factory CategoryTerm.fromJson(Map<String, dynamic> json) => _$CategoryTermFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryTermToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryAssociation {
  @JsonKey(nullable: true) String translations;
  @JsonKey(nullable: true) String description;
  String identifier;
  String code;
  String name;
  String category;
  String status;


  CategoryAssociation(this.translations, this.description, this.identifier,
      this.code, this.name, this.category, this.status);

  factory CategoryAssociation.fromJson(Map<String, dynamic> json) => _$CategoryAssociationFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryAssociationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Channel {
  @JsonKey(nullable: true) List<Framework> frameworks;
  String identifier;
  String code;
  String consumerId;
  String channel;
  String description;
  String createdOn;
  String versionKey;
  String appId;
  String name;
  String lastUpdatedOn;
  String defaultFramework;
  String status;


  Channel(
      this.frameworks,
      this.identifier,
      this.code,
      this.consumerId,
      this.channel,
      this.description,
      this.createdOn,
      this.versionKey,
      this.appId,
      this.name,
      this.lastUpdatedOn,
      this.defaultFramework,
      this.status);

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
