import 'package:chess/func/get_piece_dest.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class PieceDestWidgets extends StatelessWidget {
  const PieceDestWidgets({super.key, required this.pieceModel});
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    List<Widget> dests = movePiece(pieceModel);
    return Stack(
      children: [
        for (int i = 0; i < dests.length; i++) ...[dests[i]]
      ],
    );
  }
}

List<Widget> movePiece(PieceModel pieceModel) {
  List<Widget> myDestWidgets = [];
  DestWidget? destWidget;

  List<DestModel> myListModels = getPieceDest(pieceModel);

  for (int i = 0; i < myListModels.length; i++) {
    destWidget = DestWidget(
      destModel: myListModels[i],
      pieceModel: pieceModel,
    );
    myDestWidgets.add(destWidget);
  }
  return myDestWidgets;
}
