import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/app/sign_in/button_with_image.dart';
import 'package:flutter_time_tracker/app/sign_in/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  final void Function(User) onSignIn;

  const SignInPage({Key? key, required this.onSignIn}) : super(key: key);

  Future<void> _signInAnonymously() async {
    try {
      final userCredentials = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(userCredentials.user!);
    } catch (error) {
      print(error.toString());
    }
  }

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
          const SizedBox(height: 15),
          ButtonWithImage(
            assetName: "images/google-logo.png",
            text: "Sign in with Google",
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              print("lol");
            },
          ),
          const SizedBox(height: 8),
          ButtonWithImage(
            assetName: "images/facebook-logo.png",
            text: "Sign in with Facebook",
            color: const Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {
              print("lol");
            },
          ),
          const SizedBox(height: 8),
          SignInButton(
            text: "Sign in with email",
            color: Colors.teal.shade700,
            textColor: Colors.white,
            onPressed: () {
              print("lol");
            },
          ),
          const SizedBox(height: 8),
          const Text(
            "or",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          SignInButton(
            text: "Continue anonymously",
            color: Colors.lime.shade300,
            textColor: Colors.black,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
