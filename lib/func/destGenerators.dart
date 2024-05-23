import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/RookDest.dart';
import 'package:chess/widgets/knightDest.dart';
import 'package:flutter/material.dart';

Widget destinationsGenerator(PieceModel pieceModel) {

  switch (pieceModel.pieceName) {
    case PieceName.knight:
      return KnightDest(pieceModel: pieceModel);
    case PieceName.rook: 
      return RookDest(pieceModel: pieceModel);
    default:
  }
  return const SizedBox();
}
