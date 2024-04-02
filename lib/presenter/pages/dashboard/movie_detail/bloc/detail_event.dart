import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_event.freezed.dart';

@freezed
class DetailMovieEvent with _$DetailMovieEvent {
  const factory DetailMovieEvent.toggleFavouriteMovie(String id) = ToggleFavouriteMovie;

  const factory DetailMovieEvent.getStateFavouriteMovie(String id) = GetStateFavouriteMovie;
}
