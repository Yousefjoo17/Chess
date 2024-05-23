import 'package:chess/core/AssetsData.dart';
import 'package:chess/main.dart';
import 'package:chess/models/Pair.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/PieceWidget.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart';

class PiecesInitial extends StatelessWidget {
  const PiecesInitial({super.key});

  List<Widget> generatePieces(String color, double yOffset) {
    List<Widget> pieces = [];
    List<String> pieceOrder;
    List<PieceName> PiecesNames = [
      PieceName.rook,
      PieceName.knight,
      PieceName.bishop,
      PieceName.queen,
      PieceName.king,
      PieceName.bishop,
      PieceName.knight,
      PieceName.rook,
    ];

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
      // First row of pieces
      PieceModel mainPiece = PieceModel(
        id: pieceID++,
        x: i * kSQUARE_LENGTH.toDouble(),
        y: yOffset,
        image: pieceOrder[i],
        movedBefore: false,
        pieceColor: color == "white" ? PieceColor.white : PieceColor.black,
        pieceName: PiecesNames[i],
        live: true,
      );
      pieces.add(PieceWidget(pieceModel: mainPiece));
      positions[mainPiece.id!] = Pair(x: mainPiece.x, y: mainPiece.y);

      // Pawns row
      PieceModel pawnPiece = PieceModel(
        id: pieceID++,
        x: i * kSQUARE_LENGTH.toDouble(),
        y: color == "white" ? yOffset - kSQUARE_LENGTH : kSQUARE_LENGTH,
        image: color == "white" ? AssetsData.whitePawn : AssetsData.blackPawn,
        movedBefore: false,
        pieceColor: color == "white" ? PieceColor.white : PieceColor.black,
        pieceName: PieceName.pawn,
        live: true,
      );
      pieces.add(PieceWidget(pieceModel: pawnPiece));
      positions[pawnPiece.id!] = Pair(x: pawnPiece.x, y: pawnPiece.y);
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
          ...generatePieces("white", kBOARD_LENGTH - kSQUARE_LENGTH),
          ...generatePieces("black", 0),
        ],
      ),
    );
  }
}
