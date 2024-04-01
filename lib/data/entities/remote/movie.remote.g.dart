// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.remote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as String,
      title: json['title'] as String,
      year: json['year'] as String,
      genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      ratings: (json['ratings'] as List<dynamic>).map((e) => e as int).toList(),
      poster: json['poster'] as String,
      contentRating: json['contentRating'] as String,
      duration: json['duration'] as String,
      originalTitle: json['originalTitle'] as String,
      releaseDate: json['releaseDate'] as String,
      averageRating: (json['averageRating'] as num).toDouble(),
      storyLine: json['storyline'] as String,
      actors: (json['actors'] as List<dynamic>).map((e) => e as String).toList(),
      imdbRating: Movie._fromJson(json['imdbRating']),
      posterUrl: json['posterurl'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'genres': instance.genres,
      'ratings': instance.ratings,
      'poster': instance.poster,
      'contentRating': instance.contentRating,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate,
      'averageRating': instance.averageRating,
      'originalTitle': instance.originalTitle,
      'storyline': instance.storyLine,
      'actors': instance.actors,
      'imdbRating': instance.imdbRating,
      'posterurl': instance.posterUrl,
    };
