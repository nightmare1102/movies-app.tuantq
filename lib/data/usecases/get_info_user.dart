import 'dart:async';

import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';
import 'package:movie_app/data/services/auth_services.dart';

class GetInfoUser extends BaseUsecase<User, NoParams> {
  final AuthService _authService;

  const GetInfoUser(this._authService);

  @override
  Future<User> call([NoParams? params]) async {
    return await _authService.getInfoUser();
  }
}
