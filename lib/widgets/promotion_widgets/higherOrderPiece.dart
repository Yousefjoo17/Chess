import 'package:chess/constants.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HigherOrderPieceWidget extends StatelessWidget {
  const HigherOrderPieceWidget(
      {super.key,
      required this.image,
      required this.pawn,
      required this.pieceName});
  final String image;
  final PieceModel pawn;
  final PieceName pieceName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        child: Image.asset(
          image,
          width: kSQUARE_LENGTH,
        ),
        onTap: () {
          BlocProvider.of<ManagerCubit>(context)
              .promotePawn(image, pieceName, pawn);
        },
      ),
    );
  }
}
