import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ILocalDataSource extends LocalDataSource {
  static const String _prefix = '@@movie_app';

  final String key;
  final SharedPreferences _storage;

  ILocalDataSource(this._storage, {this.key = "default"});

  String get _favMovies => "$_prefix/$key/fav_movies";

  @override
  Future<void> clearAll() async {
    _storage.clear();
  }

  @override
  Future<List<String>> getFavoriteMovieIds() async {
    return _storage.getStringList(_favMovies) ?? [];
  }

  @override
  Future<void> toggleFavoriteMovie(String id) async {
    final currentList = _storage.getStringList(_favMovies) ?? [];
    final isMovieExist = currentList.contains(id);
    isMovieExist ? currentList.remove(id) : currentList.add(id);
    await _storage.setStringList(_favMovies, currentList);
  }

  @override
  Future<bool> getStateFavoriteMovie(String id) async {
    final currentList = _storage.getStringList(_favMovies) ?? [];
    final isMovieExist = currentList.contains(id);
    return isMovieExist;
  }
}
