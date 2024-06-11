import 'package:chess/main.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DestWidget extends StatelessWidget {
  const DestWidget(
      {super.key, required this.destModel, required this.pieceModel});
  final DestModel destModel;
  final PieceModel pieceModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: destModel.x!,
      top: destModel.y!,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              BlocProvider.of<ManagerCubit>(context)
                  .movePiece(pieceModel, destModel.x!, destModel.y!);
              //for panws only
              if (pieceModel.pieceName == PieceName.pawn &&
                  (destModel.y == 0 || destModel.y == 7 * kSQUARE_LENGTH)) {
                print("it should be promoted !");
                pawnWantToPromotre = pieceModel;
                BlocProvider.of<ManagerCubit>(context).offerPromotion();
              }
            },
            child: Container(
              width: kSQUARE_LENGTH,
              height: kSQUARE_LENGTH,
              color: Colors.transparent,
              child: const Center(
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
