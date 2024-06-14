import 'package:chess/func/get_piece_dest.dart';
import 'package:chess/main.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';

List<DestModel> getAllSidePiecesDest(PieceColor pieceColor) {
  List<DestModel> dest = [];
  List<DestModel> temp = [];

  for (var i = 0; i < piecesInfo.length; i++) {
    //get white pieces dest
    if (pieceColor == PieceColor.white) {
      if (piecesInfo[i]!.live! &&
          piecesInfo[i]!.pieceColor == PieceColor.white) {
        temp = getPieceDest(piecesInfo[i]!);
        for (var element in temp) {
          dest.add(element);
        }
      }
    }
    //get black pieces dest
    else {
      if (piecesInfo[i]!.live! &&
          piecesInfo[i]!.pieceColor == PieceColor.black) {
        temp = getPieceDest(piecesInfo[i]!);
        for (var element in temp) {
          dest.add(element);
        }
      }
    }
  }

  return dest;
}
