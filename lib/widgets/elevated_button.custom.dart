import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color? buttonBackgroundColor;
  final double? buttonRadius;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.child,
    this.buttonBackgroundColor,
    this.buttonRadius,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          buttonBackgroundColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius ?? 6),
          ),
        ),
      ),
    );
  }
}
