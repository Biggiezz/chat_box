import 'package:chatbox/assets/image.dart';
import 'package:chatbox/create_page/scanf_code.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: SizedBox(
          width: 380,
          height: 29,
          child: Text(
            "Forgot Password",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF09101D),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 240,
                height: 190,
                child: Image.asset(ImageAssets.forGotPass),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,

              child: Column(
                children: [
                  Text(
                    "Select which contact details should we use to reset your password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF212121),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFF00CDBD), width: 3),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 24, 20, 24),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF75ECE5FF),
                            ),
                            child: Image.asset(ImageAssets.sms),
                          ),
                        ),
                        SizedBox(height: 24),
                        SizedBox(
                          width: 232,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "via SMS:",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF757575),
                                ),
                              ),
                              Text(
                                "+1 111 ********99",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFFEEEEEE), width: 1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 24, 20, 24),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF75ECE5FF),
                            ),
                            child: Image.asset(ImageAssets.sms),
                          ),
                        ),
                        SizedBox(height: 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "via Email:",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF757575),
                              ),
                            ),
                            Text(
                              "mad****sefs@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 53),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScanfCode()),
                );
              },
              child: _buildButtonContinue(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildButtonContinue() {
  return Container(
    width: 380,
    height: 58,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xFF00CDBD),
    ),
    child: Center(
      child: Text(
        "Continue",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFFFF),
        ),
      ),
    ),
  );
}
