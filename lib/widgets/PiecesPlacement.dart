import 'package:chess/core/AssetsData.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/BuildPiece.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart';

class PiecesPlacement extends StatelessWidget {
  const PiecesPlacement({super.key});

  List<Widget> generatePieces(String color, double yOffset) {
    List<Widget> pieces = [];
    List<String> pieceOrder;
    if (color == "white") {
      pieceOrder = [
        AssetsData.whiteRook,
        AssetsData.whiteKnight,
        AssetsData.whiteBishop,
        AssetsData.whiteQueen,
        AssetsData.whiteKing,
        AssetsData.whiteBishop,
        AssetsData.whiteKnight,
        AssetsData.whiteRook,
      ];
    } else {
      pieceOrder = [
        AssetsData.blackRook,
        AssetsData.blackKnight,
        AssetsData.blackBishop,
        AssetsData.blackQueen,
        AssetsData.blackKing,
        AssetsData.blackBishop,
        AssetsData.blackKnight,
        AssetsData.blackRook,
      ];
    }

    for (int i = 0; i < 8; i++) {
      pieces.add(
        BiuldPiece(
          piece: pieceOrder[i],
          x: i * kSQUARE_LENGTH,
          y: yOffset,
          pieceType: PieceType.values[i % PieceType.values.length],
        ),
      );
      pieces.add(
        BiuldPiece(
          piece: color == "white" ? AssetsData.whitePawn : AssetsData.blackPawn,
          x: i * kSQUARE_LENGTH,
          y: color == "white" ? yOffset - kSQUARE_LENGTH : kSQUARE_LENGTH,
          pieceType: PieceType.pawn,
        ),
      );
    }
    return pieces;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: SizedBox(
        width: kBOARD_LENGTH,
        height: kBOARD_LENGTH,
        child: Stack(
          children: [
            ...generatePieces("white", kBOARD_LENGTH - kSQUARE_LENGTH),
            ...generatePieces("black", 0),
          ],
        ),
      ),
    );
  }
}
