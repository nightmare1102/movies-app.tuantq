import 'package:flutter/material.dart';

class ActionWrap extends StatelessWidget {
  final Function() onRateMovie;
  final Function() onShareMovie;
  final Function() onRemindMeMovie;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final TextStyle textStyle;
  final Color iconColor;
  final double iconSize;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget divider;

  const ActionWrap({
    super.key,
    required this.onRateMovie,
    required this.onShareMovie,
    required this.onRemindMeMovie,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.iconColor = Colors.white,
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.iconSize = 24,
    this.divider = const Divider(
      height: 1,
      color: Color(0x2CFFFFFF),
    ),
    this.textStyle = const TextStyle(
      color: Color(0xff6A6A6D),
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          divider,
          Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                _itemAction(
                  "Rate",
                  Icons.favorite,
                  onClick: onRateMovie,
                ),
                _itemAction(
                  "Remind",
                  Icons.notification_important_outlined,
                  onClick: onRemindMeMovie,
                ),
                _itemAction(
                  "Share",
                  Icons.share_sharp,
                  onClick: onShareMovie,
                ),
              ],
            ),
          ),
          divider,
        ],
      ),
    );
  }

  _itemAction(
    String title,
    IconData icon, {
    required Function() onClick,
  }) {
    return InkWell(
      onTap: onClick,
      child: Column(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          Text(
            title,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
