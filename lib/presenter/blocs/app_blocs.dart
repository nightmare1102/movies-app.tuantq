import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/usecases/fetch_movie_list.dart';
import 'package:movie_app/data/usecases/get_favourite_movies.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/blocs/app_states.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  final GetMovies _getMovies;
  final GetFavMovies _getFavouriteMovies;

  AppBlocs(this._getMovies, this._getFavouriteMovies) : super(const AppStates()) {
    on<GetMoviesStarted>(_onGetMoviesStarted);
    on<RefreshMoviesStarted>(_onRefreshMoviesStarted);
    on<GetFavouriteMovies>(_onGetFavouriteMovies);
  }

  FutureOr<void> _onGetMoviesStarted(GetMoviesStarted event, Emitter<AppStates> emit) async {
    emit(state.copyWith(status: AppStatus.loading));

    final movies = await _getMovies();

    emit(state.copyWith(
      status: AppStatus.success,
      movies: movies,
    ));
  }

  FutureOr<void> _onGetFavouriteMovies(GetFavouriteMovies event, Emitter<AppStates> emit) async {
    emit(state.copyWith(status: AppStatus.loading));

    final movies = await _getFavouriteMovies();

    emit(state.copyWith(
      status: AppStatus.success,
      favMovies: movies,
    ));
  }

  FutureOr<void> _onRefreshMoviesStarted(
      RefreshMoviesStarted event, Emitter<AppStates> emit) async {
    emit(state.copyWith(status: AppStatus.refreshing));

    final movies = await _getMovies();

    emit(state.copyWith(
      status: AppStatus.success,
      movies: movies,
    ));
  }

}
