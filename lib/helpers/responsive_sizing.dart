import 'package:flutter/material.dart';

double responsiveSizing(
  BuildContext context, 
  double portraitSize, 
  double landscapeSize
  ) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portraitSize;
    }
    return landscapeSize;
}

responsiveOptions(
  BuildContext context, 
  portraitSize, 
  landscapeSize
  ) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return portraitSize;
    }
    return landscapeSize;
}