import 'package:chess/main.dart';
import 'package:chess/models/PieceModel.dart';

PieceModel? PieceFound(double x, double y) {
  for (int i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.live!) {
      if (x == piecesInfo[i]!.x && y == piecesInfo[i]!.y) {
        return piecesInfo[i];
      }
    }
  }
  return null;
}
