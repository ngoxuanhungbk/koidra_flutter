// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagePageModel<T> _$ImagePageModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return ImagePageModel<T>(
    (json['mostRecent'] as List)?.map((e) => e as String)?.toList(),
    (json['cameraModels'] as List)
        ?.map((e) => e == null
            ? null
            : CameraModel.fromJson(e as Map<String, dynamic>, (value) => value))
        ?.toList(),
  );
}

Map<String, dynamic> _$ImagePageModelToJson<T>(
  ImagePageModel<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'mostRecent': instance.mostRecent,
      'cameraModels': instance.cameraModels,
    };
