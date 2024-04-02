import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';

class ProfileItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final Function() onClick;

  const ProfileItem({super.key, required this.icon, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        onTap: onClick,
        trailing: const Icon(Icons.keyboard_arrow_right),
        contentPadding: const EdgeInsets.only(left: 16, right: 8),
        leading: icon,
        title: Typographies.body(
          title,
          style: Typographies.bodyStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class ProfileCardItem extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const ProfileCardItem({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: const Color(0xff252836),
          width: 1,
        ),
      ),
      margin: context.space(start: 16, end: 16, bottom: 8, top: 8),
      padding: context.space(top: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          Column(
            children: children,
          )
        ],
      ),
    );
  }
}
