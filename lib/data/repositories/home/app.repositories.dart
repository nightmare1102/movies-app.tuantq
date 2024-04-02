import 'package:movie_app/data/entities/local/movie.local.dart';

abstract class AppRepositories {
  Future<List<Movie>> fetchMovieList();

  Future<List<Movie>> getFavMovies();

  Future<void> setToggleFavMovie(String id);

  Future<bool> getStateFavMovie(String id);
}
