import 'package:json_annotation/json_annotation.dart';

part 'faq.g.dart';

@JsonSerializable()
class Faq {
  List<Faq> faqs;

  Faq(this.faqs);

  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);
  Map<String, dynamic> toJson() => _$FaqToJson(this);
}

@JsonSerializable()
class Faqs {
  String topic;
  String description;

  Faqs(this.topic, this.description);

  factory Faqs.fromJson(Map<String, dynamic> json) => _$FaqsFromJson(json);
  Map<String, dynamic> toJson() => _$FaqsToJson(this);
}
