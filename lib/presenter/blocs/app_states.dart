import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';

part 'app_states.freezed.dart';

@freezed
class AppStates with _$AppStates {
  const factory AppStates({
    @Default(AppStatus.initial) AppStatus status,
    @Default([]) List<Movie> movies,
  }) = _AppStates;
}
