import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:movie_app/core/blocs/app_global_blocs.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/presenter/pages/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterConfig.loadEnvVariables();

  await injectDependencies();

  runApp(
    GlobalBlocProviders(
      child: App(),
    ),
  );
}
