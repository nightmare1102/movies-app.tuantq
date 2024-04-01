class Movie {
  final String id;
  final String title;
  final String year;
  final List<String> genres;
  final List<int> ratings;
  final String poster;
  final String contentRating;
  final String duration;
  final String releaseDate;
  final double averageRating;
  final String storyLine;
  final List<String> actors;
  final String imdbRating;
  final String posterUrl;

  Movie({
    required this.id,
    required this.title,
    required this.year,
    required this.genres,
    required this.ratings,
    required this.poster,
    required this.contentRating,
    required this.duration,
    required this.releaseDate,
    required this.averageRating,
    required this.storyLine,
    required this.actors,
    required this.imdbRating,
    required this.posterUrl,
  });
}
