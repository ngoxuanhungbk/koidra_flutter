import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/data/models/zone_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'site_and_zone_model.g.dart';

@JsonSerializable()
class SiteAndZoneModel {
  SiteModel sites;
  List<String> sensorMetrics;
  ZoneModel zones;
  String timeZone;

  SiteAndZoneModel(this.sites, this.sensorMetrics, this.zones, this.timeZone);

  factory SiteAndZoneModel.fromJson(Map<String, dynamic> json) => _$SiteAndZoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$SiteAndZoneModelToJson(this);
}