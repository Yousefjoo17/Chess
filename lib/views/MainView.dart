import 'package:chess/core/AssetsData.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/widgets/Board.dart';
import 'package:chess/widgets/PlayerWidget.dart';
import 'package:chess/widgets/RetryButton.dart';
import 'package:chess/widgets/showDiedPiecesWidget.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chess",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          PlayerWidget(
            playerName: "Player 2",
            image: AssetsData.player2,
            color: Color.fromARGB(104, 0, 174, 255),
          ),
          ShowDiedPieceWidget(pieceColor: PieceColor.white),
          Board(),
          ShowDiedPieceWidget(pieceColor: PieceColor.black),
          PlayerWidget(
            playerName: "Player 1",
            image: AssetsData.player1,
            color: Color.fromARGB(255, 191, 225, 241),
          ),
          RetryButton(),
        ],
      ),
    );
  }
}
