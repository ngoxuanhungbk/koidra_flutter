// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneModel _$ZoneModelFromJson(Map<String, dynamic> json) {
  return ZoneModel(
    json['name'] as String,
    (json['topMetrics'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ZoneModelToJson(ZoneModel instance) => <String, dynamic>{
      'name': instance.name,
      'topMetrics': instance.topMetrics,
    };
