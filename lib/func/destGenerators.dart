import 'package:chess/constants.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/widgets/DestWidget.dart';

List<DestWidget> destinationsGenerator(PieceModel pieceModel) {
  List<DestWidget> dests = [];

  switch (pieceModel.pieceName) {
    case PieceName.knight:
      dests.add(
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + kSQUARE_LENGTH,
                y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
      );
      dests.add(
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - kSQUARE_LENGTH,
                y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
      );
      dests.add(
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! - kSQUARE_LENGTH,
                y: pieceModel.y! - 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
      );
      dests.add(
        DestWidget(
            destModel: DestModel(
                x: pieceModel.x! + kSQUARE_LENGTH,
                y: pieceModel.y! + 2 * kSQUARE_LENGTH),
            pieceModel: pieceModel),
      );
      return dests;

    case PieceName.rook:
      for (int i = 1; i < 8; i++) {
        dests.add(DestWidget(
            destModel: DestModel(
              x: kSQUARE_LENGTH * i,
              y: pieceModel.y,
            ),
            pieceModel: pieceModel));
        dests.add(DestWidget(
            destModel: DestModel(
              x: pieceModel.x,
              y: kSQUARE_LENGTH * i,
            ),
            pieceModel: pieceModel));
      }
    default:
  }
  return dests;
}
