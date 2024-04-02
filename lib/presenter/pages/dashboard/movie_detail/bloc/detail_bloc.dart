import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/usecases/get_state_favourite_movie.dart';
import 'package:movie_app/data/usecases/set_toggle_favourite_movie.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_event.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_state.dart';

class MovieDetailBloc extends Bloc<DetailMovieEvent, MovieDetailState> {
  final SetToggleFavMovie _setToggleFavMovie;
  final GetStateFavMovie _getStateFavMovie;

  MovieDetailBloc(this._getStateFavMovie, this._setToggleFavMovie)
      : super(const MovieDetailState()) {
    on<ToggleFavouriteMovie>(_onToggleFavouriteMovie);
    on<GetStateFavouriteMovie>(_onGetStateFavouriteMovie);
  }

  FutureOr<void> _onToggleFavouriteMovie(
      ToggleFavouriteMovie event, Emitter<MovieDetailState> emit) async {
    await _setToggleFavMovie(event.id);
    final stateToggle = await _getStateFavMovie(event.id);
    emit(state.copyWith(
      isFavMovie: stateToggle,
    ));
  }

  FutureOr<void> _onGetStateFavouriteMovie(
      GetStateFavouriteMovie event, Emitter<MovieDetailState> emit) async {
    final stateToggle = await _getStateFavMovie(event.id);
    emit(state.copyWith(
      isFavMovie: stateToggle,
    ));
  }
}
