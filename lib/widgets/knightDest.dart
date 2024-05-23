import 'package:chess/constants.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class KnightDest extends StatelessWidget {
  const KnightDest({super.key, required this.pieceModel});

  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + kSQUARE_LENGTH,
                y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - kSQUARE_LENGTH,
                y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - kSQUARE_LENGTH,
                y: pieceModel.y! + 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + kSQUARE_LENGTH,
                y: pieceModel.y! + 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - 2 * kSQUARE_LENGTH,
                y: pieceModel.y! + kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + 2 * kSQUARE_LENGTH,
                y: pieceModel.y! + kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - 2 * kSQUARE_LENGTH,
                y: pieceModel.y! - kSQUARE_LENGTH),
            pieceModel: pieceModel),
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + 2 * kSQUARE_LENGTH,
                y: pieceModel.y! - kSQUARE_LENGTH),
            pieceModel: pieceModel),
      ],
    );
  }
}
