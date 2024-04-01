import 'package:dio/dio.dart';
import 'package:movie_app/core/data/dio_config.dart';
import 'package:movie_app/data/entities/remote/movie.remote.dart';
import 'package:retrofit/retrofit.dart';

part 'remote.data_source.g.dart';

@RestApi()
abstract class RemoteDataSource {
  factory RemoteDataSource(NetworkDio dio, {String baseUrl}) = _RemoteDataSource;

  @GET(NetworkUrls.movies)
  Future<List<Movie>> getMovies();
}

abstract class NetworkUrls {
  static const String movies = '/FEND16/movie-json-data/master/json/movies-coming-soon.json';
}
