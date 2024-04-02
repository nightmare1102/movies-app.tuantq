import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_app/data/entities/remote/user.remote.dart' as remote;
import 'package:movie_app/data/services/auth_services.dart';

class IAuthService implements AuthService {
  final GoogleSignIn _googleSignIn;

  IAuthService(this._googleSignIn);

  @override
  Future<remote.User> login() async {
    print("heloo");
    // ignore: body_might_complete_normally_catch_error
    await _googleSignIn.disconnect().catchError((error) {});

    final account = await _googleSignIn.signIn();

    if (account == null) throw Exception("Account not found");

    final googleAuth = await account.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    if (userCredential.user == null) throw Exception("Account not found");
    final User(uid: id, email: email, photoURL: avatarUrl, phoneNumber: phone, displayName: name) =
        userCredential.user!;

    return remote.User(
      id: id,
      email: email ?? "",
      avatarUrl: avatarUrl ?? "",
      phoneNumber: phone ?? "",
      name: name ?? "",
    );
  }

  @override
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    await _googleSignIn.signOut();
  }

  @override
  Future<bool> checkSession() async {
    return await _googleSignIn.isSignedIn();
  }

  @override
  Future<remote.User> getInfoUser() async {
    final userCredential = FirebaseAuth.instance.currentUser;
    if (userCredential == null) throw Exception("Account not found");
    final User(uid: id, email: email, photoURL: avatarUrl, phoneNumber: phone, displayName: name) =
        userCredential;
    return remote.User(
      id: id,
      email: email ?? "",
      avatarUrl: avatarUrl ?? "",
      phoneNumber: phone ?? "",
      name: name ?? "",
    );
  }
}
