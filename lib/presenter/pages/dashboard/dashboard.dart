import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/navigater.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_blocs.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_event.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_selector.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _bloc = provider.get<AppBlocs>();
  final _authBloc = provider.get<AuthBloc>();
  late TabsRouter _tabsRouter;

  @override
  void initState() {
    _authBloc.add(const AuthGetInfoUser());
    super.initState();
  }

  void _handleClickIcon(bool isLogin) {
    if (!isLogin) context.navigate(const LoginSocialRoute());
    _tabsRouter.setActiveIndex(2);
  }

  void switchBottomNav(int value) {
    if (value == 1) _bloc.add(const GetFavouriteMovies());
    return _tabsRouter.setActiveIndex(value);
  }

  List<BottomNavigationBarItem> _bottomNavItem() {
    return const [
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
    ];
  }

  void _setStateTabsRouter(bool isLogin, TabsRouter tabsRouter) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tabsRouter = tabsRouter;
      if (isLogin == false) _tabsRouter.setActiveIndex(0);
    });
  }

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
      bottomNavigationBuilder: (context, tabsRouter) => AuthCheckSessionSelector(
        builder: (isLogin) {
          _setStateTabsRouter(isLogin, tabsRouter);
          return isLogin == true ? _buildBottomNav() : const SizedBox();
        },
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

  Widget _buildAppTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero,
      child: Wrap(
        direction: Axis.vertical,
        children: [
          AuthInfoUserSelector(
            builder: (infoUser) {
              return Typographies.title(
                infoUser == null ? "Login/Register" : infoUser.name,
              );
            },
          ),
          Typographies.body(
            "Let's watch your favorite movie!",
          ),
        ],
      ),
    );
  }

  Widget _buildIconUser() {
    return AuthInfoUserSelector(builder: (infoUser) {
      return IconButton(
        onPressed: () => _handleClickIcon(infoUser != null),
        icon: infoUser == null ? _iconDefault() : _iconAvatar(url: infoUser.avatarUrl),
      );
    });
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _tabsRouter.activeIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      onTap: (value) => switchBottomNav(value),
      items: _bottomNavItem(),
    );
  }

  Widget _iconAvatar({required String url}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28 / 2),
      child: CachedNetworkImage(
        imageUrl: url,
        width: 28,
        height: 28,
      ),
    );
  }

  Widget _iconDefault() {
    return const Icon(
      Icons.account_circle,
      size: 28,
    );
  }
}
