import 'package:chess/constants.dart';
import 'package:chess/func/isPieceFound.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getRookDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  int maxSteps = (pieceModel.pieceName == PieceName.king) ? 2 : 8;

  void addDestinations(int xDirection, int yDirection) {
    for (int i = 1; i < maxSteps; i++) {
      double newX = pieceModel.x! + kSQUARE_LENGTH * i * xDirection;
      double newY = pieceModel.y! + kSQUARE_LENGTH * i * yDirection;
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

  // Adding destinations for all four directions
  addDestinations(1, 0);  // right
  addDestinations(0, 1);  // down
  addDestinations(-1, 0); // left
  addDestinations(0, -1); // up

  return myDestsModels;
}
