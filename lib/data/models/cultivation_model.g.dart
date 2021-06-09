// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cultivation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CultivationModel _$CultivationModelFromJson(Map<String, dynamic> json) {
  return CultivationModel(
    json['crop'] as String,
    json['cultivar'] as String,
    (json['stemDensity'] as num)?.toDouble(),
    json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    json['endDate'] == null ? null : DateTime.parse(json['endDate'] as String),
    json['toppingDate'] == null
        ? null
        : DateTime.parse(json['toppingDate'] as String),
  );
}

Map<String, dynamic> _$CultivationModelToJson(CultivationModel instance) =>
    <String, dynamic>{
      'crop': instance.crop,
      'cultivar': instance.cultivar,
      'stemDensity': instance.stemDensity,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'toppingDate': instance.toppingDate?.toIso8601String(),
    };
