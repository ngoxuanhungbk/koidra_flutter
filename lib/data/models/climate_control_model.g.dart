// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'climate_control_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClimateControlModel _$ClimateControlModelFromJson(Map<String, dynamic> json) {
  return ClimateControlModel(
    (json['dailyPhotoPeriod'] as num)?.toDouble(),
    json['maximumAllowedCO2Setpoint'] as int,
    json['maximumAllowedHeatingSetpoint'] as int,
    json['minimumPipeTemperature'] as int,
    json['parToTemperatureIncrement'] as int,
    json['maximumAllowedVentSetpoint'] as int,
    (json['targetDrainRatio'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ClimateControlModelToJson(
        ClimateControlModel instance) =>
    <String, dynamic>{
      'dailyPhotoPeriod': instance.dailyPhotoPeriod,
      'maximumAllowedCO2Setpoint': instance.maximumAllowedCO2Setpoint,
      'maximumAllowedHeatingSetpoint': instance.maximumAllowedHeatingSetpoint,
      'minimumPipeTemperature': instance.minimumPipeTemperature,
      'parToTemperatureIncrement': instance.parToTemperatureIncrement,
      'maximumAllowedVentSetpoint': instance.maximumAllowedVentSetpoint,
      'targetDrainRatio': instance.targetDrainRatio,
    };
