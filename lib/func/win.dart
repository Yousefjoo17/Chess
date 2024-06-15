import 'package:chess/func/can_move_and_save_king.dart';
import 'package:chess/func/get_piece_dest.dart';
import 'package:chess/main.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';

bool whiteWin() {
  List<DestModel> pieceDest = [];
  for (var i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.live! && piecesInfo[i]!.pieceColor == PieceColor.black) {
      pieceDest = getPieceDest(piecesInfo[i]!);
      for (var dest in pieceDest) {
        if (canMoveAndSaveKing(piecesInfo[i]!, dest)) {
          return false;
        }
      }
    }
  }
  return wWin = true;
}

bool blackWin() {
  List<DestModel> pieceDest = [];
  for (var i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.live! && piecesInfo[i]!.pieceColor == PieceColor.white) {
      pieceDest = getPieceDest(piecesInfo[i]!);
      for (var dest in pieceDest) {
        if (canMoveAndSaveKing(piecesInfo[i]!, dest)) {
          return false;
        }
      }
    }
  }
  return bWin = true;
}
