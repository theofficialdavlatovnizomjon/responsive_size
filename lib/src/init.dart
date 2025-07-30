import 'package:flutter/material.dart';

class ResponsiveSizeConfig {
  static double _heightFactor = 1;
  static double _widthFactor = 1;
  static double _arithmeticFactor = 1;

  static void init(BuildContext context, {required int designHeight, required int designWidth}) {
    final size = MediaQuery.of(context).size;
    _heightFactor = size.height / designHeight;
    _widthFactor = size.width / designWidth;
    _arithmeticFactor = (_heightFactor + _widthFactor) / 2;
  }

  static double get heightFactor => _heightFactor;

  static double get widthFactor => _widthFactor;

  static double get arithmeticFactor => _arithmeticFactor;
}
