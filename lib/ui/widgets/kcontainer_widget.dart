import 'package:flutter/material.dart';

import '../theme.dart';

class KcontainerWidget extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  KcontainerWidget(
      {Key? key, this.margin, required this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          border: Border.all(
            color: lineColor,
            width: 1,
          )),
      child: child,
    );
  }
}
