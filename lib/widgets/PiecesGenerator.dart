import 'package:chess/func/win.dart';
import 'package:chess/main.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:chess/widgets/GameOverWidget.dart';
import 'package:chess/widgets/PieceWidget.dart';
import 'package:chess/widgets/PieceDestWidgets.dart';
import 'package:chess/widgets/PromotionWidget.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PiecesGenerator extends StatelessWidget {
  const PiecesGenerator({super.key});

  List<Widget> generatePieces() {
    List<Widget> pieces = [];
    for (int i = 0; i < piecesInfo.length; i++) {
      pieces.add(PieceWidget(pieceModel: piecesInfo[i]!));
    }
    return pieces;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kSQUARE_LENGTH*8,
      height: kSQUARE_LENGTH*8,
      child: BlocBuilder<ManagerCubit, ManagerState>(
        builder: (context, state) {
          return Stack(
            children: [
              ...generatePieces(),
              if (selectedPiece != null)
                PieceDestWidgets(pieceModel: selectedPiece!),
              if (pawnWantToPromotre != null)
                PromotionWidget(pawn: pawnWantToPromotre!),
              if (whiteWin() || blackWin()) const GameOverWidget(),
            ],
          );
        },
      ),
    );
  }
}
