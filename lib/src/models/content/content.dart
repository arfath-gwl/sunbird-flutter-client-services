import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  @JsonKey(nullable: true) List<AltMsg> altMsg;
  @JsonKey(nullable: true) String organisation;
  @JsonKey(nullable: true) String author;
  @JsonKey(nullable: true) String collaborators;
  @JsonKey(nullable: true) OriginData originData;
  @JsonKey(nullable: true) String origin;
  @JsonKey(nullable: true) num totalQuestions;
  @JsonKey(nullable: true) String itemSetPreviewUrl;
  @JsonKey(nullable: true) List<String> leafNodes;
  @JsonKey(nullable: true) num leafNodesCount;

  String identifier;
  String name;
  String appIcon;
  String description;
  String pkgVersion;
  String status;
  String size;
  String owner;
  String creator;
  dynamic /* String | List < String > */ subject;
  String board;
  dynamic /* String | List < String > */ medium;
  String publisher;
  num me_totalRatingsCount;
  String me_averageRating;
  String me_totalDownloads;
  String copyright;
  String copyrightYear;
  String license;
  LicenseDetails licenseDetails;
  String expires;
  String downloadUrl;
  Map<String, dynamic> variants;
  String artifactUrl;
  List<String> language;
  List<String> gradeLevel;
  String osId;
  String contentType;
  String resourceType;
  String mimeType;
  String artifactMimeType;
  String versionKey;
  String contentEncoding;
  String contentDisposition;
  String contentTypesCount;
  String lastPublishedOn;
  String createdOn;
  String createdBy;
  String channel;
  List<String> screenshots;
  dynamic audience;
  List<String> pragma;
  List<String> attributions;
  List<String> dialcodes;
  List<String> childNodes;
  String previewUrl;
  String framework;
  String creators;
  String contributors;
  String streamingUrl;
  dynamic totalScore;


  Content(
      this.altMsg,
      this.organisation,
      this.author,
      this.collaborators,
      this.originData,
      this.origin,
      this.totalQuestions,
      this.itemSetPreviewUrl,
      this.leafNodes,
      this.leafNodesCount,
      this.identifier,
      this.name,
      this.appIcon,
      this.description,
      this.pkgVersion,
      this.status,
      this.size,
      this.owner,
      this.creator,
      this.subject,
      this.board,
      this.medium,
      this.publisher,
      this.me_totalRatingsCount,
      this.me_averageRating,
      this.me_totalDownloads,
      this.copyright,
      this.copyrightYear,
      this.license,
      this.licenseDetails,
      this.expires,
      this.downloadUrl,
      this.variants,
      this.artifactUrl,
      this.language,
      this.gradeLevel,
      this.osId,
      this.contentType,
      this.resourceType,
      this.mimeType,
      this.artifactMimeType,
      this.versionKey,
      this.contentEncoding,
      this.contentDisposition,
      this.contentTypesCount,
      this.lastPublishedOn,
      this.createdOn,
      this.createdBy,
      this.channel,
      this.screenshots,
      this.audience,
      this.pragma,
      this.attributions,
      this.dialcodes,
      this.childNodes,
      this.previewUrl,
      this.framework,
      this.creators,
      this.contributors,
      this.streamingUrl,
      this.totalScore);

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

@JsonSerializable()
class LicenseDetails {
  String description;
  String name;
  String url;

  LicenseDetails(this.description, this.name, this.url);

  factory LicenseDetails.fromJson(Map<String, dynamic> json) => _$LicenseDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseDetailsToJson(this);
}

@JsonSerializable()
class AltMsg {
  String key;
  String value;
  String translations;

  AltMsg(this.key, this.value, this.translations);

  factory AltMsg.fromJson(Map<String, dynamic> json) => _$AltMsgFromJson(json);
  Map<String, dynamic> toJson() => _$AltMsgToJson(this);
}

@JsonSerializable()
class OriginData {
  String name;
  String author;
  String license;
  String organisation;

  OriginData(this.name, this.author, this.license, this.organisation);

  factory OriginData.fromJson(Map<String, dynamic> json) => _$OriginDataFromJson(json);
  Map<String, dynamic> toJson() => _$OriginDataToJson(this);
}
