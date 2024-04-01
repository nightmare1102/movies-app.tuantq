import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:movie_app/core/data/dio_config.dart';
import 'package:movie_app/data/repositories/home/home.repository.dart';
import 'package:movie_app/data/repositories/home/i_home.repository.dart';
import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:movie_app/data/sources/remote/remote.data_source.dart';
import 'package:movie_app/data/usecases/fetch_movie_list.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
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
    ),
  );
}

FutureOr<void> _registerUseCases() async {
  provider.registerSingleton<GetMovies>(
    GetMovies(
      provider.get<HomeRepository>(),
    ),
  );
}

FutureOr<void> _registerRepositories() async {
  provider.registerSingleton<HomeRepository>(
    IHomeRepository(
      provider.get<RemoteDataSource>(),
      provider.get<LocalDataSource>(),
    ),
  );
}

FutureOr<void> _registerDataSources() async {
  final localDataSource = LocalDataSource(
    provider.get<SharedPreferences>(),
  );

  provider.registerSingleton<LocalDataSource>(
    localDataSource,
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
