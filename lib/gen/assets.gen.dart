/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/.gitkeep
  String get gitkeep => 'assets/images/png/.gitkeep';

  /// File path: assets/images/png/bg_login2.png
  AssetGenImage get bgLogin2 => const AssetGenImage('assets/images/png/bg_login2.png');

  /// List of all assets
  List<dynamic> get values => [gitkeep, bgLogin2];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/ic_about_us.svg
  SvgGenImage get icAboutUs => const SvgGenImage('assets/images/svg/ic_about_us.svg');

  /// File path: assets/images/svg/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/images/svg/ic_back.svg');

  /// File path: assets/images/svg/ic_clear_cache.svg
  SvgGenImage get icClearCache => const SvgGenImage('assets/images/svg/ic_clear_cache.svg');

  /// File path: assets/images/svg/ic_duration.svg
  SvgGenImage get icDuration => const SvgGenImage('assets/images/svg/ic_duration.svg');

  /// File path: assets/images/svg/ic_fav_checked.svg
  SvgGenImage get icFavChecked => const SvgGenImage('assets/images/svg/ic_fav_checked.svg');

  /// File path: assets/images/svg/ic_fav_unchecked.svg
  SvgGenImage get icFavUnchecked => const SvgGenImage('assets/images/svg/ic_fav_unchecked.svg');

  /// File path: assets/images/svg/ic_help.svg
  SvgGenImage get icHelp => const SvgGenImage('assets/images/svg/ic_help.svg');

  /// File path: assets/images/svg/ic_language.svg
  SvgGenImage get icLanguage => const SvgGenImage('assets/images/svg/ic_language.svg');

  /// File path: assets/images/svg/ic_nations.svg
  SvgGenImage get icNations => const SvgGenImage('assets/images/svg/ic_nations.svg');

  /// File path: assets/images/svg/ic_notification.svg
  SvgGenImage get icNotification => const SvgGenImage('assets/images/svg/ic_notification.svg');

  /// File path: assets/images/svg/ic_notify.svg
  SvgGenImage get icNotify => const SvgGenImage('assets/images/svg/ic_notify.svg');

  /// File path: assets/images/svg/ic_safe.svg
  SvgGenImage get icSafe => const SvgGenImage('assets/images/svg/ic_safe.svg');

  /// File path: assets/images/svg/ic_save.svg
  SvgGenImage get icSave => const SvgGenImage('assets/images/svg/ic_save.svg');

  /// File path: assets/images/svg/ic_star.svg
  SvgGenImage get icStar => const SvgGenImage('assets/images/svg/ic_star.svg');

  /// File path: assets/images/svg/is_empty_fav_movie.svg
  SvgGenImage get isEmptyFavMovie => const SvgGenImage('assets/images/svg/is_empty_fav_movie.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icAboutUs,
        icBack,
        icClearCache,
        icDuration,
        icFavChecked,
        icFavUnchecked,
        icHelp,
        icLanguage,
        icNations,
        icNotification,
        icNotify,
        icSafe,
        icSave,
        icStar,
        isEmptyFavMovie
      ];
}

class Assets {
  Assets._();

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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
