import 'package:json_annotation/json_annotation.dart';
import '../content/content.dart';

part 'page.g.dart';

@JsonSerializable(explicitToJson: true)
class Page {
  String name;
  String id;
  List<PageSection> sections;

  Page(this.name, this.id, this.sections);

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageSection {
  @JsonKey(nullable: true) String display;
  @JsonKey(nullable: true) String description;
  @JsonKey(nullable: true) String alt;
  @JsonKey(nullable: true) String imgUrl;
  @JsonKey(nullable: true) Content collections;
  @JsonKey(nullable: true) List<Content> contents;
  
  num count;
  num index;
  String sectionDataType;
  String resmsgId;
  String searchQuery;
  String name;
  String id;
  String apiId;
  num group;

  PageSection(
      this.display,
      this.description,
      this.alt,
      this.imgUrl,
      this.collections,
      this.contents,
      this.count,
      this.index,
      this.sectionDataType,
      this.resmsgId,
      this.searchQuery,
      this.name,
      this.id,
      this.apiId,
      this.group);

  factory PageSection.fromJson(Map<String, dynamic> json) => _$PageSectionFromJson(json);
  Map<String, dynamic> toJson() => _$PageSectionToJson(this);
}
