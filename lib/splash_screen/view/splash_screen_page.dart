import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordle/splash_screen/splash_screen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (ctx) {
        return const SplashScreenPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashScreenBloc(),
      child: const SplashScreenView(),
    );
  }
}
