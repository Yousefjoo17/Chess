import 'package:bloc/bloc.dart';
import 'package:chess/func/initialize_Pieces.dart';
import 'package:chess/func/is_piece_found_in_pos.dart';
import 'package:chess/main.dart';
import 'package:chess/models/PieceModel.dart';
import 'package:chess/models/PieceType.dart';
import 'package:meta/meta.dart';

part 'manager_state.dart';

class ManagerCubit extends Cubit<ManagerState> {
  ManagerCubit() : super(ManagerInitial());

  void selectPiece(PieceModel pieceModel) {
    if (pieceModel.selected!) {
      piecesInfo[pieceModel.id]!.selected = false;
      selectedPiece = null;
    } else {
      for (int i = 0; i < piecesInfo.length; i++) {
        piecesInfo[i]!.selected = false;
      }
      piecesInfo[pieceModel.id]!.selected = true;
      selectedPiece = pieceModel;
    }
    emit(ManagerReBuildPieces());
  }

  void movePiece(PieceModel pieceModel, double x, double y) {
    PieceModel? foundPieceModel;
    foundPieceModel = PieceFound(x, y);
    piecesInfo[pieceModel.id]!.selected = false;
    selectedPiece = null;
    pieceModel.movedBefore = true;
    piecesInfo[pieceModel.id]!.x = x;
    piecesInfo[pieceModel.id]!.y = y;
    if (foundPieceModel != null) {
      piecesInfo[foundPieceModel.id]!.live = false;
    }
    wTurn = !wTurn;
    emit(ManagerReBuildPieces());
  }

  void offerPromotion() {
    emit(ManagerReBuildPieces());
  }

  void promotePawn(String image, PieceName pieceName, PieceModel pawn) {
    piecesInfo[pawn.id]!.image = image;
    piecesInfo[pawn.id]!.pieceName = pieceName;
    pawnWantToPromotre = null;
    emit(ManagerReBuildPieces());
  }

  void retry() {
    piecesInfo = {};
    pieceID = 0;
    selectedPiece = null;
    pawnWantToPromotre = null;
    allPiecesDest = [];
    fillAllPiecesDest = false;
    wWin = false;
    bWin = false;
    wTurn = true;
    initializePieces();
    emit(ManagerReBuildPieces());
  }
}
