import 'package:flutter/material.dart';

class IMDBIcon extends StatelessWidget {
  final Color backgroundColor;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final Color textColor;
  final double textSize;
  final String name;

  const IMDBIcon({
    super.key,
    this.backgroundColor = Colors.amber,
    this.padding = const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
    this.textStyle,
    this.textColor = Colors.black,
    this.textSize = 12,
    this.name = "IMDb",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      padding: padding,
      child: Text(
        name,
        style: textStyle ??
            TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
