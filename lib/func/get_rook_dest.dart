import 'package:chess/constants.dart';
import 'package:chess/func/isPieceFound.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getRookDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  DestModel destModel;
  PieceModel? foundPieceModel;
  int n;
  if (pieceModel.pieceName == PieceName.king) {
    n = 2;
  } else {
    n = 8;
  }
  //right
  for (int i = 1; i < n; i++) {
    foundPieceModel =
        pieceFound(pieceModel.x! + kSQUARE_LENGTH * i, pieceModel.y!);
    destModel = DestModel(
      x: pieceModel.x! + kSQUARE_LENGTH * i,
      y: pieceModel.y,
    );

    if (foundPieceModel == null) {
      myDestsModels.add(destModel);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDestsModels.add(destModel);
        break;
      }
    }
  }
  //down
  for (int i = 1; i < n; i++) {
    foundPieceModel =
        pieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH * i);
    destModel = DestModel(
      x: pieceModel.x!,
      y: pieceModel.y! + kSQUARE_LENGTH * i,
    );

    if (foundPieceModel == null) {
      myDestsModels.add(destModel);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDestsModels.add(destModel);
        break;
      }
    }
  }

//left
  for (int i = 1; i < n; i++) {
    foundPieceModel =
        pieceFound(pieceModel.x! - kSQUARE_LENGTH * i, pieceModel.y!);
    destModel = DestModel(
      x: pieceModel.x! - kSQUARE_LENGTH * i,
      y: pieceModel.y!,
    );

    if (foundPieceModel == null) {
      myDestsModels.add(destModel);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDestsModels.add(destModel);
        break;
      }
    }
  }
  //up
  for (int i = 1; i < n; i++) {
    foundPieceModel =
        pieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH * i);
    destModel = DestModel(
      x: pieceModel.x!,
      y: pieceModel.y! - kSQUARE_LENGTH * i,
    );

    if (foundPieceModel == null) {
      myDestsModels.add(destModel);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDestsModels.add(destModel);
        break;
      }
    }
  }

  return myDestsModels;
}
