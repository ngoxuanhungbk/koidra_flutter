/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(image: this, frameBuilder: frameBuilder);
  }

  String get path => _assetName;
}

class Asset {
  Asset._();
  static AssetGenImage google = 
      const AssetGenImage('assets/images/google.png');
  static AssetGenImage icAccount = 
      const AssetGenImage('assets/images/ic_account.png');
  static AssetGenImage icArrowsUpAndDown = 
      const AssetGenImage('assets/images/ic_arrows_up_and_down.png');
  static AssetGenImage icCalendar = 
      const AssetGenImage('assets/images/ic_calendar.png');
  static AssetGenImage icCheck = 
      const AssetGenImage('assets/images/ic_check.png');
  static AssetGenImage icClimate = 
      const AssetGenImage('assets/images/ic_climate.png');
  static AssetGenImage icClimateNow = 
      const AssetGenImage('assets/images/ic_climate_now.png');
  static AssetGenImage icCrop = 
      const AssetGenImage('assets/images/ic_crop.png');
  static AssetGenImage icImages = 
      const AssetGenImage('assets/images/ic_images.png');
  static AssetGenImage icLogo = 
      const AssetGenImage('assets/images/ic_logo.png');
  static AssetGenImage icMenuFold = 
      const AssetGenImage('assets/images/ic_menu_fold.png');
  static AssetGenImage icOperations = 
      const AssetGenImage('assets/images/ic_operations.png');
  static AssetGenImage icResize = 
      const AssetGenImage('assets/images/ic_resize.png');
  static AssetGenImage imgSplash = 
      const AssetGenImage('assets/images/img_splash.png');
  static AssetGenImage windows = 
      const AssetGenImage('assets/images/windows.png');
}