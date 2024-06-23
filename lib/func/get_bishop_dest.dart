import 'package:chess/constants.dart';
import 'package:chess/func/isPieceFound.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getBishopDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  int maxSteps = (pieceModel.pieceName == PieceName.king) ? 2 : 8;

  void addDiagonalDestinations(int xDirection, int yDirection) {
    for (int i = 1; i < maxSteps; i++) {
      double newX = pieceModel.x! + i * kSQUARE_LENGTH * xDirection;
      double newY = pieceModel.y! + i * kSQUARE_LENGTH * yDirection;
      PieceModel? foundPieceModel = pieceFound(newX, newY);
      DestModel destModel = DestModel(x: newX, y: newY);

      if (foundPieceModel == null) {
        myDestsModels.add(destModel);
      } else {
        if (foundPieceModel.pieceColor != pieceModel.pieceColor) {
          myDestsModels.add(destModel);
        }
        break;
      }
    }
  }

  // Adding destinations for all four diagonal directions
  addDiagonalDestinations(1, 1);  // right down
  addDiagonalDestinations(-1, 1); // left down
  addDiagonalDestinations(1, -1); // right up
  addDiagonalDestinations(-1, -1); // left up

  return myDestsModels;
}
