import 'package:chess/constants.dart';
import 'package:flutter/material.dart';

class BiuldPiece extends StatelessWidget {
  const BiuldPiece({
    super.key,
    required this.piece,
    required this.x,
    required this.y,
  });

  final String piece;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: GestureDetector(
        onTap: () {},
        child: Image.asset(
          piece,
          width: kSQUARE_LENGTH,
          height: kSQUARE_LENGTH,
        ),
      ),
    );
  }
}
