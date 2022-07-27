import 'package:flutter/material.dart';
import 'package:wordle/splash/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Wordle Challenge',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
