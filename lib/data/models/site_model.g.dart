// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SiteModel _$SiteModelFromJson(Map<String, dynamic> json) {
  return SiteModel(
    json['name'] as String,
    json['type'] as String,
    json['address'] as String,
    json['currency'] as String,
    (json['lightTransmissionRatio'] as num)?.toDouble(),
    (json['latitude'] as num)?.toDouble(),
    (json['longtitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SiteModelToJson(SiteModel instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'address': instance.address,
      'currency': instance.currency,
      'lightTransmissionRatio': instance.lightTransmissionRatio,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
    };
