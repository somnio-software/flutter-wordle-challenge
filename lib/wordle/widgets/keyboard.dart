import 'package:flutter/material.dart';
import 'package:wordle_ui/wordle_ui.dart';

const _qwerty = [
  ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'],
  ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'],
  ['ENTER', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', 'DEL'],
];

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key? key,
    required this.onKeyTapped,
    required this.onDeleteTapped,
    required this.onEnterTapped,
  }) : super(key: key);

  final void Function(String) onKeyTapped;
  final void Function() onDeleteTapped;
  final void Function() onEnterTapped;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: _qwerty
            .map(
              (keyRow) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: keyRow.map(
                  (letter) {
                    if (letter == 'DEL') {
                      return _KeyboardButton(
                        letter: letter,
                        onTap: () => onDeleteTapped,
                        backgroundColor: Colors.grey,
                        isSpecialKey: true,
                      );
                    } else if (letter == 'ENTER') {
                      return _KeyboardButton(
                        letter: letter,
                        onTap: () => onEnterTapped,
                        backgroundColor: Colors.grey,
                        isSpecialKey: true,
                      );
                    }
                    return _KeyboardButton(
                      letter: letter,
                      onTap: () => onKeyTapped(letter),
                      backgroundColor: Colors.grey,
                    );
                  },
                ).toList(),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _KeyboardButton extends StatelessWidget {
  const _KeyboardButton({
    Key? key,
    required this.onTap,
    required this.letter,
    required this.backgroundColor,
    this.isSpecialKey = false,
  }) : super(key: key);

  final VoidCallback onTap;
  final String letter;
  final Color backgroundColor;
  final bool isSpecialKey;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final letterWidth = ((width / 10) - 5) * (isSpecialKey ? 2 : 1);

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: letterWidth,
          constraints: const BoxConstraints(maxWidth: 50),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            color: Color(0xff34319e),
          ),
          child: Center(
            child: letter == 'ENTER'
                ? Image.asset(
                    WordleAssets.enterKeyPath,
                    color: Colors.white,
                    height: 16,
                  )
                : letter == 'DEL'
                    ? Image.asset(
                        WordleAssets.deleteKeyPath,
                        color: Colors.white,
                        height: 16,
                      )
                    : Text(
                        letter,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
