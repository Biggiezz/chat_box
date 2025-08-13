import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  get child => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
        body: SafeArea(
          child: Row(

            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,

                    height: 116,
                    width: 380,
                    child: Text(
                      'Sign in with password',

                      style: TextStyle(
                        color: Color(0xFF212121),

                        fontSize: 48,

                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 16,)

                  // Nút "Sign in with password"


            ],
          ),


    ],
    ),
        ),
    );
  }
}
