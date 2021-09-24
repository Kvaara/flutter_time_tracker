import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/widgets/custom_elevated_button.dart';

class ButtonWithImage extends CustomElevatedButton {
  ButtonWithImage({
    Key? key,
    required String assetName,
    required String text,
    Color? color,
    Color? textColor,
    VoidCallback? onPressed,
  }) : super(
          key: key,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0,
              ),
            ],
          ),
          buttonBackgroundColor: color,
          onPressed: onPressed,
        );
}
