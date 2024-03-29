import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Movie App",
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
    );
  }
}
