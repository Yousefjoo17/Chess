import 'package:flutter/material.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/constants.dart';

class DestWidget extends StatelessWidget {
  const DestWidget(
      {super.key, required this.destModel, required this.pieceModel});
  final DestModel destModel;
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: destModel.x!,
      top: destModel.y!,
      width: kSQUARE_LENGTH,
      height: kSQUARE_LENGTH,
      child: GestureDetector(
        onTap: () {
          // Add your onTap logic here
        },
        child: Container(
          width: kSQUARE_LENGTH,
          height: kSQUARE_LENGTH,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 146, 238, 149)),
        ),
      ),
    );
  }
}
