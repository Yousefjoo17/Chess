import 'package:chess/main.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

PieceModel? getKing(PieceColor pieceColor) {
  for (var i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.pieceName == PieceName.king &&
        piecesInfo[i]!.pieceColor == pieceColor) {
      return piecesInfo[i]!;
    }
  }
  return null;
}
