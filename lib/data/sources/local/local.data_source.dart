import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  static const String _prefix = '@@movie_app';

  final String key;
  final SharedPreferences _storage;

  LocalDataSource(this._storage, {this.key = "default"});
}
