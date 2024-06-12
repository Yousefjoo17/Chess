import 'package:chess/func/dests/get_bishop_dest.dart';
import 'package:chess/func/dests/get_rook_dest.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/Pieces_Destinations_widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class KingDest extends StatelessWidget {
  const KingDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 0; i < moveKing(pieceModel).length; i++) ...[
          moveKing(pieceModel)[i],
        ],
      ],
    );
  }
}

List<Widget> moveKing(PieceModel pieceModel) {
  List<Widget> myDestWidgets = [];
  DestWidget? destWidget;

  List<DestModel> myListModels = [];
  List<DestModel> rookMoves = getRookDest(pieceModel);
  List<DestModel> bishopMoves = getBishopDest(pieceModel);

  for (int i = 0; i < rookMoves.length; i++) {
    myListModels.add(rookMoves[i]);
  }
  for (int i = 0; i < bishopMoves.length; i++) {
    myListModels.add(bishopMoves[i]);
  }

  for (int i = 0; i < myListModels.length; i++) {
    destWidget = DestWidget(
      destModel: myListModels[i],
      pieceModel: pieceModel,
    );
    myDestWidgets.add(destWidget);
  }
  return myDestWidgets;
}
