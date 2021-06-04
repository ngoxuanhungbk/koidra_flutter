/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get google => const AssetGenImage('assets/images/google.png');
  AssetGenImage get icAccount =>
      const AssetGenImage('assets/images/ic_account.png');
  AssetGenImage get icCalendar =>
      const AssetGenImage('assets/images/ic_calendar.png');
  AssetGenImage get icCheck =>
      const AssetGenImage('assets/images/ic_check.png');
  AssetGenImage get icClimate =>
      const AssetGenImage('assets/images/ic_climate.png');
  AssetGenImage get icClimateNow =>
      const AssetGenImage('assets/images/ic_climate_now.png');
  AssetGenImage get icCrop => const AssetGenImage('assets/images/ic_crop.png');
  AssetGenImage get icImages =>
      const AssetGenImage('assets/images/ic_images.png');
  AssetGenImage get icLogo => const AssetGenImage('assets/images/ic_logo.png');
  AssetGenImage get icMenuFold =>
      const AssetGenImage('assets/images/ic_menu_fold.png');
  AssetGenImage get icOperations =>
      const AssetGenImage('assets/images/ic_operations.png');
  AssetGenImage get imgSplash =>
      const AssetGenImage('assets/images/img_splash.png');
  AssetGenImage get windows => const AssetGenImage('assets/images/windows.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
    Key key,
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
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => _assetName;
}
