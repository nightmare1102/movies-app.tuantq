import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_blocs.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_state.dart';

class AuthCheckSessionSelector extends BlocSelector<AuthBloc, AuthState, bool> {
  AuthCheckSessionSelector({
    super.key,
    required Widget Function(bool isLogin) builder,
  }) : super(
          selector: (state) => state.isLogin,
          builder: (_, status) => builder(status),
        );
}

class AuthInfoUserSelector extends BlocSelector<AuthBloc, AuthState, User?> {
  AuthInfoUserSelector({
    super.key,
    required Widget Function(User? infoUser) builder,
  }) : super(
          selector: (state) => state.user,
          builder: (_, status) => builder(status),
        );
}

class LoginSuccessListener extends BlocListener<AuthBloc, AuthState> {
  LoginSuccessListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == AuthStatus.success,
        );
}

class LoginFailureListener extends BlocListener<AuthBloc, AuthState> {
  LoginFailureListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == AuthStatus.failure,
        );
}

class LogoutSuccessListener extends BlocListener<AuthBloc, AuthState> {
  LogoutSuccessListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == AuthStatus.success,
        );
}

class LogoutFailureListener extends BlocListener<AuthBloc, AuthState> {
  LogoutFailureListener({
    super.key,
    required super.listener,
  }) : super(
          listenWhen: (previousState, currentState) =>
              previousState.status != currentState.status &&
              currentState.status == AuthStatus.failure,
        );
}
