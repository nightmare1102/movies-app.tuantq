import 'package:flutter_config/flutter_config.dart';

class AppEnv {
  static String _get(String key) => FlutterConfig.get(key);

  static String get appName => _get('APP_NAME');

  static String get baseUrl => _get('BASE_URL');
}