import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/data/entities/translator/movie.translator.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';
import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:movie_app/data/sources/remote/remote.data_source.dart';

class IAppRepositories extends AppRepositories {
  final RemoteDataSource _remoteDataSource;

  final LocalDataSource _localDataSource;

  IAppRepositories(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<Movie>> fetchMovieList() async {
    try {
      final response = await _remoteDataSource.getMovies();
      return response.toMovies();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> getStateFavMovie(String id) async {
    return await _localDataSource.getStateFavoriteMovie(id);
  }

  @override
  Future<void> setToggleFavMovie(String id) async {
    await _localDataSource.toggleFavoriteMovie(id);
  }

  @override
  Future<List<Movie>> getFavMovies() async {
    try {
      final response = await _remoteDataSource.getMovies();
      final favMovieIds = await _localDataSource.getFavoriteMovieIds();
      final favMovies = response.where((movie) => favMovieIds.contains(movie.id)).toList();
      return favMovies.toMovies();
    } catch (e) {
      return [];
    }
  }
}
