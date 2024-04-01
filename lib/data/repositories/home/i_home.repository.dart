import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/data/entities/translator/movie.translator.dart';
import 'package:movie_app/data/repositories/home/home.repository.dart';
import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:movie_app/data/sources/remote/remote.data_source.dart';

class IHomeRepository extends HomeRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  IHomeRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<Movie>> fetchMovieList() async {
    try {
      final response = await _remoteDataSource.getMovies();
      return response.toMovies();
    } catch (e) {
      print(e);
      return [];
    }
  }
}