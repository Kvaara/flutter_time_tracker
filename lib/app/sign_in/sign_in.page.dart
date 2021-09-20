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
        body: _buildContent());
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.black,
            child: const SizedBox(
              height: 50,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.red,
            child: const SizedBox(
              height: 50,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.orange,
            child: const SizedBox(
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
