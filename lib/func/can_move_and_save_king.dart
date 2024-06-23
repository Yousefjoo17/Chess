import 'package:chess/func/isPieceFound.dart';
import 'package:chess/func/is_king_threatend.dart';
import 'package:chess/main.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';

bool canMoveAndSaveKing(PieceModel pieceModel, DestModel destModel) {
  PieceModel? foundPieceModel;
  foundPieceModel = pieceFound(destModel.x!, destModel.y!);
  DestModel destModelTemp = DestModel(x: pieceModel.x, y: pieceModel.y);
  piecesInfo[pieceModel.id]!.x = destModel.x;
  piecesInfo[pieceModel.id]!.y = destModel.y;
  if (foundPieceModel != null) {
    piecesInfo[foundPieceModel.id]!.live = false;
  }
  bool canMove = !isKingThreatend(pieceModel.pieceColor!);

  piecesInfo[pieceModel.id]!.x = destModelTemp.x;
  piecesInfo[pieceModel.id]!.y = destModelTemp.y;
  if (foundPieceModel != null) {
    piecesInfo[foundPieceModel.id]!.live = true;
  }
  return canMove;
}
