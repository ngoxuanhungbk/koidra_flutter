import 'package:json_annotation/json_annotation.dart';

part 'camera_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class CameraModel<T> {
  int id;
  String cameraName;
  List<String> cameraImageShow;

  CameraModel(this.id, this.cameraName, this.cameraImageShow);

  factory CameraModel.fromJson(
          Map<String, dynamic> json, T Function(Object json) fromJsonT) =>
      _$CameraModelFromJson(json, fromJsonT);
}
