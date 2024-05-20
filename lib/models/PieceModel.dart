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

  PieceModel({
    this.id,
    this.x,
    this.y,
    this.image,
    this.movedBefore,
    this.pieceColor,
    this.pieceName,
    this.live,
  });
}
