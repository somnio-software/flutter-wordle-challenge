import 'package:flutter/material.dart';
import 'package:wordle/wordle/widgets/keyboard.dart';
import 'package:wordle_ui/wordle_ui.dart';

class WordleView extends StatelessWidget {
  const WordleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Wordle",
          style: TextStyle(
            color: WordleColors.logoShade3,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                bottom: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  for (int i = 0; i < 30; i++)
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        '$i',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
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
