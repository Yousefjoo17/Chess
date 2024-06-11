import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/Pieces_Destinations_widgets/BishopDest.dart';
import 'package:chess/widgets/Pieces_Destinations_widgets/RookDest.dart';
import 'package:flutter/material.dart';

class QueenDest extends StatelessWidget {
  const QueenDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RookDest(pieceModel: pieceModel),
        BishopDest(pieceModel: pieceModel),
      ],
    );
  }
}
