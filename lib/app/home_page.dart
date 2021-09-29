import 'package:flutter/material.dart';

import 'package:flutter_time_tracker/services/Auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSignOut;
  final AuthInterface auth;

  const HomePage({Key? key, required this.onSignOut, required this.auth})
      : super(key: key);

  Future<void> _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (error) {
      print(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: <Widget>[
          TextButton(
            onPressed: _signOut,
            child: const Text(
              "SIGN OUT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
