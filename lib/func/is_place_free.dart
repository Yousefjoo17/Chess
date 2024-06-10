import 'package:chess/main.dart';

bool isPlaceFree(double x, double y) {
  for (int i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.x == x && piecesInfo[i]!.y == y) {
      return false;
    }
  }
  return true;
}
