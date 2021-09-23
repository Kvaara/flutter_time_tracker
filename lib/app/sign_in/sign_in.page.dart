import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/widgets/elevated_button.custom.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("lol"),
        ),
        elevation: 3.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget _buildContent() {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomElevatedButton(
            child: const Text(
              "Sign in with Google",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            buttonBackgroundColor: Colors.white,
            onPressed: () {
              print("lol");
            },
          ),
        ],
      ),
    );
  }
}
