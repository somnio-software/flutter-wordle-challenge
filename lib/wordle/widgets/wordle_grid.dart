import 'package:flutter/material.dart';

class WordleGrid extends StatelessWidget {
  const WordleGrid({
    Key? key,
    required this.crossAxisCount,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.numberOfBoxes,
    this.boxBorderColor = Colors.grey,
    this.boxBorderWidth = 2.0,
    this.boxBorderRadius = 5.0,
  }) : super(key: key);

  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final int numberOfBoxes;
  final Color boxBorderColor;
  final double boxBorderWidth;
  final double boxBorderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6 * 75,
      width: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (int i = 0; i < numberOfBoxes; i++)
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: boxBorderColor,
                  width: boxBorderWidth,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(boxBorderRadius),
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
    );
  }
}
