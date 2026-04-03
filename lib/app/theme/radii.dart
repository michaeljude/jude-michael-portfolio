import 'package:flutter/widgets.dart';

abstract final class AppRadii {
  static const double r2 = 2;
  static const double r4 = 4;
  static const double r8 = 8;
  static const double r12 = 12;
  static const double r16 = 16;
  static const double rFull = 999;

  // ROUND_FOUR from Stitch maps well to medium rounding
  // for cards and buttons in this portfolio.
  static const BorderRadius card = BorderRadius.all(Radius.circular(r16));
  static const BorderRadius button = BorderRadius.all(Radius.circular(r12));
  static const BorderRadius chip = BorderRadius.all(Radius.circular(rFull));
}

