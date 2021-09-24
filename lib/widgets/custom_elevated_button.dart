import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color? buttonBackgroundColor;
  final double buttonRadius;
  final double height;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.child,
    this.buttonBackgroundColor,
    this.buttonRadius = 6,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            buttonBackgroundColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
          ),
        ),
      ),
    );
  }
}
