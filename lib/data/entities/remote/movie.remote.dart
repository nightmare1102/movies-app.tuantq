import 'package:json_annotation/json_annotation.dart';

part 'movie.remote.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'year')
  final String year;
  @JsonKey(name: 'genres')
  final List<String> genres;
  @JsonKey(name: 'ratings')
  final List<int> ratings;
  @JsonKey(name: 'poster')
  final String poster;
  @JsonKey(name: 'contentRating')
  final String contentRating;
  @JsonKey(name: 'duration')
  final String duration;
  @JsonKey(name: 'releaseDate')
  final String releaseDate;
  @JsonKey(name: 'averageRating')
  final int averageRating;
  @JsonKey(name: 'storyline')
  final String storyLine;
  @JsonKey(name: 'actors')
  final List<String> actors;
  @JsonKey(name: 'imdbRating')
  final String imdbRating;
  @JsonKey(name: 'posterurl')
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

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
