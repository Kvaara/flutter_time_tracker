import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    Key? key,
    required String text,
    Color? color,
    Color? textColor,
    VoidCallback? onPressed,
  }) : super(
          key: key,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
          buttonBackgroundColor: color,
          onPressed: onPressed,
        );
}
