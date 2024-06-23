import 'package:chess/constants.dart';
import 'package:chess/func/isPieceFound.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/EnPassenDestModel.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getPawnDest(PieceModel pieceModel) {
  List<DestModel> myDestsModels = [];

  void addMove(double xOffset, double yOffset) {
    myDestsModels.add(DestModel(
      x: pieceModel.x! + xOffset,
      y: pieceModel.y! + yOffset,
    ));
  }

  void addEnPassenMove(double xOffset, double yOffset) {
    myDestsModels.add(DestEnpassantModel(
      x: pieceModel.x! + xOffset,
      y: pieceModel.y! + yOffset,
    ));
  }

  bool isEmpty(double x, double y) {
    return pieceFound(x, y) == null;
  }

  bool isOpponentPiece(double x, double y) {
    PieceModel? foundPiece = pieceFound(x, y);
    return foundPiece != null && foundPiece.pieceColor != pieceModel.pieceColor;
  }

  bool isEnPassant(double x, double y) {
    PieceModel? foundPawn = pieceFound(x, y);
    return foundPawn != null &&
        foundPawn.pieceColor != pieceModel.pieceColor &&
        pieceModel.pieceName == PieceName.pawn &&
        foundPawn.justMoved2steps!;
  }

  void addForwardMoves() {
    int direction = pieceModel.pieceColor == PieceColor.white ? -1 : 1;
    int startRow = pieceModel.pieceColor == PieceColor.white ? 6 : 1;

    if (isEmpty(pieceModel.x!, pieceModel.y! + direction * kSQUARE_LENGTH)) {
      addMove(0, direction * kSQUARE_LENGTH);
    }

    if (!pieceModel.movedBefore! &&
        pieceModel.y == startRow * kSQUARE_LENGTH &&
        isEmpty(pieceModel.x!, pieceModel.y! + direction * kSQUARE_LENGTH) &&
        isEmpty(
            pieceModel.x!, pieceModel.y! + 2 * direction * kSQUARE_LENGTH)) {
      addMove(0, 2 * direction * kSQUARE_LENGTH);
    }
  }

  void addDiagonalCaptures() {
    int direction = pieceModel.pieceColor == PieceColor.white ? -1 : 1;

    if (isOpponentPiece(pieceModel.x! - kSQUARE_LENGTH,
        pieceModel.y! + direction * kSQUARE_LENGTH)) {
      addMove(-kSQUARE_LENGTH, direction * kSQUARE_LENGTH);
    }

    if (isOpponentPiece(pieceModel.x! + kSQUARE_LENGTH,
        pieceModel.y! + direction * kSQUARE_LENGTH)) {
      addMove(kSQUARE_LENGTH, direction * kSQUARE_LENGTH);
    }
  }

  void addEnPassantCaptures() {
    int direction = pieceModel.pieceColor == PieceColor.white ? -1 : 1;

    if (isEnPassant(pieceModel.x! - kSQUARE_LENGTH, pieceModel.y!)) {
      addEnPassenMove(-kSQUARE_LENGTH, direction * kSQUARE_LENGTH);
    }

    if (isEnPassant(pieceModel.x! + kSQUARE_LENGTH, pieceModel.y!)) {
      addEnPassenMove(kSQUARE_LENGTH, direction * kSQUARE_LENGTH);
    }
  }

  addForwardMoves();
  addDiagonalCaptures();
  addEnPassantCaptures();

  return myDestsModels;
}
