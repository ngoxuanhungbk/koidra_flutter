import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/bloc/image/image_state.dart';
import 'package:flutter_krop/data/models/camera_model.dart';
import 'package:flutter_krop/data/models/image_page_model.dart';
import 'package:flutter_krop/ui/images/camera/camera_page.dart';
import 'package:flutter_krop/ui/images/most_recent/most_recent_page.dart';

class ImageBloc extends Cubit<ImageState> {
  ImageBloc() : super(ImageState.loading());

  void init() {
    var listImageShow = [
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg",
      "assets/images/ic_image_temp.jpeg"
    ];
    var imageModel = ImagePageModel(listImageShow, [
      CameraModel(1, "Camera 01", listImageShow),
      CameraModel(2, "Camera 02", listImageShow),
      CameraModel(3, "Camera 03", listImageShow),
      CameraModel(4, "Camera 04", listImageShow),
      CameraModel(5, "Camera 05", listImageShow),
      CameraModel(6, "Camera 06", listImageShow),
      CameraModel(7, "Camera 07", listImageShow),
    ]);
    Future.delayed(Duration(seconds: 1), () {
      emit(ImageState(imageModel));
    });
  }

  void onViewAllMostRecentClick(context, List<String> recentList) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MostRecentPage(recentList)));
  }

  void onCameraClick(context, CameraModel model) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CameraPage(model)));
  }
}
