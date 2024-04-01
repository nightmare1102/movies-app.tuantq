import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/entities/local/movie.local.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_states.dart';
import 'package:movie_app/presenter/blocs/app_status.dart';

class AppStatusSelector extends BlocSelector<AppBlocs, AppStates, AppStatus> {
  AppStatusSelector({
    super.key,
    required Widget Function(AppStatus data) builder,
  }) : super(
          selector: (state) => state.status,
          builder: (_, status) => builder(status),
        );
}

class AppMoviesSelector extends BlocSelector<AppBlocs, AppStates, List<Movie>> {
  AppMoviesSelector({
    super.key,
    required Widget Function(List<Movie> movies) builder,
  }) : super(
          selector: (state) => state.movies,
          builder: (_, status) => builder(status),
        );
}
