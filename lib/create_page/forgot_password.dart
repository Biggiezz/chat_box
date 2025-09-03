import 'package:chatbox/assets/image.dart';
import 'package:chatbox/create_page/scanf_code_sms.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String _selectedMethod = "sms"; // mặc định chọn SMS

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF09101D),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 240,
                height: 190,
                child: Image.asset(ImageAssets.forGotPass),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Select which contact details should we use to reset your password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF212121),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // --- Chọn SMS ---
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedMethod = "sms";
                });
              },
              child: _buildOptionCard(
                title: "via SMS:",
                subtitle: "+1 111 ********99",
                imagePath: ImageAssets.sms,
                isSelected: _selectedMethod == "sms",
              ),
            ),
            const SizedBox(height: 24),

            // --- Chọn Email ---
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedMethod = "email";
                });
              },
              child: _buildOptionCard(
                title: "via Email:",
                subtitle: "mad****sefs@gmail.com",
                imagePath: ImageAssets.emailForGotPass ,
                isSelected: _selectedMethod == "email",
              ),
            ),

            const Spacer(),

            GestureDetector(
              onTap: () {
                // Chỉ tiếp tục nếu đã chọn phương thức
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScanfCodeSms()),
                );
              },
              child: _buildButtonContinue(),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required String title,
    required String subtitle,
    required String imagePath,
    required bool isSelected,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFF00CDBD) : const Color(0xFFEEEEEE),
          width: isSelected ? 3 : 1,
        ),
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
                color: const Color(0xFFA1FFFA),
              ),
              child: Image.asset(imagePath),
            ),
          ),
          SizedBox(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF757575),
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
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
    );
  }

  Widget _buildButtonContinue() {
    return Container(
      width: 380,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFF00CDBD),
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
    );
  }
}
