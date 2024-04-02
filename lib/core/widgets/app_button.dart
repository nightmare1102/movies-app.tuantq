import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';

enum AppButtonSize { small, normal, large }

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color color;
  final Color textColor;
  final Color overlayColor;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final double fontSize;
  final AppButtonSize size;
  final EdgeInsets margin;
  final BorderRadius borderRadius;

  const AppButton(
    this.title, {
    super.key,
    this.width,
    this.height = 40,
    this.margin = EdgeInsets.zero,
    this.textColor = Colors.white,
    this.color = const Color(0xffFF375F),
    this.overlayColor = Colors.white,
    this.textStyle,
    this.fontSize = 14,
    this.size = AppButtonSize.normal,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: _getWidthStyle(),
      height: _getHeightStyle(),
      child: ElevatedButton(
        style: _buttonStyleDefault(),
        onPressed: onPressed,
        child: Typographies.body(title, style: textStyle ?? _textStyleDefault()),
      ),
    );
  }

  double? _getWidthStyle() {
    return width;
  }

  double? _getHeightStyle() {
    switch (size) {
      case AppButtonSize.small:
        return 34;
      case AppButtonSize.large:
        return 46;
      default:
        return height;
    }
  }

  double _getFontSize() {
    switch (size) {
      case AppButtonSize.small:
        return 12;
      case AppButtonSize.large:
        return 16;
      default:
        return textStyle?.fontSize ?? fontSize;
    }
  }

  TextStyle _textStyleDefault() {
    return TextStyle(
      color: textColor,
      fontSize: _getFontSize(),
      fontWeight: FontWeight.bold,
    );
  }

  ButtonStyle _buttonStyleDefault() {
    return ButtonStyle(
      backgroundColor: MaterialStatePropertyAll<Color>(color),
      overlayColor: MaterialStatePropertyAll<Color>(
        overlayColor.withOpacity(0.25),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
