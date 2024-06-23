import 'package:chess/models/DestModel.dart';

class DestEnpassantModel extends DestModel {
  bool enPassant;

  DestEnpassantModel({required double? x, required double? y})
      : enPassant = true,
        super(x: x, y: y);
}
