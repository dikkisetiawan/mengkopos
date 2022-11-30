import 'package:flutter/material.dart';

import '../theme.dart';

class KcontainerWidget extends StatelessWidget {
  Widget child;

  KcontainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin),
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
