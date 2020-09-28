// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Faq _$FaqFromJson(Map<String, dynamic> json) {
  return Faq(
    (json['faqs'] as List)
        ?.map((e) => e == null ? null : Faq.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FaqToJson(Faq instance) => <String, dynamic>{
      'faqs': instance.faqs,
    };

Faqs _$FaqsFromJson(Map<String, dynamic> json) {
  return Faqs(
    json['topic'] as String,
    json['description'] as String,
  );
}

Map<String, dynamic> _$FaqsToJson(Faqs instance) => <String, dynamic>{
      'topic': instance.topic,
      'description': instance.description,
    };
