import 'package:chess/func/initialize_Pieces.dart';
import 'package:chess/models/DestModel.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/viewModel/cubit/manager_cubit.dart';
import 'package:chess/views/MainView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

int pieceID = 0; // automatic Id of the piececs
Map<int, PieceModel> piecesInfo = {};
// any update of any piece must be documented here
PieceModel? selectedPiece; //the selected id
PieceModel? pawnWantToPromotre; //pawn in the last row
List<DestModel> allPiecesDest = [];
// all destinations positions to decide if the king is safe
bool fillAllPiecesDest = false;

bool wWin = false;
bool bWin = false;

bool wTurn = true;
void main() {
  initializePieces();
  runApp(const Chess());
}

class Chess extends StatelessWidget {
  const Chess({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ManagerCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainView(),
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 61, 70, 71)),
      ),
    );
  }
}
