import 'package:chess/constants.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
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
        //righ down
        for (int i = 0; i < moveBishopRightDown(pieceModel).length; i++) ...[
          moveBishopRightDown(pieceModel)[i],
        ],
        //left down
        for (int i = 0; i < moveBishopLeftDown(pieceModel).length; i++) ...[
          moveBishopLeftDown(pieceModel)[i],
        ],
        // right up
        for (int i = 0; i < moveBishopRightUp(pieceModel).length; i++) ...[
          moveBishopRightUp(pieceModel)[i],
        ],
        // left up
        for (int i = 0; i < moveBishopLeftUp(pieceModel).length; i++) ...[
          moveBishopLeftUp(pieceModel)[i],
        ],
      ],
    );
  }
}

/***********************right down**********************/
List<Widget> moveBishopRightDown(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel = isPieceFound(
        pieceModel.x! + i * kSQUARE_LENGTH, pieceModel.y! + i * kSQUARE_LENGTH);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! + i * kSQUARE_LENGTH,
        y: pieceModel.y! + i * kSQUARE_LENGTH,
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

/************************left down*******************/
List<Widget> moveBishopLeftDown(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel = isPieceFound(pieceModel.x! - i * kSQUARE_LENGTH,
        pieceModel.y! + i * kSQUARE_LENGTH);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! - i * kSQUARE_LENGTH,
        y: pieceModel.y! + i * kSQUARE_LENGTH,
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

/************************Right up*******************/
List<Widget> moveBishopRightUp(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel = isPieceFound(
        pieceModel.x! + i * kSQUARE_LENGTH, pieceModel.y! - i * kSQUARE_LENGTH);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! + i * kSQUARE_LENGTH,
        y: pieceModel.y! - i * kSQUARE_LENGTH,
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

/************************left up*******************/
List<Widget> moveBishopLeftUp(PieceModel pieceModel) {
  List<Widget> myDest = [];
  PieceModel? foundPieceModel;
  DestWidget? destWidget;

  for (int i = 1; i < 8; i++) {
    foundPieceModel = isPieceFound(
        pieceModel.x! - i * kSQUARE_LENGTH, pieceModel.y! - i * kSQUARE_LENGTH);
    destWidget = DestWidget(
      destModel: DestModel(
        x: pieceModel.x! - i * kSQUARE_LENGTH,
        y: pieceModel.y! - i * kSQUARE_LENGTH,
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
