import 'package:flutter/material.dart';
import 'package:wordle/l10n/app_localizations.dart';
import 'package:wordle/wordle/widgets/widgets.dart';
import 'package:wordle_ui/wordle_ui.dart';

class WordleView extends StatelessWidget {
  const WordleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.flutterWordle,
          style: const TextStyle(
            color: WordleColors.logoShade3,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  bottom: 10.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.height / 2,
                  child: const WordleGrid(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    numberOfBoxes: 30,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  WordleColors.logoShade1,
                  WordleColors.logoShade2,
                  WordleColors.logoShade3,
                  WordleColors.logoShade4,
                  WordleColors.logoShade5,
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
              ),
              child: Keyboard(
                onKeyTapped: (key) {
                  //print(key);
                },
                onDeleteTapped: () {},
                onEnterTapped: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
