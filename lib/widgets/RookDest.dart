import 'package:chess/constants.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class RookDest extends StatelessWidget {
  const RookDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 1; i < 8; i++) ...[
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x! + kSQUARE_LENGTH * i,
              y: pieceModel.y,
            ),
            pieceModel: pieceModel,
          ),
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x,
              y: pieceModel.y! + kSQUARE_LENGTH * i,
            ),
            pieceModel: pieceModel,
          ),
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x! - kSQUARE_LENGTH * i,
              y: pieceModel.y,
            ),
            pieceModel: pieceModel,
          ),
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x,
              y: pieceModel.y! - kSQUARE_LENGTH * i,
            ),
            pieceModel: pieceModel,
          ),
        ],
      ],
    );
  }
}
