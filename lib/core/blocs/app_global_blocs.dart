import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/di/injecter.dart';
import 'package:movie_app/presenter/blocs/app_blocs.dart';

class GlobalBlocProviders extends StatelessWidget {
  final Widget child;

  const GlobalBlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBlocs>.value(
          value: provider.get<AppBlocs>(),
        ),
      ],
      child: child,
    );
  }
}
