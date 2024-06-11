import 'package:chess/constants.dart';
import 'package:chess/core/AssetsData.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/promotion_widgets/higherOrderPiece.dart';
import 'package:flutter/material.dart';

class PromotionWidget extends StatelessWidget {
  const PromotionWidget({super.key, required this.pawn});
  final PieceModel pawn;
  @override
  Widget build(BuildContext context) {
    return pawn.pieceColor == PieceColor.white
        ? Positioned(
            top: 0,
            left: pawn.x,
            child: Column(
              children: [
                HigherOrderPieceWidget(
                    image: AssetsData.whiteQueen,
                    pieceName: PieceName.queen,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.whiteKnight,
                    pieceName: PieceName.knight,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.whiteRook,
                    pieceName: PieceName.rook,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.whiteBishop,
                    pieceName: PieceName.bishop,
                    pawn: pawn),
              ],
            ),
          )
        : Positioned(
            top: pawn.y! - 3 * kSQUARE_LENGTH,
            left: pawn.x,
            child: Column(
              children: [
                HigherOrderPieceWidget(
                    image: AssetsData.blackQueen,
                    pieceName: PieceName.queen,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.blackKnight,
                    pieceName: PieceName.knight,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.blackRook,
                    pieceName: PieceName.rook,
                    pawn: pawn),
                HigherOrderPieceWidget(
                    image: AssetsData.blackBishop,
                    pieceName: PieceName.bishop,
                    pawn: pawn),
              ],
            ),
          );
  }
}
