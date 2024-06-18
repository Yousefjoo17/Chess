import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceType.dart';

class PieceModel {
  int? id;
  double? x;
  double? y;
  String? image;
  bool? movedBefore;
  PieceColor? pieceColor;
  PieceName? pieceName;
  bool? live;
  bool? selected;
  bool? justMoved2steps;

  PieceModel({
    required this.id,
    required this.x,
    required this.y,
    required this.image,
    required this.movedBefore,
    required this.pieceColor,
    required this.pieceName,
    required this.live,
    required this.selected,
    required this.justMoved2steps, // for pawns
  });
}
