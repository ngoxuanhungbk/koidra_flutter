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
    (json['zones'] as List)
        ?.map((e) =>
            e == null ? null : ZoneModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
