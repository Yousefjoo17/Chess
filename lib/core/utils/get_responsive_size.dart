import 'package:chess/constants.dart';
import 'package:flutter/material.dart';

double getResponisveSize(BuildContext context, {required double size}) {
  double scaleFactor = getScaleFactor(context);
  double resPonsiveSize = size * scaleFactor;
  double lowerLimit = size * 0.1;
  double upperLimit = size * 1.2;
  return resPonsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < mobTabBreakPoint) {
    return width / 400;
  } else if (width < tabDeskBreakPoint) {
    return width / 700;
  } else {
    return width / 1000;
  }
}