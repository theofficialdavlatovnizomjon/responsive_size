import 'package:flutter/material.dart';
import 'init.dart';

extension ResponsiveSize on num {
  double get w => this * ResponsiveSizeConfig.widthFactor;

  double get h => this * ResponsiveSizeConfig.heightFactor;

  double get o => this * ResponsiveSizeConfig.arithmeticFactor;
}

extension GapExt on num {
  SizedBox get gapX => SizedBox(width: toDouble());

  SizedBox get gapY => SizedBox(height: toDouble());

  double sw(BuildContext context) => this * MediaQuery.sizeOf(context).width;

  double sh(BuildContext context) => this * MediaQuery.sizeOf(context).height;
}
