import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverAppBarMovieDetail extends SliverAppBar {
  final Color appBarBackground;

  const SliverAppBarMovieDetail({
    super.key,
    this.appBarBackground = Colors.transparent,
    super.leading,
    super.actions,
  });

  @override
  bool get pinned => true;

  @override
  Color? get shadowColor => appBarBackground;

  @override
  Color? get backgroundColor => appBarBackground;

  @override
  SystemUiOverlayStyle? get systemOverlayStyle => _systemOverlayStyle();

  SystemUiOverlayStyle _systemOverlayStyle() {
    return SystemUiOverlayStyle(
      statusBarColor: appBarBackground,
    );
  }
}
