import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

import 'app/sign_in/sign_in.page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Tracker",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const SignInPage(),
    );
  }
}
