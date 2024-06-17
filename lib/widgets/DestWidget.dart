import 'package:chess/func/can_move_and_save_king.dart';
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
    return canMoveAndSaveKing(pieceModel, destModel)
        ? Positioned(
            left: destModel.x!,
            top: destModel.y!,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    //move piece
                    BlocProvider.of<ManagerCubit>(context)
                        .movePiece(pieceModel, destModel.x!, destModel.y!);
                  },
                  child: Container(
                    width: kSQUARE_LENGTH,
                    height: kSQUARE_LENGTH,
                    color: Colors.transparent,
                    child: const Center(
                      child: CircleAvatar(
                        radius: kSQUARE_LENGTH / 10,
                        backgroundColor: Color.fromARGB(255, 193, 199, 193),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Positioned(
            // I should have added positiond from the beginnings
            left: destModel.x!,
            top: destModel.y!,
            child: const SizedBox(
              width: kSQUARE_LENGTH,
              height: kSQUARE_LENGTH,
            ),
          );
  }
}
