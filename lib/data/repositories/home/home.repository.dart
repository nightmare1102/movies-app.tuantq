import 'package:movie_app/data/entities/local/movie.local.dart';

abstract class HomeRepository {
  Future<List<Movie>> fetchMovieList();
}