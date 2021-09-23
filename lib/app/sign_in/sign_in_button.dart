import 'package:flutter/cupertino.dart';
import 'package:flutter_time_tracker/widgets/elevated_button.custom.dart';

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
            ),
          ),
          buttonBackgroundColor: color,
          onPressed: onPressed,
        );
}
