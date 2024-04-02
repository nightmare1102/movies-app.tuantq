import 'dart:async';

import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';
import 'package:movie_app/data/services/auth_services.dart';

class Login extends BaseUsecase<User, NoParams> {
  final AuthService _authService;

  const Login(this._authService);

  @override
  Future<User> call([NoParams? params]) async {
    return await _authService.login();
  }
}
