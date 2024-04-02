import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/usecases/check_session.dart';
import 'package:movie_app/data/usecases/get_info_user.dart';
import 'package:movie_app/data/usecases/login.dart';
import 'package:movie_app/data/usecases/logout.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_event.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckSession _checkSession;
  final Login _login;
  final Logout _logout;
  final GetInfoUser _getInfoUser;

  AuthBloc(
    this._checkSession,
    this._login,
    this._logout,
    this._getInfoUser,
  ) : super(const AuthState()) {
    on<AuthLoggedIn>(_onLoggedIn);
    on<AuthLoggedOut>(_onLoggedOut);
    on<AuthGetInfoUser>(_onGetInfoUser);
  }

  FutureOr<void> _onLoggedIn(AuthLoggedIn event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final user = await _login();
    final isLogin = await _checkSession();

    emit(
      state.copyWith(status: AuthStatus.success, user: user, isLogin: isLogin),
    );
  }

  FutureOr<void> _onLoggedOut(AuthLoggedOut event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));
    await _logout();
    emit(state.copyWith(status: AuthStatus.success, user: null, isLogin: false));
  }

  FutureOr<void> _onGetInfoUser(AuthGetInfoUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));
    final isLogin = await _checkSession();
    final user = await _getInfoUser();
    emit(
      state.copyWith(
        status: AuthStatus.success,
        user: user,
        isLogin: isLogin,
      ),
    );
  }
}
