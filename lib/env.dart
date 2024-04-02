import 'package:flutter_config/flutter_config.dart';

class AppEnv {
  static String _get(String key) => FlutterConfig.get(key);

  static String get appName => _get('APP_NAME');

  static String get baseUrl => _get('BASE_URL');

  static String get androidApiKey => _get('ANDROID_API_KEY');

  static String get androidAppId => _get('ANDROID_APP_ID');

  static String get androidSenderId => _get('ANDROID_SENDER_ID');

  static String get androidProjectId => _get('ANDROID_PROJECT_ID');

  static String get androidStorageId => _get('ANDROID_STORAGE_ID');

  static String get iosApiKey => _get('IOS_API_KEY');

  static String get iosAppId => _get('IOS_APP_ID');

  static String get iosSenderId => _get('IOS_SENDER_ID');

  static String get iosProjectId => _get('IOS_PROJECT_ID');

  static String get iosStorageId => _get('IOS_STORAGE_ID');

  static String get iosBundleId => _get('IOS_BUNDLE_ID');
}