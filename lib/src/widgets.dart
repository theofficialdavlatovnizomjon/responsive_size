import 'package:flutter/widgets.dart';

class ResponsiveBox extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const ResponsiveBox({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
