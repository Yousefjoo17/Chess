import 'package:chess/main.dart';
import 'package:chess/widgets/GenerateDestWidgets.dart';
import 'package:chess/widgets/PieceWidget.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart';

class PiecesInitial extends StatelessWidget {
  const PiecesInitial({super.key});

  List<Widget> generatePieces() {
    List<Widget> pieces = [];
    for (int i = 0; i < piecesInfo.length; i++) {
      pieces.add(PieceWidget(pieceModel: piecesInfo[i]!));
    }
    return pieces;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kBOARD_LENGTH,
      height: kBOARD_LENGTH,
      child: Stack(
        children: [
          ...generatePieces(),
          if (clickedPiece) DestGeneratorWidget(pieceModel: selectedPiece!),
        ],
      ),
    );
  }
}
