import 'package:chess/models/PieceModel.dart';
import 'package:chess/views/MainView.dart';
import 'package:chess/models/Pair.dart';
import 'package:flutter/material.dart';

int pieceID = 0;
Map<int, Pair> positions = {};
bool clickedPiece = false;
PieceModel? selectedPiece;
void main() {
  runApp(const Chess());
}

class Chess extends StatelessWidget {
  const Chess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainView(),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 61, 70, 71)),
    );
  }
}
