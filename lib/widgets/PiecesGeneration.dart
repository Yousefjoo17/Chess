import 'package:chess/main.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:chess/widgets/GenerateDestWidgets.dart';
import 'package:chess/widgets/PieceWidget.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PiecesGeneration extends StatelessWidget {
  const PiecesGeneration({super.key});

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
      width: kBOARD_LENGTH,
      height: kBOARD_LENGTH,
      child: BlocBuilder<ManagerCubit, ManagerState>(
        builder: (context, state) {
          return Stack(
            children: [
              ...generatePieces(),
              if (selectedPiece != null)
                DestGeneratorWidget(pieceModel: selectedPiece!),
            ],
          );
        },
      ),
    );
  }
}
