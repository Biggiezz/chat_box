import 'package:chatbox/assets/image.dart';
import 'package:chatbox/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

class LoginWithAccount extends StatefulWidget {
  const LoginWithAccount({super.key});

  @override
  State<LoginWithAccount> createState() => _LoginState();
}

class _LoginState extends State<LoginWithAccount> {
  get style async => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Positioned(
                      width: 203,
                      height: 160,
                      top: 112.25,
                      left: 112.5,

                      child: Image.asset(
                        ImageAssets.logo,
                        width: 203,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 40.25),
                    Text(
                      "Let's you in",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 48,
                      ),
                    ),
                    SizedBox(height: 40.25),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1, color: Color(0xFF00DECD)),
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, weight: 24, color: Colors.blue),
                          // Image.asset('asset/image/abc.png')
                          SizedBox(width: 12),
                          Text(
                            'Continue with Facebook',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1, color: Color(0xff00DECD)),
                      ),

                      alignment: Alignment.topLeft,

                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageAssets.logo_gg,
                              width: 45,
                              height: 20,
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Continue with Google',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1, color: Color(0xff00DECD)),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.apple),

                          Text(
                            'Continue with Apple',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,

                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 12),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    _buildOr(),
                    SizedBox(height: 24),


                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00CDBD),
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 18),
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
              ),
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
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOr() {
    return Row(
      children: [
        Expanded(child: Container(color: Color(0xFF00CDBD), height: 1)),
        SizedBox(width: 16),
        Text('or'),
        SizedBox(width: 16),
        Expanded(child: Container(color: Color(0xFF00CDBD), height: 1)),
      ],
    );
  }
}
// Widget tạo nút đăng nhập
Widget _buildLoginOption({
  required IconData icon,
  required String text,
  Color iconColor = Colors.blue,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(width: 1, color: const Color(0xff00DECD)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}