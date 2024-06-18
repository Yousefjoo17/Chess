import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getPawnDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];
  PieceModel? foundPieceModel;

  if (pieceModel.pieceColor == PieceColor.white) {
    foundPieceModel = PieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH);
    if (foundPieceModel == null) {
      myDestsModels
          .add(DestModel(x: pieceModel.x, y: pieceModel.y! - kSQUARE_LENGTH));
    }
    if (!pieceModel.movedBefore!) {
      foundPieceModel =
          PieceFound(pieceModel.x!, pieceModel.y! - 2 * kSQUARE_LENGTH);
      if (foundPieceModel == null &&
          PieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH) == null) {
        myDestsModels.add(
            DestModel(x: pieceModel.x, y: pieceModel.y! - 2 * kSQUARE_LENGTH));
      }
    }
  } else {
    foundPieceModel = PieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH);
    if (foundPieceModel == null) {
      myDestsModels
          .add(DestModel(x: pieceModel.x, y: pieceModel.y! + kSQUARE_LENGTH));
    }
    if (!pieceModel.movedBefore!) {
      foundPieceModel =
          PieceFound(pieceModel.x!, pieceModel.y! + 2 * kSQUARE_LENGTH);
      if (foundPieceModel == null &&
          PieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH) == null) {
        myDestsModels.add(
            DestModel(x: pieceModel.x, y: pieceModel.y! + 2 * kSQUARE_LENGTH));
      }
    }
  }
  PieceModel? foundPawn;

  if (pieceModel.pieceColor == PieceColor.white) {
    foundPieceModel = PieceFound(
        pieceModel.x! - kSQUARE_LENGTH, pieceModel.y! - kSQUARE_LENGTH);
    foundPawn = PieceFound(pieceModel.x! - kSQUARE_LENGTH, pieceModel.y!);
    if ((foundPieceModel != null &&
            foundPieceModel.pieceColor == PieceColor.black) ||
        (foundPawn != null &&
            foundPawn.pieceColor == PieceColor.black &&
            pieceModel.pieceName == PieceName.pawn &&
            foundPawn.justMoved2steps!)) {
      myDestsModels.add(DestModel(
          x: pieceModel.x! - kSQUARE_LENGTH,
          y: pieceModel.y! - kSQUARE_LENGTH));
    }
    foundPieceModel = PieceFound(
        pieceModel.x! + kSQUARE_LENGTH, pieceModel.y! - kSQUARE_LENGTH);
    foundPawn = PieceFound(pieceModel.x! + kSQUARE_LENGTH, pieceModel.y!);

    if ((foundPieceModel != null &&
            foundPieceModel.pieceColor == PieceColor.black) ||
        (foundPawn != null &&
            foundPawn.pieceColor == PieceColor.black &&
            pieceModel.pieceName == PieceName.pawn &&
            foundPawn.justMoved2steps!)) {
      myDestsModels.add(DestModel(
          x: pieceModel.x! + kSQUARE_LENGTH,
          y: pieceModel.y! - kSQUARE_LENGTH));
    }
  } else {
    foundPieceModel = PieceFound(
        pieceModel.x! - kSQUARE_LENGTH, pieceModel.y! + kSQUARE_LENGTH);
    foundPawn = PieceFound(pieceModel.x! - kSQUARE_LENGTH, pieceModel.y!);

    if ((foundPieceModel != null &&
            foundPieceModel.pieceColor == PieceColor.white) ||
        (foundPawn != null &&
            foundPawn.pieceColor == PieceColor.white &&
            pieceModel.pieceName == PieceName.pawn &&
            foundPawn.justMoved2steps!)) {
      myDestsModels.add(DestModel(
          x: pieceModel.x! - kSQUARE_LENGTH,
          y: pieceModel.y! + kSQUARE_LENGTH));
    }
    foundPieceModel = PieceFound(
        pieceModel.x! + kSQUARE_LENGTH, pieceModel.y! + kSQUARE_LENGTH);
    foundPawn = PieceFound(pieceModel.x! + kSQUARE_LENGTH, pieceModel.y!);

    if ((foundPieceModel != null &&
            foundPieceModel.pieceColor == PieceColor.white) ||
        (foundPawn != null &&
            foundPawn.pieceColor == PieceColor.white &&
            pieceModel.pieceName == PieceName.pawn &&
            foundPawn.justMoved2steps!)) {
      myDestsModels.add(DestModel(
          x: pieceModel.x! + kSQUARE_LENGTH,
          y: pieceModel.y! + kSQUARE_LENGTH));
    }
  }

  return myDestsModels;
}
