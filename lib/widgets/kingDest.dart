import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class KingDest extends StatelessWidget {
  const KingDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isPieceFound(pieceModel.x! + kSQUARE_LENGTH, pieceModel.y!) == null)
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x! + kSQUARE_LENGTH,
              y: pieceModel.y,
            ),
            pieceModel: pieceModel,
          ),
        //
        if (isPieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH) == null)
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x,
              y: pieceModel.y! + kSQUARE_LENGTH,
            ),
            pieceModel: pieceModel,
          ),
        //
        if (isPieceFound(pieceModel.x! - kSQUARE_LENGTH, pieceModel.y!) == null)
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x! - kSQUARE_LENGTH,
              y: pieceModel.y,
            ),
            pieceModel: pieceModel,
          ),
        //
        if (isPieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH) == null)
          DestWidget(
            destModel: DestModel(
              x: pieceModel.x,
              y: pieceModel.y! - kSQUARE_LENGTH,
            ),
            pieceModel: pieceModel,
          ),
        //
        if (isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                pieceModel.y! + kSQUARE_LENGTH) ==
            null)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + kSQUARE_LENGTH,
                  y: pieceModel.y! + kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                pieceModel.y! + kSQUARE_LENGTH) ==
            null)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - kSQUARE_LENGTH,
                  y: pieceModel.y! + kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! + kSQUARE_LENGTH,
                pieceModel.y! - kSQUARE_LENGTH) ==
            null)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! + kSQUARE_LENGTH,
                  y: pieceModel.y! - kSQUARE_LENGTH),
              pieceModel: pieceModel),
        //
        if (isPieceFound(pieceModel.x! - kSQUARE_LENGTH,
                pieceModel.y! - kSQUARE_LENGTH) ==
            null)
          DestWidget(
              destModel: DestModel(
                  x: pieceModel.x! - kSQUARE_LENGTH,
                  y: pieceModel.y! - kSQUARE_LENGTH),
              pieceModel: pieceModel),
      ],
    );
  }
}
