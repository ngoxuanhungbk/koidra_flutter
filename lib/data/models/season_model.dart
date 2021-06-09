import 'package:flutter_krop/data/models/climate_control_model.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'season_model.g.dart';

@JsonSerializable(
    explicitToJson: true
)
class SeasonModel {
  final int id;
  final CultivationModel cultivation;
  final List<String> crops;
  final List<String> operational;
  final ClimateControlModel climate;

  SeasonModel(this.id, this.cultivation, this.crops, this.operational, this.climate);

  factory SeasonModel.fromJson(Map<String, dynamic> json) => _$SeasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);
}