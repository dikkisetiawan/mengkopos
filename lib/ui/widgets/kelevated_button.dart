import 'package:flutter/material.dart';

import '../theme.dart';

class KelevatedButton extends StatelessWidget {
  void Function() onPressed;
  final String title;

  KelevatedButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultCircular), // <-- Radius
          ),
        ),
      ),
    );
  }
}
