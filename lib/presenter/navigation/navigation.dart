import 'package:auto_route/auto_route.dart';
import 'package:movie_app/presenter/pages/dashboard/dashboard.dart';
import 'package:movie_app/presenter/pages/dashboard/favourite/favourite.screen.dart';
import 'package:movie_app/presenter/pages/dashboard/home/home.screen.dart';
import 'package:movie_app/presenter/pages/dashboard/profile/profile.screen.dart';

part 'navigation.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: DashboardRoute.page, children: [
      AutoRoute(path: 'home', page: HomeRoute.page, initial: true),
      AutoRoute(path: 'favourite', page: FavRoute.page),
      AutoRoute(path: 'profile', page: ProfileRoute.page),
    ]),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}