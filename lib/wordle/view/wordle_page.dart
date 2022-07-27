import 'package:flutter/material.dart';
import 'package:wordle/wordle/wordle.dart';

class WordlePage extends StatelessWidget {
  const WordlePage({Key? key}) : super(key: key);

  static Route<void> route(BuildContext context) {
    return MaterialPageRoute(
      builder: (ctx) {
        return const WordlePage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const WordleView();
  }
}
