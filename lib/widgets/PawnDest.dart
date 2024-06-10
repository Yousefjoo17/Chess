import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class PawnDest extends StatelessWidget {
  const PawnDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    List<Widget> destinations = [];

    if (pieceModel.pieceColor == PieceColor.white) {
      destinations.add(
        DestWidget(
          destModel:
              DestModel(x: pieceModel.x, y: pieceModel.y! - kSQUARE_LENGTH),
          pieceModel: pieceModel,
        ),
      );
      if (!pieceModel.movedBefore!) {
        destinations.add(
          DestWidget(
            destModel: DestModel(
                x: pieceModel.x, y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel,
          ),
        );
      }
    } else {
      destinations.add(
        DestWidget(
          destModel:
              DestModel(x: pieceModel.x, y: pieceModel.y! + kSQUARE_LENGTH),
          pieceModel: pieceModel,
        ),
      );
      if (!pieceModel.movedBefore!) {
        destinations.add(
          DestWidget(
            destModel: DestModel(
                x: pieceModel.x, y: pieceModel.y! + 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel,
          ),
        );
      }
    }
    ////////////////////////////////////////
    PieceModel? foundPieceModel = isPieceFound(
        pieceModel.x! - kSQUARE_LENGTH, pieceModel.y! - kSQUARE_LENGTH);
    if (pieceModel.pieceColor == PieceColor.white &&
        foundPieceModel != null &&
        foundPieceModel.pieceColor == PieceColor.black) {
      destinations.add(DestWidget(
          destModel: DestModel(
              x: pieceModel.x! - kSQUARE_LENGTH,
              y: pieceModel.y! - kSQUARE_LENGTH),
          pieceModel: pieceModel));
    }
    foundPieceModel = isPieceFound(
        pieceModel.x! + kSQUARE_LENGTH, pieceModel.y! - kSQUARE_LENGTH);
    if (pieceModel.pieceColor == PieceColor.white &&
        foundPieceModel != null &&
        foundPieceModel.pieceColor == PieceColor.black) {
      destinations.add(DestWidget(
          destModel: DestModel(
              x: pieceModel.x! + kSQUARE_LENGTH,
              y: pieceModel.y! - kSQUARE_LENGTH),
          pieceModel: pieceModel));
    }
    foundPieceModel = isPieceFound(
        pieceModel.x! + kSQUARE_LENGTH, pieceModel.y! + kSQUARE_LENGTH);
    if (pieceModel.pieceColor == PieceColor.black &&
        foundPieceModel != null &&
        foundPieceModel.pieceColor == PieceColor.white) {
      destinations.add(DestWidget(
          destModel: DestModel(
              x: pieceModel.x! + kSQUARE_LENGTH,
              y: pieceModel.y! + kSQUARE_LENGTH),
          pieceModel: pieceModel));
    }
    foundPieceModel = isPieceFound(
        pieceModel.x! - kSQUARE_LENGTH, pieceModel.y! + kSQUARE_LENGTH);
    if (pieceModel.pieceColor == PieceColor.black &&
        foundPieceModel != null &&
        foundPieceModel.pieceColor == PieceColor.white) {
      destinations.add(DestWidget(
          destModel: DestModel(
              x: pieceModel.x! - kSQUARE_LENGTH,
              y: pieceModel.y! + kSQUARE_LENGTH),
          pieceModel: pieceModel));
    }

    return Stack(
      children: destinations,
    );
  }
}
