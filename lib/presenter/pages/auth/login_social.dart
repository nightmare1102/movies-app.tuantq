import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/extensions/dimension.dart';
import 'package:movie_app/core/widgets/app.typographies.dart';
import 'package:movie_app/core/widgets/app_button.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_blocs.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_event.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_selector.dart';
import 'package:movie_app/presenter/pages/auth/blocs/auth_state.dart';

@RoutePage()
class LoginSocialScreen extends StatefulWidget {
  const LoginSocialScreen({super.key});

  @override
  State<LoginSocialScreen> createState() => _LoginSocialScreenState();
}

class _LoginSocialScreenState extends State<LoginSocialScreen> {
  final _bloc = provider.get<AuthBloc>();

  _handleLogin() {
    _bloc.add(const AuthLoggedIn());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: MultiBlocListener(
        listeners: [
          LoginSuccessListener(listener: _onSuccess),
          LoginFailureListener(listener: _onError),
        ],
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            title: Typographies.title("Login"),
          ),
          body: Container(
            width: context.width(),
            height: context.height(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Assets.images.png.bgLogin2.provider(), fit: BoxFit.cover)),
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LoginCard(
                  onSignIn: () => _handleLogin(),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }

  void _onSuccess(BuildContext context, AuthState state) {
    context.router.back();
  }

  void _onError(BuildContext context, AuthState state) {
    print("Error");
  }
}

class LoginCard extends StatelessWidget {
  final Function() onSignIn;

  const LoginCard({
    super.key,
    required this.onSignIn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.spaceAll(),
      padding: context.spaceAll() * 2,
      decoration: BoxDecoration(
        color: const Color(0xff1D1C3B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          context.spaceBox(h: 24),
          Typographies.title(
            "Your favorite upcoming movies are waiting for you.",
            textAlign: TextAlign.center,
          ),
          context.spaceBox(h: 24),
          Typographies.body(
            "Log in quickly and store your favorite movies.",
            textAlign: TextAlign.center,
          ),
          context.spaceBox(h: 24),
          AppButton(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            icon: Assets.images.svg.icGoogle.svg(),
            "Sign in with Google",
            color: Colors.transparent,
            onPressed: onSignIn,
          ),
          context.spaceBox(h: 24),
        ],
      ),
    );
  }
}
