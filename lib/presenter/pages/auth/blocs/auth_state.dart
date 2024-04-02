import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    User? user,
    @Default(false) bool isLogin,
  }) = _AuthState;
}
