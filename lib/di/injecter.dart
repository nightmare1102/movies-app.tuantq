import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_app/core/data/dio_config.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';
import 'package:movie_app/data/repositories/home/i_app.repositories.dart';
import 'package:movie_app/data/services/auth_services.dart';
import 'package:movie_app/data/services/i_auth_services.dart';
import 'package:movie_app/data/sources/local/i_local.data_source.dart';
import 'package:movie_app/data/sources/local/local.data_source.dart';
import 'package:movie_app/data/sources/remote/remote.data_source.dart';
import 'package:movie_app/data/usecases/check_session.dart';
import 'package:movie_app/data/usecases/fetch_movie_list.dart';
import 'package:movie_app/data/usecases/get_favourite_movies.dart';
import 'package:movie_app/data/usecases/get_info_user.dart';
import 'package:movie_app/data/usecases/get_state_favourite_movie.dart';
import 'package:movie_app/data/usecases/login.dart';
import 'package:movie_app/data/usecases/logout.dart';
import 'package:movie_app/data/usecases/set_toggle_favourite_movie.dart';
import 'package:movie_app/env.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_blocs.dart';
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

  provider.registerSingleton<AuthBloc>(
    AuthBloc(
      provider.get<CheckSession>(),
      provider.get<Login>(),
      provider.get<Logout>(),
      provider.get<GetInfoUser>(),
    ),
  );
}

FutureOr<void> _registerUseCases() async {
  provider.registerSingleton<GetMovies>(
    GetMovies(
      provider.get<AppRepositories>(),
    ),
  );

  provider.registerSingleton<CheckSession>(
    CheckSession(
      provider.get<AuthService>(),
    ),
  );

  provider.registerSingleton<Login>(
    Login(
      provider.get<AuthService>(),
    ),
  );

  provider.registerSingleton<Logout>(
    Logout(
      provider.get<AuthService>(),
    ),
  );

  provider.registerSingleton<GetInfoUser>(
    GetInfoUser(
      provider.get<AuthService>(),
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

  provider.registerSingleton<AuthService>(
    IAuthService(
      provider.get<GoogleSignIn>(),
    ),
  );
}

FutureOr<void> _registerModules() async {
  provider.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  provider.registerSingleton<FirebaseApp>(
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: Platform.isAndroid ? AppEnv.androidApiKey : AppEnv.iosApiKey,
      appId: Platform.isAndroid ? AppEnv.androidAppId : AppEnv.iosAppId,
      messagingSenderId: Platform.isAndroid ? AppEnv.androidSenderId : AppEnv.iosSenderId,
      projectId: Platform.isAndroid ? AppEnv.androidProjectId : AppEnv.iosProjectId,
      storageBucket: Platform.isAndroid ? AppEnv.androidStorageId : AppEnv.iosStorageId,
      iosBundleId: AppEnv.iosBundleId,
    )),
  );

  provider.registerSingleton<GoogleSignIn>(GoogleSignIn());
}
