// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) {
  return SeasonModel(
    json['id'] as int,
    json['cultivation'] == null
        ? null
        : CultivationModel.fromJson(
            json['cultivation'] as Map<String, dynamic>),
    (json['crops'] as List)?.map((e) => e as String)?.toList(),
    (json['operational'] as List)?.map((e) => e as String)?.toList(),
    json['climate'] == null
        ? null
        : ClimateControlModel.fromJson(json['climate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SeasonModelToJson(SeasonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cultivation': instance.cultivation?.toJson(),
      'crops': instance.crops,
      'operational': instance.operational,
      'climate': instance.climate?.toJson(),
    };
