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
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              print("MOVE Selected Piece here");
              // move to this destination and do other logic
            },
            child: Container(
              width: kSQUARE_LENGTH,
              height: kSQUARE_LENGTH,
              color: Colors.transparent,
              child: const Center(
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
