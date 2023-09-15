/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Add_light.png
  AssetGenImage get addLight =>
      const AssetGenImage('assets/icons/Add_light.png');

  /// File path: assets/icons/Back_light.png
  AssetGenImage get backLight =>
      const AssetGenImage('assets/icons/Back_light.png');

  /// File path: assets/icons/Bag_light.png
  AssetGenImage get bagLight =>
      const AssetGenImage('assets/icons/Bag_light.png');

  /// File path: assets/icons/Basket_alt_3_light.png
  AssetGenImage get basketAlt3Light =>
      const AssetGenImage('assets/icons/Basket_alt_3_light.png');

  /// File path: assets/icons/Expand_up_light.png
  AssetGenImage get expandUpLight =>
      const AssetGenImage('assets/icons/Expand_up_light.png');

  /// File path: assets/icons/Home_light.png
  AssetGenImage get homeLight =>
      const AssetGenImage('assets/icons/Home_light.png');

  /// File path: assets/icons/Search_light.png
  AssetGenImage get searchLight =>
      const AssetGenImage('assets/icons/Search_light.png');

  /// File path: assets/icons/Time_light.png
  AssetGenImage get timeLight =>
      const AssetGenImage('assets/icons/Time_light.png');

  /// File path: assets/icons/Trash_light.png
  AssetGenImage get trashLight =>
      const AssetGenImage('assets/icons/Trash_light.png');

  /// File path: assets/icons/User_light.png
  AssetGenImage get userLight =>
      const AssetGenImage('assets/icons/User_light.png');

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/delete.png
  AssetGenImage get delete => const AssetGenImage('assets/icons/delete.png');

  /// File path: assets/icons/less.png
  AssetGenImage get less => const AssetGenImage('assets/icons/less.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        addLight,
        backLight,
        bagLight,
        basketAlt3Light,
        expandUpLight,
        homeLight,
        searchLight,
        timeLight,
        trashLight,
        userLight,
        add,
        delete,
        less,
        search
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ame_chanh.jpg
  AssetGenImage get ameChanh =>
      const AssetGenImage('assets/images/ame_chanh.jpg');

  /// File path: assets/images/latte.jpg
  AssetGenImage get latte => const AssetGenImage('assets/images/latte.jpg');

  /// File path: assets/images/matcha.jpg
  AssetGenImage get matcha => const AssetGenImage('assets/images/matcha.jpg');

  /// File path: assets/images/original_coldbrew.jpg
  AssetGenImage get originalColdbrew =>
      const AssetGenImage('assets/images/original_coldbrew.jpg');

  /// File path: assets/images/passion_chia.jpg
  AssetGenImage get passionChia =>
      const AssetGenImage('assets/images/passion_chia.jpg');

  /// File path: assets/images/pig_cat.jpg
  AssetGenImage get pigCat => const AssetGenImage('assets/images/pig_cat.jpg');

  /// File path: assets/images/product.jpg
  AssetGenImage get product => const AssetGenImage('assets/images/product.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [ameChanh, latte, matcha, originalColdbrew, passionChia, pigCat, product];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
