import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/Pieces_Destinations_widgets/DestWidget.dart';
import 'package:flutter/material.dart';

class RookDest extends StatelessWidget {
  const RookDest({super.key, required this.pieceModel});
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //right
        for (int i = 0; i < moveRookRight(pieceModel).length; i++) ...[
          moveRookRight(pieceModel)[i],
        ],
        //down
        for (int i = 0; i < moveRookDown(pieceModel).length; i++) ...[
          moveRookDown(pieceModel)[i],
        ],
        //left
        for (int i = 0; i < moveRookLeft(pieceModel).length; i++) ...[
          moveRookLeft(pieceModel)[i],
        ],
        //up
        for (int i = 0; i < moveRookUp(pieceModel).length; i++) ...[
          moveRookUp(pieceModel)[i],
        ],
      ],
    );
  }
}

/***********************right**********************/
List<Widget> moveRookRight(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x! + kSQUARE_LENGTH * i, pieceModel.y!);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! + kSQUARE_LENGTH * i,
        y: pieceModel.y,
      ),
      pieceModel: pieceModel,
    );

    if (foundPieceModel == null) {
      myDest.add(destWidget);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDest.add(destWidget);
        break;
      }
    }
  }
  return myDest;
}

/************************down*******************/
List<Widget> moveRookDown(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x!, pieceModel.y! + kSQUARE_LENGTH * i);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x,
        y: pieceModel.y! + kSQUARE_LENGTH * i,
      ),
      pieceModel: pieceModel,
    );

    if (foundPieceModel == null) {
      myDest.add(destWidget);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDest.add(destWidget);
        break;
      }
    }
  }
  return myDest;
}

/************************left*******************/
List<Widget> moveRookLeft(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x! - kSQUARE_LENGTH * i, pieceModel.y!);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! - kSQUARE_LENGTH * i,
        y: pieceModel.y!,
      ),
      pieceModel: pieceModel,
    );

    if (foundPieceModel == null) {
      myDest.add(destWidget);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDest.add(destWidget);
        break;
      }
    }
  }
  return myDest;
}

/************************up*******************/
List<Widget> moveRookUp(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel =
        isPieceFound(pieceModel.x!, pieceModel.y! - kSQUARE_LENGTH * i);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x!,
        y: pieceModel.y! - kSQUARE_LENGTH * i,
      ),
      pieceModel: pieceModel,
    );

    if (foundPieceModel == null) {
      myDest.add(destWidget);
    } else {
      if (foundPieceModel.pieceColor == pieceModel.pieceColor) {
        break;
      } else {
        myDest.add(destWidget);
        break;
      }
    }
  }
  return myDest;
}
