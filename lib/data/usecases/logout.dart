import 'dart:async';
import 'package:movie_app/core/data/usecase.dart';
import 'package:movie_app/data/services/auth_services.dart';

class Logout extends BaseUsecase<void, NoParams?> {
  final AuthService _authService;

  const Logout(this._authService);

  @override
  Future<void> call([NoParams? params]) {
    return _authService.logout();
  }
}
