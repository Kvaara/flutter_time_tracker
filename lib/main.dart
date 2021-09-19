import "package:flutter/material.dart";

import 'app/sign_in/sign_in.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Time Tracker",
        theme: ThemeData(primarySwatch: Colors.red),
        home: SignInPage());
  }
}
