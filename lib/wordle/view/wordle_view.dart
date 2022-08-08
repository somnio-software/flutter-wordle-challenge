import 'package:flutter/material.dart';
import 'package:wordle/l10n/app_localizations.dart';
import 'package:wordle/wordle/widgets/widgets.dart';
import 'package:wordle_ui/wordle_ui.dart';

class WordleView extends StatelessWidget {
  const WordleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            _WordleTitle(),
            _WordleGrid(),
            _WordleKeyboard(),
          ],
        ),
      ),
    );
  }
}

class _WordleTitle extends StatelessWidget {
  const _WordleTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        const SizedBox(height: 20),
        Image.asset(
          WordleAssets.sLogoPath,
          height: 45,
        ),
        Text(
          l10n.flutterWordle.toUpperCase(),
          style: const TextStyle(
            color: WordleColors.logoShade3,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _WordleGrid extends StatelessWidget {
  const _WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WordleGrid(
      crossAxisCount: 5,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      numberOfBoxes: 30,
    );
  }
}

class _WordleKeyboard extends StatelessWidget {
  const _WordleKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Keyboard(
      onKeyTapped: (key) {
        //print(key);
      },
      onDeleteTapped: () {},
      onEnterTapped: () {},
    );
  }
}
