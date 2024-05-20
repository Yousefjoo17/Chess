import 'package:chess/constants.dart';
import 'package:chess/main.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PieceWidget extends StatefulWidget {
  PieceWidget({
    super.key,
    required this.pieceModel,
  });

  final PieceModel pieceModel;
  @override
  State<PieceWidget> createState() => _PieceWidgetState();
}

class _PieceWidgetState extends State<PieceWidget> {
  double? newX;
  double? newY;
  bool clicled = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      width: kBOARD_LENGTH,
      height: kBOARD_LENGTH,
      child: Stack(
        children: [
          Positioned(
            left: widget.pieceModel.x,
            top: widget.pieceModel.y,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  clicled = !clicled;
                  print(positions[widget.pieceModel.id]!.x);
                  print(positions[widget.pieceModel.id]!.y);
                  print(widget.pieceModel.pieceName.toString());
                });
              },
              child: clicled
                  ? Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      child: Image.asset(
                        widget.pieceModel.image!,
                        width: kSQUARE_LENGTH,
                        height: kSQUARE_LENGTH,
                      ),
                    )
                  : Image.asset(
                      widget.pieceModel.image!,
                      width: kSQUARE_LENGTH,
                      height: kSQUARE_LENGTH,
                    ),
            ),
          )
          //
        ],
      ),
    );
  }
}

List<Widget> select(PieceName pieceType, double x, double y) {
  List<Widget> destinations = [];
  switch (pieceType) {
    case PieceName.pawn:
      return destinations;
    default:
      return destinations;
  }
}
