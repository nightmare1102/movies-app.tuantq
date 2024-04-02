import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:movie_app/core/data/dio_config.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';
import 'package:movie_app/data/repositories/home/i_app.repositories.dart';
import 'package:movie_app/data/sources/local/i_local.data_source.dart';
import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:movie_app/data/sources/remote/remote.data_source.dart';
import 'package:movie_app/data/usecases/fetch_movie_list.dart';
import 'package:movie_app/data/usecases/get_favourite_movies.dart';
import 'package:movie_app/data/usecases/get_state_favourite_movie.dart';
import 'package:movie_app/data/usecases/set_toggle_favourite_movie.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/blocs/app_events.dart';
import 'package:movie_app/presenter/pages/dashboard/movie_detail/bloc/detail_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final provider = GetIt.instance;

Future injectDependencies() async {
  await _registerModules();
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerUseCases();
  await _registerStates();
}

FutureOr<void> _registerStates() async {
  provider.registerSingleton<AppBlocs>(
    AppBlocs(
      provider.get<GetMovies>(),
      provider.get<GetFavMovies>(),
    ),
  );
  provider.registerSingleton<MovieDetailBloc>(
    MovieDetailBloc(
      provider.get<GetStateFavMovie>(),
      provider.get<SetToggleFavMovie>(),
    ),
  );
}

FutureOr<void> _registerUseCases() async {
  provider.registerSingleton<GetMovies>(
    GetMovies(
      provider.get<AppRepositories>(),
    ),
  );
  provider.registerSingleton<GetFavMovies>(
    GetFavMovies(
      provider.get<AppRepositories>(),
    ),
  );

  provider.registerSingleton<SetToggleFavMovie>(
    SetToggleFavMovie(
      provider.get<AppRepositories>(),
    ),
  );

  provider.registerSingleton<GetStateFavMovie>(
    GetStateFavMovie(
      provider.get<AppRepositories>(),
    ),
  );
}

FutureOr<void> _registerRepositories() async {
  provider.registerSingleton<AppRepositories>(
    IAppRepositories(
      provider.get<RemoteDataSource>(),
      provider.get<LocalDataSource>(),
    ),
  );
}

FutureOr<void> _registerDataSources() async {

  provider.registerSingleton<LocalDataSource>(
    ILocalDataSource(
      provider.get<SharedPreferences>(),
    ),
  );

  provider.registerSingleton<RemoteDataSource>(
    RemoteDataSource(
      provider.get<NetworkDio>(),
    ),
  );
}

FutureOr<void> _registerServices() async {
  provider.registerSingleton<NetworkDio>(
    NetworkDio(
      baseUrl: AppEnv.baseUrl,
    ),
  );
}

FutureOr<void> _registerModules() async {
  provider.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
}
