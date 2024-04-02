import 'package:flutter/material.dart';

class Typographies extends Text {
  static TextStyle titleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bodyStyle = const TextStyle(
    color: Color(0xff92929C),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle captionStyle = const TextStyle(
    color: Color(0xff92929C),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  const Typographies._(
    super.data, {
    super.style = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    super.textAlign,
    super.maxLines,
    super.overflow,
  });

  factory Typographies.title(
    String value, {
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Typographies._(
      value,
      style: style ?? titleStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory Typographies.body(
    String value, {
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Typographies._(
      value,
      style: style ?? bodyStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory Typographies.caption(
    String value, {
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Typographies._(
      value,
      style: style ?? captionStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
