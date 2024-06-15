import 'package:chess/constants.dart';
import 'package:chess/main.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowDiedPieceWidget extends StatelessWidget {
  const ShowDiedPieceWidget({super.key, required this.pieceColor});
  final PieceColor pieceColor;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerCubit, ManagerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var img in getDiedPieces(pieceColor)) ...[
              img,
            ]
          ],
        );
      },
    );
  }
}

List<Widget> getDiedPieces(PieceColor pieceColor) {
  List<Widget> images = [];
  for (var i = 0; i < piecesInfo.length; i++) {
    if (piecesInfo[i]!.pieceColor == pieceColor && !piecesInfo[i]!.live!) {
      images.add(Image.asset(
        piecesInfo[i]!.image!,
        width: kSQUARE_LENGTH / 3,
      ));
    }
  }
  if (images.isEmpty) {
    images.add(const SizedBox(
      width: kSQUARE_LENGTH / 3,
      height: kSQUARE_LENGTH / 3,
    ));
  }
  return images;
}
