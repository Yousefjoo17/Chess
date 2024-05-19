import 'package:chess/core/AssetsData.dart';
import 'package:chess/widgets/BuildPiece.dart';
import 'package:flutter/material.dart';
import 'package:chess/constants.dart'; // Ensure kSQUARE_LENGTH is available

class PiecesPlacement extends StatelessWidget {
  const PiecesPlacement({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: SizedBox(
        width: kBOARD_LENGTH,
        height: kBOARD_LENGTH,
        child: Stack(
          children: [
            /************************White Pieces**************************/
            BiuldPiece(
                piece: AssetsData.whiteRook,
                x: 0,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteKnight,
                x: kSQUARE_LENGTH,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteBishop,
                x: kSQUARE_LENGTH * 2,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteQueen,
                x: kSQUARE_LENGTH * 3,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteKing,
                x: kSQUARE_LENGTH * 4,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteBishop,
                x: kSQUARE_LENGTH * 5,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteKnight,
                x: kSQUARE_LENGTH * 6,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.whiteRook,
                x: kSQUARE_LENGTH * 7,
                y: kBOARD_LENGTH - kSQUARE_LENGTH),
            ////////White Pawns/////////
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: 0,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 2,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 3,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 4,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 5,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 6,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),
            BiuldPiece(
                piece: AssetsData.whitePawn,
                x: kSQUARE_LENGTH * 7,
                y: kBOARD_LENGTH - kSQUARE_LENGTH * 2),

            /*******************************************************************************************/
            /*******************************************************************************************/
            /************************************Black Pieces******************************************/

            BiuldPiece(piece: AssetsData.blackRook, x: 0, y: 0),
            BiuldPiece(piece: AssetsData.blackKnight, x: kSQUARE_LENGTH, y: 0),
            BiuldPiece(
                piece: AssetsData.blackBishop, x: kSQUARE_LENGTH * 2, y: 0),
            BiuldPiece(
                piece: AssetsData.blackQueen, x: kSQUARE_LENGTH * 3, y: 0),
            BiuldPiece(
                piece: AssetsData.blackKing, x: kSQUARE_LENGTH * 4, y: 0),
            BiuldPiece(
                piece: AssetsData.blackBishop, x: kSQUARE_LENGTH * 5, y: 0),
            BiuldPiece(
                piece: AssetsData.blackKnight, x: kSQUARE_LENGTH * 6, y: 0),
            BiuldPiece(
                piece: AssetsData.blackRook, x: kSQUARE_LENGTH * 7, y: 0),
            ////////White Pawns/////////
            BiuldPiece(piece: AssetsData.blackPawn, x: 0, y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 2,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 3,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 4,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 5,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 6,
                y: kSQUARE_LENGTH),
            BiuldPiece(
                piece: AssetsData.blackPawn,
                x: kSQUARE_LENGTH * 7,
                y: kSQUARE_LENGTH),
          ],
        ),
      ),
    );
  }
}
