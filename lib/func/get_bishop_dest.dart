import 'package:chess/constants.dart';
import 'package:chess/func/isPieceFound.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getBishopDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  DestModel destModel;
  PieceModel? foundPieceModel;
  int n;
  if (pieceModel.pieceName == PieceName.king) {
    n = 2;
  } else {
    n = 8;
  }
  //right down
  for (int i = 1; i < n; i++) {
    foundPieceModel = pieceFound(
        pieceModel.x! + i * kSQUARE_LENGTH, pieceModel.y! + i * kSQUARE_LENGTH);
    destModel = DestModel(
      x: pieceModel.x! + i * kSQUARE_LENGTH,
      y: pieceModel.y! + i * kSQUARE_LENGTH,
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
  //left down
  for (int i = 1; i < n; i++) {
    foundPieceModel = pieceFound(
        pieceModel.x! - i * kSQUARE_LENGTH, pieceModel.y! + i * kSQUARE_LENGTH);
    destModel = DestModel(
      x: pieceModel.x! - i * kSQUARE_LENGTH,
      y: pieceModel.y! + i * kSQUARE_LENGTH,
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

//Right up
  for (int i = 1; i < n; i++) {
    foundPieceModel = pieceFound(
        pieceModel.x! + i * kSQUARE_LENGTH, pieceModel.y! - i * kSQUARE_LENGTH);
    destModel = DestModel(
      x: pieceModel.x! + i * kSQUARE_LENGTH,
      y: pieceModel.y! - i * kSQUARE_LENGTH,
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
  //left up
  for (int i = 1; i < n; i++) {
    foundPieceModel = pieceFound(
        pieceModel.x! - i * kSQUARE_LENGTH, pieceModel.y! - i * kSQUARE_LENGTH);
    destModel = DestModel(
      x: pieceModel.x! - i * kSQUARE_LENGTH,
      y: pieceModel.y! - i * kSQUARE_LENGTH,
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
