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
    return Column(
      children: _qwerty
          .map(
            (keyRow) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: keyRow.map(
                (letter) {
                  if (letter == 'DEL') {
                    return _KeyboardButton.delete(onTap: onDeleteTapped);
                  } else if (letter == 'ENTER') {
                    return _KeyboardButton.enter(onTap: onEnterTapped);
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
    );
  }
}

class _KeyboardButton extends StatelessWidget {
  const _KeyboardButton({
    Key? key,
    this.height = 56,
    this.width = 36,
    required this.onTap,
    required this.letter,
    required this.backgroundColor,
  }) : super(key: key);

  factory _KeyboardButton.delete({
    required VoidCallback onTap,
  }) =>
      _KeyboardButton(
        width: 56,
        height: 56,
        letter: 'DEL',
        onTap: onTap,
        backgroundColor: Colors.grey,
      );

  factory _KeyboardButton.enter({
    required VoidCallback onTap,
  }) =>
      _KeyboardButton(
        width: 56,
        height: 56,
        letter: 'ENTER',
        onTap: onTap,
        backgroundColor: Colors.grey,
      );

  final double height;
  final double width;
  final VoidCallback onTap;
  final String letter;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
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
                    height: 13,
                  )
                : letter == 'DEL'
                    ? Image.asset(
                        WordleAssets.deleteKeyPath,
                        color: Colors.white,
                        height: 13,
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
