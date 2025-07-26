import 'package:flutter/material.dart';

class ResponsiveSizeConfig {
  static double _heightFactor = 1;
  static double _widthFactor = 1;
  static double _arithmeticFactor = 1;

  static int _defaultHeight = 812;
  static int _defaultWidth = 375;

  static void init(
    BuildContext context, {
    int designHeight = 812,
    int designWidth = 375,
  }) {
    final size = MediaQuery.of(context).size;
    _defaultHeight = designHeight;
    _defaultWidth = designWidth;
    _heightFactor = size.height / _defaultHeight;
    _widthFactor = size.width / _defaultWidth;
    _arithmeticFactor = (_heightFactor + _widthFactor) / 2;
  }

  static double get heightFactor => _heightFactor;

  static double get widthFactor => _widthFactor;

  static double get arithmeticFactor => _arithmeticFactor;
}
