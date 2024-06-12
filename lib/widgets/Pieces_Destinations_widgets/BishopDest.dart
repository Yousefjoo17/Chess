import 'package:chess/func/dests/get_bishop_dest.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/Pieces_Destinations_widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class BishopDest extends StatelessWidget {
  const BishopDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int i = 0; i < moveBishop(pieceModel).length; i++) ...[
          moveBishop(pieceModel)[i],
        ],
      ],
    );
  }
}
List<Widget> moveBishop(PieceModel pieceModel) {
  List<Widget> myDestWidgets = [];
  DestWidget? destWidget;

  List<DestModel> myListModels = getBishopDest(pieceModel);

  for (int i = 0; i < myListModels.length; i++) {
    destWidget = DestWidget(
      destModel: myListModels[i],
      pieceModel: pieceModel,
    );
    myDestWidgets.add(destWidget);
  }
  return myDestWidgets;
}
