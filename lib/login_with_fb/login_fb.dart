import 'package:flutter/material.dart';

class LoginFb extends StatefulWidget {
  const LoginFb({super.key});

  @override
  State<LoginFb> createState() => _LoginFbState();
}

class _LoginFbState extends State<LoginFb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Text("Login with fb",
      style: TextStyle(
        fontSize: 48,
      ),
      ),
    );
  }
}
