import 'package:flutter/material.dart';
import 'package:wordle/splash_screen/view/splash_screen_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SplashScreenPage(),
    );
  }
}
