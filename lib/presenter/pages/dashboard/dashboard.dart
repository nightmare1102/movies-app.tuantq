import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _bloc = provider.get<AppBlocs>();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        FavRoute(),
        ProfileRoute(),
      ],
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          elevation: 1,
          title: _buildAppTitle(),
          titleSpacing: 0,
          leading: _buildIconUser(),
          actions: _buildNotifyIcon(),
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        onTap: (value) {
          if (value == 1) {
            _bloc.add(const GetFavouriteMovies());
          }
          return tabsRouter.setActiveIndex(value);
        },
        // onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 24,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 24,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 24,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNotifyIcon() {
    return [
      IconButton(
        onPressed: () {
          //TODO: handle navigate to notification page
        },
        icon: Assets.images.svg.icNotification.svg(),
      )
    ];
  }

  _buildAppTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero,
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Typographies.title(
            "Login/Register",
          ),
          Typographies.body(
            "Let's watch your favorite movie!",
          ),
        ],
      ),
    );
  }

  _buildIconUser() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.account_circle,
        size: 28,
      ),
    );
  }
}
