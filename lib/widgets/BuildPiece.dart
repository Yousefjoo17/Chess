import 'package:chess/constants.dart';
import 'package:chess/models/PieceType.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BiuldPiece extends StatefulWidget {
  BiuldPiece({
    super.key,
    required this.piece,
    required this.x,
    required this.y,
    required this.pieceType,
  });

  final String piece;
  double x;
  double y;
  final PieceType pieceType;

  @override
  State<BiuldPiece> createState() => _BiuldPieceState();
}

class _BiuldPieceState extends State<BiuldPiece> {
  double? t;
  bool clicled = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.x,
      top: t ?? widget.y,
      child: GestureDetector(
        onTap: () {
          setState(() {
            // widget.y -= kSQUARE_LENGTH * 1;
            clicled = !clicled;
          });
        },
        child: clicled
            ? Container(
                decoration: const BoxDecoration(color: Colors.green),
                child: Image.asset(
                  widget.piece,
                  width: kSQUARE_LENGTH,
                  height: kSQUARE_LENGTH,
                ),
              )
            : Image.asset(
                widget.piece,
                width: kSQUARE_LENGTH,
                height: kSQUARE_LENGTH,
              ),
      ),
    );
  }
}
