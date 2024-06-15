import 'package:chess/constants.dart';
import 'package:chess/widgets/PiecesGenerator.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Stack(
        children: [
          SizedBox(
            height: kSQUARE_LENGTH * 8,
            width: kSQUARE_LENGTH * 8,
            child: GridView.count(
              crossAxisCount: 8,
              children: List.generate(
                64,
                (index) {
                  if (index.isEven && (index ~/ 8).toInt().isEven ||
                      index.isOdd && (index ~/ 8).toInt().isOdd) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const SizedBox(
                        width: kSQUARE_LENGTH,
                        height: kSQUARE_LENGTH,
                      ),
                    );
                  } else {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.brown,
                      ),
                      child: const SizedBox(
                        width: kSQUARE_LENGTH,
                        height: kSQUARE_LENGTH,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          const PiecesGenerator(),
        ],
      ),
    );
  }
}
