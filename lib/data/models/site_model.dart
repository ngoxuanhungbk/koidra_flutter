import 'package:json_annotation/json_annotation.dart';
part 'site_model.g.dart';

@JsonSerializable()
class SiteModel {
   String name;
   String type;
   String address;
   String currency;
   double lightTransmissionRatio;
   double latitude;
   double longtitude;

  SiteModel(this.name, this.type, this.address, this.currency,
      this.lightTransmissionRatio, this.latitude, this.longtitude);

  factory SiteModel.fromJson(Map<String, dynamic> json) => _$SiteModelFromJson(json);

  Map<String, dynamic> toJson() => _$SiteModelToJson(this);
}