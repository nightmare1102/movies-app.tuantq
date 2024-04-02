import 'dart:async';

import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';
import 'package:movie_app/data/repositories/home/app.repositories.dart';
import 'package:movie_app/data/services/auth_services.dart';

class CheckSession extends BaseUsecase<bool, NoParams> {
  final AuthService _authService;

  const CheckSession(this._authService);

  @override
  Future<bool> call([NoParams? params]) async {
    return await _authService.checkSession();
  }
}
