import 'package:chess/constants.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class PieceWidget extends StatelessWidget {
  PieceWidget({
    super.key,
    required this.pieceModel,
  });
  PieceModel pieceModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: pieceModel.x,
          top: pieceModel.y,
          child: pieceModel.live!
              ? GestureDetector(
                  onTap: () {
                    BlocProvider.of<ManagerCubit>(context)
                        .selectPiece(pieceModel);
                  },
                  child: pieceModel.selected!
                      ? Container(
                          decoration: const BoxDecoration(color: Colors.green),
                          child: Image.asset(
                            pieceModel.image!,
                            width: kSQUARE_LENGTH,
                            height: kSQUARE_LENGTH,
                          ),
                        )
                      : Image.asset(
                          pieceModel.image!,
                          width: kSQUARE_LENGTH,
                          height: kSQUARE_LENGTH,
                        ),
                )
              : const SizedBox(
                  width: kSQUARE_LENGTH,
                  height: kSQUARE_LENGTH,
                ),
        ),
      ],
    );
  }
}
