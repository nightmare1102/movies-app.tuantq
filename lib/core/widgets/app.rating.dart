import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/core/extensions/dimension.dart';

class AppRating extends StatelessWidget {
  final String score;
  final Color color;
  final double fontSize;
  final Widget? icon;
  final int itemCount;
  final double iconSize;
  final double minRating;
  final Axis direction;
  final TextStyle? textStyle;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const AppRating({
    super.key,
    required this.score,
    required this.color,
    required this.fontSize,
    this.icon,
    this.itemCount = 5,
    this.iconSize = 20,
    this.minRating = 1,
    this.direction = Axis.horizontal,
    this.textStyle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          score,
          style: textStyle ??
              TextStyle(
                color: color,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
        ),
        context.spaceBox(w: 8),
        Expanded(
          child: _buildRatingBar(value: score, color: color),
        ),
      ],
    );
  }

  Widget _buildRatingBar({required String value, required Color color}) {
    return RatingBar.builder(
      initialRating: double.parse(value) / 2,
      minRating: minRating,
      direction: direction,
      allowHalfRating: true,
      ignoreGestures: true,
      itemCount: itemCount,
      itemSize: iconSize,
      itemBuilder: (context, _) =>
          icon ??
          Icon(
            Icons.star,
            color: color,
          ),
      onRatingUpdate: (_) {},
    );
  }
}
