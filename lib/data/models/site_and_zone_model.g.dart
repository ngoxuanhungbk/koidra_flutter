// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_and_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SiteAndZoneModel _$SiteAndZoneModelFromJson(Map<String, dynamic> json) {
  return SiteAndZoneModel(
    json['sites'] == null
        ? null
        : SiteModel.fromJson(json['sites'] as Map<String, dynamic>),
    (json['sensorMetrics'] as List)?.map((e) => e as String)?.toList(),
    json['zones'] == null
        ? null
        : ZoneModel.fromJson(json['zones'] as Map<String, dynamic>),
    json['timeZone'] as String,
  );
}

Map<String, dynamic> _$SiteAndZoneModelToJson(SiteAndZoneModel instance) =>
    <String, dynamic>{
      'sites': instance.sites,
      'sensorMetrics': instance.sensorMetrics,
      'zones': instance.zones,
      'timeZone': instance.timeZone,
    };
