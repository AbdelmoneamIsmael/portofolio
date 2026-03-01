// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/black.ttf
  String get black => 'assets/fonts/black.ttf';

  /// File path: assets/fonts/bold.ttf
  String get bold => 'assets/fonts/bold.ttf';

  /// File path: assets/fonts/extra_bold.ttf
  String get extraBold => 'assets/fonts/extra_bold.ttf';

  /// File path: assets/fonts/light.ttf
  String get light => 'assets/fonts/light.ttf';

  /// File path: assets/fonts/medium.ttf
  String get medium => 'assets/fonts/medium.ttf';

  /// File path: assets/fonts/regular.ttf
  String get regular => 'assets/fonts/regular.ttf';

  /// File path: assets/fonts/semi_bold.ttf
  String get semiBold => 'assets/fonts/semi_bold.ttf';

  /// List of all assets
  List<String> get values => [
    black,
    bold,
    extraBold,
    light,
    medium,
    regular,
    semiBold,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Xcode.svg
  String get xcode => 'assets/icons/Xcode.svg';

  /// File path: assets/icons/about.svg
  String get about => 'assets/icons/about.svg';

  /// File path: assets/icons/android.svg
  String get android => 'assets/icons/android.svg';

  /// File path: assets/icons/apple store.svg
  String get appleStore => 'assets/icons/apple store.svg';

  /// File path: assets/icons/apple.svg
  String get apple => 'assets/icons/apple.svg';

  /// File path: assets/icons/dart.svg
  String get dart => 'assets/icons/dart.svg';

  /// File path: assets/icons/face.svg
  String get face => 'assets/icons/face.svg';

  /// File path: assets/icons/firebase.svg
  String get firebase => 'assets/icons/firebase.svg';

  /// File path: assets/icons/flutter.svg
  String get flutter => 'assets/icons/flutter.svg';

  /// File path: assets/icons/github.svg
  String get github => 'assets/icons/github.svg';

  /// File path: assets/icons/linkedin.svg
  String get linkedin => 'assets/icons/linkedin.svg';

  /// File path: assets/icons/play store.svg
  String get playStore => 'assets/icons/play store.svg';

  /// File path: assets/icons/skills.svg
  String get skills => 'assets/icons/skills.svg';

  /// File path: assets/icons/swift.svg
  String get swift => 'assets/icons/swift.svg';

  /// File path: assets/icons/whatsapp.svg
  String get whatsapp => 'assets/icons/whatsapp.svg';

  /// List of all assets
  List<String> get values => [
    xcode,
    about,
    android,
    appleStore,
    apple,
    dart,
    face,
    firebase,
    flutter,
    github,
    linkedin,
    playStore,
    skills,
    swift,
    whatsapp,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/developer.png
  AssetGenImage get developer =>
      const AssetGenImage('assets/images/developer.png');

  /// File path: assets/images/developer_bk_image_dark.png
  AssetGenImage get developerBkImageDark =>
      const AssetGenImage('assets/images/developer_bk_image_dark.png');

  /// File path: assets/images/developer_bk_image_light.png
  AssetGenImage get developerBkImageLight =>
      const AssetGenImage('assets/images/developer_bk_image_light.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    developer,
    developerBkImageDark,
    developerBkImageLight,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar-SA.json
  String get arSA => 'assets/translations/ar-SA.json';

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// List of all assets
  List<String> get values => [arSA, enUS];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
