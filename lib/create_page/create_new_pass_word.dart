import 'package:chatbox/assets/image.dart';
import 'package:flutter/material.dart';

class CreateNewPass extends StatefulWidget {
  const CreateNewPass({super.key});

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {
  bool _rememberMe = false;
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Create New Password",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color(0xFF212121),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 91),
            child: SizedBox(
              width: 240,
              height: 190,
              child: Image.asset(ImageAssets.forGotPass),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create Your New Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF212121),
                ),
              ),
            ),
          ),

          _buildInputPass(),
          const SizedBox(height: 24),
          _buildInputPass(),
          const SizedBox(height: 20),

          SizedBox(
            width: 380,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  side: const BorderSide(width: 2.5, color: Color(0XFF00CDBD)),
                  activeColor: const Color(0XFF00CDBD),
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(24, 91, 24, 41),
            child: Container(
              width: double.infinity,
              height: 58,
              decoration: BoxDecoration(
                color: const Color(0xFF00CDBD),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputPass() {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50,
      ),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: !_showPass,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.lock, color: Color(0xFF212121), size: 19),
          suffixIcon: IconButton(
            icon: Icon(
              _showPass ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFF212121),
            ),
            onPressed: () {
              setState(() {
                _showPass = !_showPass;
              });
            },
          ),
        ),
      ),
    );
  }
}
