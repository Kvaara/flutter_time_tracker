import 'package:flutter/material.dart';

class EmailSignInPage extends StatelessWidget {
  const EmailSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Email sign in"),
        ),
        elevation: 3.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget _buildContent() {
    return Container();
  }
}
