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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Column(
          children: [
            Image.asset(
              WordleAssets.sLogoPath,
              height: 34,
            ),
            Text(
              l10n.flutterWordle.toUpperCase(),
              style: const TextStyle(
                color: WordleColors.logoShade3,
                fontSize: 16,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                  bottom: 10.0,
                  left: 48.0,
                  right: 48.0,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.height / 2,
                  child: const WordleGrid(
                    crossAxisCount: 5,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    numberOfBoxes: 25,
                  ),
                ),
              ),
            ),
          ),
          Padding(
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
          )
        ],
      ),
    );
  }
}
