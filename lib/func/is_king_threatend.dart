import 'package:chess/func/get_all_side_pieces_dest.dart';
import 'package:chess/func/get_king.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';

bool isKingThreatend(PieceColor pieceColor,{bool? castlingDest}) {
  PieceModel pieceKing = getKing(pieceColor)!;
  List<DestModel> dests = [];
  if (pieceColor == PieceColor.white) {
    //need save white king
    dests = getAllSidePiecesDest(PieceColor.black);
    for (var element in dests) {
      if (pieceKing.x == element.x && pieceKing.y == element.y) {
        return true;
      }
    }
  } else {
    //need save black king
    dests = getAllSidePiecesDest(PieceColor.white);
    for (var element in dests) {
      if (pieceKing.x == element.x && pieceKing.y == element.y) {
        return true;
      }
    }
  }
  return false;
}
