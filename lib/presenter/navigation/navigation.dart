import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/presenter/navigation/custom_routes.dart';
import 'package:movie_app/presenter/pages/dashboard/dashboard.dart';
import 'package:movie_app/presenter/pages/dashboard/favourite/favourite.screen.dart';
import 'package:movie_app/presenter/pages/dashboard/home/home.screen.dart';
import 'package:movie_app/presenter/pages/dashboard/profile/profile.screen.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/movie_detail.screen.dart';

import '../pages/auth/login_social.dart';

part 'navigation.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/login', page: LoginSocialRoute.page),
    AutoRoute(path: '/', page: DashboardRoute.page, children: [
      AutoRoute(path: 'home', page: HomeRoute.page, initial: true),
      AutoRoute(path: 'favourite', page: FavRoute.page),
      AutoRoute(path: 'profile', page: ProfileRoute.page),
    ]),
    FadeInRoute(path: '/movie/detail/:id', page: MovieDetailRoute.page)
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}
