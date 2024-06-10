import 'package:chess/constants.dart';
import 'package:chess/core/AssetsData.dart';
import 'package:chess/main.dart';
import 'package:chess/models/PieceColor.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';

void initliaePiecesOneSide(String color, double yOffset) {
  List<String> pieceOrder;
  List<PieceName> piecesNames = [
    PieceName.rook,
    PieceName.knight,
    PieceName.bishop,
    PieceName.queen,
    PieceName.king,
    PieceName.bishop,
    PieceName.knight,
    PieceName.rook,
  ];

  if (color == "white") {
    pieceOrder = [
      AssetsData.whiteRook,
      AssetsData.whiteKnight,
      AssetsData.whiteBishop,
      AssetsData.whiteQueen,
      AssetsData.whiteKing,
      AssetsData.whiteBishop,
      AssetsData.whiteKnight,
      AssetsData.whiteRook,
    ];
  } else {
    pieceOrder = [
      AssetsData.blackRook,
      AssetsData.blackKnight,
      AssetsData.blackBishop,
      AssetsData.blackQueen,
      AssetsData.blackKing,
      AssetsData.blackBishop,
      AssetsData.blackKnight,
      AssetsData.blackRook,
    ];
  }

  for (int i = 0; i < 8; i++) {
    // First row of pieces
    PieceModel mainPiece = PieceModel(
      id: pieceID++,
      x: i * kSQUARE_LENGTH.toDouble(),
      y: yOffset,
      image: pieceOrder[i],
      movedBefore: false,
      pieceColor: color == "white" ? PieceColor.white : PieceColor.black,
      pieceName: piecesNames[i],
      live: true,
    );
    piecesInfo[mainPiece.id!] = mainPiece;

    // Pawns row
    PieceModel pawnPiece = PieceModel(
      id: pieceID++,
      x: i * kSQUARE_LENGTH.toDouble(),
      y: color == "white" ? yOffset - kSQUARE_LENGTH : kSQUARE_LENGTH,
      image: color == "white" ? AssetsData.whitePawn : AssetsData.blackPawn,
      movedBefore: false,
      pieceColor: color == "white" ? PieceColor.white : PieceColor.black,
      pieceName: PieceName.pawn,
      live: true,
    );
    piecesInfo[pawnPiece.id!] = pawnPiece;
  }
}

void initializePieces() {
  initliaePiecesOneSide("white", kBOARD_LENGTH - kSQUARE_LENGTH);
  initliaePiecesOneSide("black", 0);
}
