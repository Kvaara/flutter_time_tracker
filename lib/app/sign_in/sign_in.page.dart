import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/app/sign_in/button_with_image.dart';
import 'package:flutter_time_tracker/app/sign_in/email_sign_in_page.dart';
import 'package:flutter_time_tracker/app/sign_in/sign_in_button.dart';
import 'package:flutter_time_tracker/services/Auth.dart';

class SignInPage extends StatelessWidget {
  final AuthInterface auth;

  const SignInPage({Key? key, required this.auth}) : super(key: key);

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      await auth.signInWithFacebook();
    } catch (error) {
      print(error.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  Future<void> _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
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
      body: _buildContent(context),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget _buildContent(BuildContext context) {
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
            onPressed: _signInWithGoogle,
          ),
          const SizedBox(height: 8),
          ButtonWithImage(
            assetName: "images/facebook-logo.png",
            text: "Sign in with Facebook",
            color: const Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: _signInWithFacebook,
          ),
          const SizedBox(height: 8),
          SignInButton(
            text: "Sign in with email",
            color: Colors.teal.shade700,
            textColor: Colors.white,
            onPressed: () => _signInWithEmail(context),
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
