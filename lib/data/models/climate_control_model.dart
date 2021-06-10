import 'package:json_annotation/json_annotation.dart';
part 'climate_control_model.g.dart';

@JsonSerializable()
class ClimateControlModel {
   double dailyPhotoPeriod;
   int maximumAllowedCO2Setpoint;
   int maximumAllowedHeatingSetpoint;
   int minimumPipeTemperature;
   int parToTemperatureIncrement;
   int maximumAllowedVentSetpoint;
   double targetDrainRatio;

  ClimateControlModel(
      this.dailyPhotoPeriod,
      this.maximumAllowedCO2Setpoint,
      this.maximumAllowedHeatingSetpoint,
      this.minimumPipeTemperature,
      this.parToTemperatureIncrement,
      this.maximumAllowedVentSetpoint,
      this.targetDrainRatio);

  factory ClimateControlModel.fromJson(Map<String, dynamic> json) => _$ClimateControlModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClimateControlModelToJson(this);
}