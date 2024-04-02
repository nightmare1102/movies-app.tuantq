import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension DimensionExt on BuildContext {
  double width() => MediaQuery.of(this).size.width;

  double height() => MediaQuery.of(this).size.height;

  double heightAppbar() => AppBar().preferredSize.height;

  SizedBox spaceBox({double? w, double? h}) => SizedBox(width: w, height: h);

  EdgeInsets spaceAll({double value = 16}) => EdgeInsets.all(value);

  EdgeInsets space({
    double start = 0,
    double end = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      EdgeInsets.fromLTRB(start, top, end, bottom);
}
