import 'package:flutter/material.dart';

extension MediaQuerySizeExtension on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  double get screenShortestSide => screenSize.shortestSide;

  double get screenLongestSide => screenSize.longestSide;
}
