import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_bloc.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_state.dart';

class AppStateFavMoviesSelector extends BlocSelector<MovieDetailBloc, MovieDetailState, bool> {
  AppStateFavMoviesSelector({
    super.key,
    required Widget Function(bool isFav) builder,
  }) : super(
          selector: (state) => state.isFavMovie,
          builder: (_, status) => builder(status),
        );
}
