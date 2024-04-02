import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/core/widgets/app_button.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/pages/dashboard/profile/widgets/profile_card_item.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _onHandleLogout() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _cardGeneral(title: "General"),
                  _cardMore(title: "More"),
                ],
              ),
            ),
          ),
          _buildButtonLogout()
        ],
      ),
    );
  }

  _cardGeneral({required String title}) {
    return ProfileCardItem(
      title: Padding(
        padding: context.space(start: 16, bottom: 16),
        child: Typographies.title("General"),
      ),
      children: [
        ProfileItem(
          icon: Assets.images.svg.icNotify.svg(),
          title: "Notification",
          onClick: () {},
        ),
        ProfileItem(
          icon: Assets.images.svg.icLanguage.svg(),
          title: "Language",
          onClick: () {},
        ),
        ProfileItem(
          icon: Assets.images.svg.icNations.svg(),
          title: "Country",
          onClick: () {},
        ),
        ProfileItem(
          icon: Assets.images.svg.icClearCache.svg(),
          title: "Clear Cache",
          onClick: () {},
        ),
      ],
    );
  }

  Widget _cardMore({required String title}) {
    return ProfileCardItem(
      title: Padding(
        padding: context.space(start: 16, bottom: 16),
        child: Typographies.title("More"),
      ),
      children: [
        ProfileItem(
          icon: Assets.images.svg.icSafe.svg(),
          title: "Legal and Policies",
          onClick: () {},
        ),
        ProfileItem(
          icon: Assets.images.svg.icHelp.svg(),
          title: "Help & Feedback",
          onClick: () {},
        ),
        ProfileItem(
          icon: Assets.images.svg.icAboutUs.svg(),
          title: "About Us",
          onClick: () {},
        ),
      ],
    );
  }

  Widget _buildButtonLogout() {
    return AppButton(
      "Logout",
      onPressed: () => _onHandleLogout(),
      margin: const EdgeInsets.all(16),
      width: double.infinity,
    );
  }
}
