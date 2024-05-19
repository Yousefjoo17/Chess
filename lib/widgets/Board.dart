import 'package:chess/constants.dart';
import 'package:chess/widgets/PiecesPlacement.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    child: SizedBox(
                      width: kSQUARE_LENGTH,
                      height: kSQUARE_LENGTH,
                    ),
                  );
                } else {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                    ),
                    child: SizedBox(
                      width: kSQUARE_LENGTH,
                      height: kSQUARE_LENGTH,
                    ),
                  );
                }
              },
            ),
          ),
        ),
        const PiecesPlacement(),
      ],
    );
  }
}
