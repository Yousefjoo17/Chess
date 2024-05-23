import 'package:chess/constants.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class BishopDest extends StatelessWidget {
  const BishopDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 1; i < 8; i++) ...[
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + i * kSQUARE_LENGTH,
                  y: pieceModel.y! + i * kSQUARE_LENGTH),
              pieceModel: pieceModel),
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - i * kSQUARE_LENGTH,
                  y: pieceModel.y! + i * kSQUARE_LENGTH),
              pieceModel: pieceModel),
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + i * kSQUARE_LENGTH,
                  y: pieceModel.y! - i * kSQUARE_LENGTH),
              pieceModel: pieceModel),
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - i * kSQUARE_LENGTH,
                  y: pieceModel.y! - i * kSQUARE_LENGTH),
              pieceModel: pieceModel),
        ]
      ],
    );
  }
}
