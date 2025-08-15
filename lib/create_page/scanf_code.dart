import 'package:chatbox/create_page/create_new_pass_word.dart';
import 'package:flutter/material.dart';

class ScanfCode extends StatefulWidget {
  const ScanfCode({super.key});

  @override
  State<ScanfCode> createState() => _ScanfCodeState();
}

class _ScanfCodeState extends State<ScanfCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            "Forgot Password",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF212121),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          const SizedBox(height: 236),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Code has been send to +1 111 ****99",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF212121),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          //Ô nhập mã code
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildEnterCode(),
              _buildEnterCode(),
              _buildEnterCode(),
              _buildEnterCode(),
            ],
          ),
          SizedBox(height: 60),
          Text(
            "Resend Code",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF212121),
            ),
          ),
          SizedBox(height: 236),
          //Nút ấn Verify
          GestureDetector(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPass()));

            },
             child:  _buildButton(),

          )

        ],
      ),
    );
  }
}

Widget _buildEnterCode() {
  return Container(
    width: 83,
    height: 61,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade200),
      color: Colors.grey.shade50,
    ),
  );
}

Widget _buildButton() {
  return Container(
    height: 55,
    width: 380,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xFF11B1A5),
    ),
    child: Center(
      child: Text(
        "Verify",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFFFFFFFF),
        ),
      ),
    ),
  );
}
