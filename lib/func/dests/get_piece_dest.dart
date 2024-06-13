import 'package:chess/func/dests/get_bishop_dest.dart';
import 'package:chess/func/dests/get_knight_dest.dart';
import 'package:chess/func/dests/get_pawn_dest.dart';
import 'package:chess/func/dests/get_rook_dest.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getPieceDest(PieceModel pieceModel) {
  List<DestModel> dests = [];
  List<DestModel> temp = [];

  switch (pieceModel.pieceName) {
    case PieceName.knight:
      dests = getKnightDest(pieceModel);
      break;
    case PieceName.rook:
      dests = getRookDest(pieceModel);
      break;
    case PieceName.bishop:
      dests = getBishopDest(pieceModel);
      break;
    case PieceName.queen:
      dests = getRookDest(pieceModel);
      temp = getBishopDest(pieceModel);
      for (var elem in temp) {
        dests.add(elem);
      }
      break;
    case PieceName.king:
      dests = getRookDest(pieceModel);
      temp = getBishopDest(pieceModel);
      for (var elem in temp) {
        dests.add(elem);
      }
      break;
    case PieceName.pawn:
      dests = getPawnDest(pieceModel);
      break;
    default:
  }

  return dests;
}
