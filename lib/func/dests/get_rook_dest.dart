import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';

List<DestModel> getRookDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  DestModel destModel;
  PieceModel? foundPieceModel;

  //right
  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x! + kSQUARE_LENGTH * i, pieceModel.y!);
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
  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH * i);
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
  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x! - kSQUARE_LENGTH * i, pieceModel.y!);
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
  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH * i);
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
