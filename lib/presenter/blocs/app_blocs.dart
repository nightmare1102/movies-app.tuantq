import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/usecases/fetch_movie_list.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/blocs/app_states.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  final GetMovies _getMovies;

  AppBlocs(this._getMovies) : super(const AppStates()) {
    on<GetMoviesStarted>(_onGetMoviesStarted);
  }

  FutureOr<void> _onGetMoviesStarted(GetMoviesStarted event, Emitter<AppStates> emit) async {
    emit(state.copyWith(status: AppStatus.loading));

    final movies = await _getMovies();

    emit(state.copyWith(
      status: AppStatus.success,
      movies: movies,
    ));
  }
}
