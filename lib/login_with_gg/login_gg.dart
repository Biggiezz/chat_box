import 'package:flutter/material.dart';

class LoginGg extends StatefulWidget {
  const LoginGg({super.key});

  @override
  State<LoginGg> createState() => _LoginWithGgState();
}

class _LoginWithGgState extends State<LoginGg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child:
          Text("Login with Google",style:
            TextStyle(
              fontSize: 48,
            ),
          ),
      ),

    );
  }
}
