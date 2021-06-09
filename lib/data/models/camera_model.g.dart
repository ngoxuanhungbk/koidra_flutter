// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CameraModel<T> _$CameraModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return CameraModel<T>(
    json['id'] as int,
    json['cameraName'] as String,
    (json['cameraImageShow'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CameraModelToJson<T>(
  CameraModel<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'cameraName': instance.cameraName,
      'cameraImageShow': instance.cameraImageShow,
    };
