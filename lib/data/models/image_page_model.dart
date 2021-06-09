import 'package:json_annotation/json_annotation.dart';

import 'camera_model.dart';

part 'image_page_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ImagePageModel<T> {
  List<String> mostRecent;
  List<CameraModel> cameraModels;

  ImagePageModel(this.mostRecent, this.cameraModels);

  factory ImagePageModel.fromJson(
          Map<String, dynamic> json, T Function(Object json) fromJsonT) =>
      _$ImagePageModelFromJson(json, fromJsonT);
}
