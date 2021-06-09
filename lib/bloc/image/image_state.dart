import 'package:flutter_krop/data/models/image_page_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_state.freezed.dart';

@freezed
abstract class ImageState with _$ImageState {
  const factory ImageState(ImagePageModel model) = ImageStateData;
  const factory ImageState.loading() = ImageStateLoading;
  const factory ImageState.error(dynamic error) = ImageStateError;
}