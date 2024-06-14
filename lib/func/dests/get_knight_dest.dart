import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';

List<DestModel> getKnightDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  List<List<int>> moves = [
    [2, 1],
    [1, 2],
    [-1, 2],
    [-2, 1],
    [-2, -1],
    [-1, -2],
    [1, -2],
    [2, -1]
  ];

  for (List<int> move in moves) {
    double newX = pieceModel.x! + move[0] * kSQUARE_LENGTH;
    double newY = pieceModel.y! + move[1] * kSQUARE_LENGTH;
    PieceModel? foundPieceModel = PieceFound(newX, newY);

    DestModel destModel = DestModel(
      x: newX,
      y: newY,
    );

    if (foundPieceModel == null) {
      myDestsModels.add(destModel);
    } else {
      if (foundPieceModel.pieceColor != pieceModel.pieceColor) {
        myDestsModels.add(destModel);
      }
    }
  }

  return myDestsModels;
}
