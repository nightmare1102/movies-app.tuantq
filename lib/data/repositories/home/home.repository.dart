import 'package:movie_app/data/entities/remote/movie.remote.dart';

abstract class HomeRepository {
  Future<List<Movie>> fetchMovieList();
}