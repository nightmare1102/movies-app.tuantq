import 'package:movie_app/data/entities/remote/movie.remote.dart' as remote;
import 'package:movie_app/data/entities/local/movie.local.dart';

extension MovieExt on remote.Movie {
  toMovie() {
    return Movie(
      id: id,
      title: title,
      year: year,
      genres: genres,
      ratings: ratings,
      poster: poster,
      contentRating: contentRating,
      duration: duration,
      releaseDate: releaseDate,
      averageRating: averageRating,
      storyLine: storyLine,
      actors: actors,
      imdbRating: "$imdbRating",
      posterUrl: posterUrl,
    );
  }
}

extension ListMovieExt on List<remote.Movie> {
  List<Movie> toMovies() {
    return map(
      (movie) => Movie(
        id: movie.id,
        title: movie.title,
        year: movie.year,
        genres: movie.genres,
        ratings: movie.ratings,
        poster: movie.poster,
        contentRating: movie.contentRating,
        duration: movie.duration,
        releaseDate: movie.releaseDate,
        averageRating: movie.averageRating,
        storyLine: movie.storyLine,
        actors: movie.actors,
        imdbRating: movie.imdbRating,
        posterUrl: movie.posterUrl,
      ),
    ).toList();
  }
}
