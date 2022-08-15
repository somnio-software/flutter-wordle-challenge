import 'package:flutter/material.dart';
import 'package:wordle/splash/splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (ctx) {
        return const SplashPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}
