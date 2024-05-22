import 'package:chess/func/destGenerators.dart';
import 'package:flutter/material.dart';
import 'package:chess/models/PieceModel.dart';

class GenerateDestWidgets extends StatelessWidget {
  const GenerateDestWidgets({super.key, required this.pieceModel});
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...destinationsGenerator(pieceModel),
      ],
    );
  }
}
