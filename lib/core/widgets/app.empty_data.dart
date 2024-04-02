import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';

class AppEmptyData extends StatelessWidget {
  final EdgeInsets padding;
  final Widget icon;
  final String title;
  final String subTitle;
  final TextStyle? textTitleStyle;
  final TextStyle? textSubTitleStyle;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const AppEmptyData({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
    this.icon = const SizedBox(),
    required this.title,
    required this.subTitle,
    this.textTitleStyle,
    this.textSubTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Typographies.title(
            title,
            textAlign: TextAlign.center,
            style: textTitleStyle,
          ),
          Typographies.body(
            subTitle,
            textAlign: TextAlign.center,
            style: textSubTitleStyle,
          )
        ],
      ),
    );
  }
}
