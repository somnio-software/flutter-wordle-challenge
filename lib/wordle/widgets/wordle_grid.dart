import 'package:flutter/material.dart';

class WordleGrid extends StatelessWidget {
  const WordleGrid({
    Key? key,
    required this.wordLength,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    this.boxBorderColor = Colors.grey,
    this.boxBorderWidth = 2.0,
  }) : super(key: key);

  final int wordLength;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final Color boxBorderColor;
  final double boxBorderWidth;

  static const int maxAttempts = 6;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        height: 430,
        constraints: const BoxConstraints(maxWidth: 430),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 10),
          child: GridView.count(
            crossAxisCount: wordLength,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (int i = 0; i < wordLength * maxAttempts; i++)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: boxBorderColor,
                      width: boxBorderWidth,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "",
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
