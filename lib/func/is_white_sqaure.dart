
import 'package:chess/constants.dart';
import 'package:chess/models/DestModel.dart';

bool isWhiteSquare(DestModel destModel) {
  if ((destModel.x! ~/ kSQUARE_LENGTH).toInt().isEven &&
      (destModel.y! ~/ kSQUARE_LENGTH).toInt().isEven) {
    return true;
  }
  if ((destModel.x! ~/ kSQUARE_LENGTH).toInt().isOdd &&
      (destModel.y! ~/ kSQUARE_LENGTH).toInt().isOdd) {
    return true;
  }

  return false;
}
