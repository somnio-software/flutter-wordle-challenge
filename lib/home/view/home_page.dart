import 'package:flutter/material.dart';
import 'package:wordle/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (ctx) {
        return const HomePage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
