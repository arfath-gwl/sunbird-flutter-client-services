import 'package:json_annotation/json_annotation.dart';

part 'form.g.dart';

@JsonSerializable(explicitToJson: true)
class Form {
  @JsonKey(nullable: true) String last_modified_on;

  String type;
  String subtype;
  String action;
  String component;
  String framework;
  FormData data;
  String created_on;
  String rootOrgId;

  Form(
      this.last_modified_on,
      this.type,
      this.subtype,
      this.action,
      this.component,
      this.framework,
      this.data,
      this.created_on,
      this.rootOrgId);

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
  Map<String, dynamic> toJson() => _$FormToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FormData {
  List<dynamic> fields;
  String templateName;
  String action;

  FormData(this.templateName, this.action, this.fields);

  factory FormData.fromJson(Map<String, dynamic> json) => _$FormDataFromJson(json);
  Map<String, dynamic> toJson() => _$FormDataToJson(this);
}
