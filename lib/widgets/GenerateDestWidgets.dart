import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/BishopDest.dart';
import 'package:chess/widgets/PawnDest.dart';
import 'package:chess/widgets/QueenDest.dart';
import 'package:chess/widgets/RookDest.dart';
import 'package:chess/widgets/kingDest.dart';
import 'package:chess/widgets/knightDest.dart';
import 'package:flutter/material.dart';
import 'package:chess/models/PieceModel.dart';

class DestGeneratorWidget extends StatelessWidget {
  const DestGeneratorWidget({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  Widget destinationsGenerator(PieceModel pieceModel) {
    switch (pieceModel.pieceName) {
      case PieceName.knight:
        return KnightDest(pieceModel: pieceModel);
      case PieceName.rook:
        return RookDest(pieceModel: pieceModel);
      case PieceName.bishop:
        return BishopDest(pieceModel: pieceModel);
      case PieceName.queen:
        return QueenDest(pieceModel: pieceModel);
      case PieceName.king:
        return KingDest(pieceModel: pieceModel);
      case PieceName.pawn:
        return PawnDest(pieceModel: pieceModel);
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        destinationsGenerator(pieceModel),
      ],
    );
  }
}
