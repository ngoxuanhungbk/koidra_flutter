import 'package:json_annotation/json_annotation.dart';
part 'cultivation_model.g.dart';

@JsonSerializable()
class CultivationModel {
  String crop;
  String cultivar;
  double stemDensity;
  DateTime startDate;
  DateTime endDate;
  DateTime toppingDate;


  CultivationModel(this.crop, this.cultivar, this.stemDensity, this.startDate,
      this.endDate, this.toppingDate);

  factory CultivationModel.fromJson(Map<String, dynamic> json) => _$CultivationModelFromJson(json);

  Map<String, dynamic> toJson() => _$CultivationModelToJson(this);
}
//flutter pub run build_runner build