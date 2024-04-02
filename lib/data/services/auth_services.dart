import 'package:movie_app/data/entities/remote/user.remote.dart';

abstract class AuthService {
  Future<User> login();

  Future<void> logout();

  Future<bool> checkSession();

  Future<User> getInfoUser();
}
