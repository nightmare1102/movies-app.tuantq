import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/gen/fonts.gen.dart';
import 'package:movie_app/presenter/navigation/navigation.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  final colorScheme = const ColorScheme.dark(
    background: Color(0xff17162E),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppEnv.appName,
      theme: ThemeData(
        fontFamily: FontFamily.montserrat,
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.background,
          surfaceTintColor: Colors.transparent,
          centerTitle: false,
        ),
      ),
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
    );
  }
}
