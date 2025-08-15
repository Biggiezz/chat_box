import 'package:flutter/material.dart';

class LoginApple extends StatefulWidget {
  const LoginApple({super.key});

  @override
  State<LoginApple> createState() => _LoginAppleState();
}

class _LoginAppleState extends State<LoginApple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Text("Login with Apple",
            style: TextStyle(
              fontSize: 48
            ),
              ),
        ],
      ),
    );
  }
}
