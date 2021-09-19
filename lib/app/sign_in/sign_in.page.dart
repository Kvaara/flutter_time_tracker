import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            Container(
                color: Colors.black,
                child: SizedBox(
                  width: 50,
                  height: 50,
                ))
          ],
        ));
  }
}
