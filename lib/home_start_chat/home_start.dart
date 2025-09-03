import 'package:flutter/material.dart';

class HomeStart extends StatefulWidget {
  const HomeStart({super.key});

  @override
  State<HomeStart> createState() => _HomeStartState();
}

class _HomeStartState extends State<HomeStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(


        title: Text("Bobo"),
        backgroundColor: Colors.white,

      ),
    );
  }
}
