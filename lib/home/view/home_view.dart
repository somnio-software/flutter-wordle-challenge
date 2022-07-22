import 'package:flutter/material.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';
import 'package:wordle_ui/wordle_ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
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
              padding: const EdgeInsets.all(15.0),
              child: VirtualKeyboard(
                height: 250,
                textColor: Colors.white,
                fontSize: 20,
                type: VirtualKeyboardType.Alphanumeric,
                onKeyPress: (VirtualKeyboardKey key) {
                  print(key.text);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
