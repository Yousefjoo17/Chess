import 'package:chess/constants.dart';
import 'package:chess/func/get_all_side_pieces_dest.dart';
import 'package:chess/func/is_king_threatend.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

List<DestModel> getCastlingDest(PieceModel pieceModel) {
  List<DestModel> dests = [];
  PieceModel? suspectedRook1 =
      PieceFound(pieceModel.x! + 3 * kSQUARE_LENGTH, pieceModel.y!);
  PieceModel? suspectedRook2 =
      PieceFound(pieceModel.x! - 4 * kSQUARE_LENGTH, pieceModel.y!);
  bool kingThretend = isKingThreatend(pieceModel.pieceColor!);

  bool castlingRight = true;
  bool castlingLeft = true;
  PieceColor pieceDiffColor = pieceModel.pieceColor == PieceColor.white
      ? PieceColor.black
      : PieceColor.white;
  List<DestModel> threatendDest = getAllSidePiecesDest(pieceDiffColor);

  for (int i = 1; i < 3; i++) {
    if (PieceFound(pieceModel.x! + i * kSQUARE_LENGTH, pieceModel.y!) != null ||
        threatendDest.contains(DestModel(
            x: pieceModel.x! + i * kSQUARE_LENGTH, y: pieceModel.y!))) {
      castlingRight = false;
      break;
    }
  }
  for (int i = 1; i < 4; i++) {
    if (PieceFound(pieceModel.x! - i * kSQUARE_LENGTH, pieceModel.y!) != null ||
        threatendDest.contains(DestModel(
            x: pieceModel.x! - i * kSQUARE_LENGTH, y: pieceModel.y!))) {
      castlingLeft = false;
    }
  }
  if (pieceModel.pieceName == PieceName.king &&
      !pieceModel.movedBefore! &&
      !kingThretend) {
    if (suspectedRook1 != null &&
        suspectedRook1.pieceName == PieceName.rook &&
        !suspectedRook1.movedBefore! &&
        castlingRight) {
      dests.add(
          DestModel(x: pieceModel.x! + 2 * kSQUARE_LENGTH, y: pieceModel.y));
    }
    if (suspectedRook2 != null &&
        suspectedRook2.pieceName == PieceName.rook &&
        !suspectedRook2.movedBefore! &&
        castlingLeft) {
      dests.add(
          DestModel(x: pieceModel.x! - 2 * kSQUARE_LENGTH, y: pieceModel.y));
    }
  }
  return dests;
}
