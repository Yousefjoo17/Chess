import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
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
        if (isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                    pieceModel.y! - 2 * kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                        pieceModel.y! - 2 * kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + kSQUARE_LENGTH,
                  y: pieceModel.y! - 2 * kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                    pieceModel.y! - 2 * kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                        pieceModel.y! - 2 * kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - kSQUARE_LENGTH,
                  y: pieceModel.y! - 2 * kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                    pieceModel.y! + 2 * kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                        pieceModel.y! + 2 * kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - kSQUARE_LENGTH,
                  y: pieceModel.y! + 2 * kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                    pieceModel.y! + 2 * kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                        pieceModel.y! + 2 * kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + kSQUARE_LENGTH,
                  y: pieceModel.y! + 2 * kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - 2 * kSQUARE_LENGTH,
                    pieceModel.y! + kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! - 2 * kSQUARE_LENGTH,
                        pieceModel.y! + kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - 2 * kSQUARE_LENGTH,
                  y: pieceModel.y! + kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! + 2 * kSQUARE_LENGTH,
                    pieceModel.y! + kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! + 2 * kSQUARE_LENGTH,
                        pieceModel.y! + kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + 2 * kSQUARE_LENGTH,
                  y: pieceModel.y! + kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - 2 * kSQUARE_LENGTH,
                    pieceModel.y! - kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! - 2 * kSQUARE_LENGTH,
                        pieceModel.y! - kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - 2 * kSQUARE_LENGTH,
                  y: pieceModel.y! - kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! + 2 * kSQUARE_LENGTH,
                    pieceModel.y! - kSQUARE_LENGTH) ==
                null ||
            isPieceFound(pieceModel.x! + 2 * kSQUARE_LENGTH,
                        pieceModel.y! - kSQUARE_LENGTH)!
                    .pieceColor !=
                pieceModel.pieceColor)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + 2 * kSQUARE_LENGTH,
                  y: pieceModel.y! - kSQUARE_LENGTH),
              pieceModel: pieceModel),
      ],
    );
  }
}
