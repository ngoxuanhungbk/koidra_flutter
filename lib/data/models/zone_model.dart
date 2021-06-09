import 'package:json_annotation/json_annotation.dart';
part 'zone_model.g.dart';

@JsonSerializable()
class ZoneModel {
  String name;
  List<String> topMetrics;

  ZoneModel(this.name, this.topMetrics);

  factory ZoneModel.fromJson(Map<String, dynamic> json) => _$ZoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$ZoneModelToJson(this);
}