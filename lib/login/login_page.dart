import 'package:chatbox/assets/image.dart';
import 'package:chatbox/create_page/login_with_account.dart';
import 'package:chatbox/login_with_apple/login_apple.dart';
import 'package:chatbox/login_with_gg/login_gg.dart';
import 'package:chatbox/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

import '../login_with_fb/login_fb.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(88, 60, 88, 40),
                    child: Image.asset(
                      ImageAssets.logo,
                      width: 203,
                      height: 160,
                    ),
                  ),

                  Text(
                    "Let's you in",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 48),
                  ),
                  
                  SizedBox(height: 40.25),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFb()));
                    },
                    child: _buildSocialItemButton(
                      image: ImageAssets.logo_Fb,
                      text: 'Continue with Facebook',
                    ),
                  ),

                  SizedBox(height: 18),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginGg()));
                    },
                    child:  _buildSocialItemButton(
                      image: ImageAssets.logo_Gg,
                      text: 'Continue with Google',
                    ),
                  ),

                  SizedBox(height: 18),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginApple()));
                    },
                    child: _buildSocialItemButton(
                      image: ImageAssets.logo_Apple,
                      text: 'Continue with Apple',
                    ),
                  ),


                  SizedBox(height: 46),
                  _buildBarOr(),
                  SizedBox(height: 46),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWithAccount(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00CDBD),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Text(
                      'Sign in with password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",

                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9E9E9E),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      "Sign up?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF00CDBD),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBarOr() {
    return Row(
      children: [
        Expanded(child: Container(color: Color(0xFF00CDBD), height: 1)),
        SizedBox(width: 16),
        Text(
          'or',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF616161),
          ),
        ),
        SizedBox(width: 16),
        Expanded(child: Container(color: Color(0xFF00CDBD), height: 1)),
      ],
    );
  }
}

Widget _buildSocialItemButton({String? image, String? text}) {
  return Container(

    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFF00CDBD), width: 1),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image ?? ''),

        SizedBox(width: 12),
        Text(text ?? ''),
      ],
    ),
  );
}
