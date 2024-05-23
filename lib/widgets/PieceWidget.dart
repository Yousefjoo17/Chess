import 'package:chess/constants.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/widgets/GenerateDestWidgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PieceWidget extends StatefulWidget {
  PieceWidget({
    super.key,
    required this.pieceModel,
  });
  PieceModel pieceModel;
  @override
  State<PieceWidget> createState() => _PieceWidgetState();
}

class _PieceWidgetState extends State<PieceWidget> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: widget.pieceModel.x,
          top: widget.pieceModel.y,
          child: widget.pieceModel.live!
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked = !clicked;
                    });
                  },
                  child: clicked
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
                )
              : const SizedBox(
                  width: kSQUARE_LENGTH,
                  height: kSQUARE_LENGTH,
                ),
        ),
        if (clicked) DestGeneratorWidget(pieceModel: widget.pieceModel),
      ],
    );
  }
}
