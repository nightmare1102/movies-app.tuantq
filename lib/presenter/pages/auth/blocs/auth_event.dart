import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loggedIn() = AuthLoggedIn;

  const factory AuthEvent.loggedOut() = AuthLoggedOut;

  const factory AuthEvent.getInfoUser() = AuthGetInfoUser;
}
