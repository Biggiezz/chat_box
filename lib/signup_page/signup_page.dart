import 'package:chatbox/assets/image.dart';
import 'package:chatbox/create_page/login_with_account.dart';
import 'package:chatbox/src/blocs/signup_block.dart';
import 'package:chatbox/welcome/home_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  LoginBloc bloc = LoginBloc();
  bool _showPass = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() => setState(() {}));
    _passwordFocus.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24,0,24,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Create your Account',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 59),

              // Email
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  focusNode: _emailFocus,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                   // filled: true,
                    fillColor: _emailFocus.hasFocus
                        ? Color(0xff00CDBD)
                        : Color(0xffFAFAFA),
                    hintText: 'Nhập email của bạn',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.mail, color: Color(0XFF9E9E9E)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 24),

              // Password
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  focusNode: _passwordFocus,
                  controller: _passwordController,
                  obscureText: !_showPass,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  //  filled: true,
                    fillColor: _passwordFocus.hasFocus
                        ? Color(0xff00CDBD)
                        : Color(0xffFAFAFA),
                    hintText: 'Nhập mật khẩu',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPass ? Icons.visibility : Icons.visibility_off,

                      //   color: _passwordFocus.hasFocus
                      //   //    ? Color(0xff00CDBD)
                      //     //  : Color(0xff00CDBD),
                      //
                        ),
                      onPressed: () {
                        setState(() {
                          _showPass = !_showPass;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Color(0XFF9E9E9E)),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Checkbox Remember me
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(scale: 1.5),
                  Checkbox(
                    side: BorderSide(width: 2.5, color: Color(0XFF00CDBD)),
                    activeColor: Color(0XFF00CDBD),
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

              const SizedBox(height: 20),

              // Sign up button
              Center(
                child: SizedBox(
                  width: 380,

                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF11B1A5),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                  width: 24,
              height: 59),
              _buildOr(),

              const SizedBox(width: 24,
                  height: 30),

              // Social buttons
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),


                    ),
                    child: Image.asset(ImageAssets.logo_Fb,
                      height: 24,
                         width: 24,),
                  ),
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),


                    ),
                    child: Image.asset(ImageAssets.logo_Gg,
                      height: 24,
                      width: 24,),
                  ),
                  Container(
                    height: 60,
                    width: 88,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),


                    ),
                    child: Image.asset(ImageAssets.logo_Apple,
                      height: 24,
                      width: 24,),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     _buildSocialButton(ImageAssets.logo_Fb),
                // _buildSocialButton(ImageAssets.logo_Gg),
                  // _buildSocialButton(ImageAssets.logo_Apple),
              //   ],
              // ),

              Padding(
                padding: const EdgeInsets.fromLTRB(75,59,75,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginWithAccount()),
                        );
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF00CDBD),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOr() {
    return Row(
      children: const [
        Expanded(child: Divider(color: Color(0xFFEEEEEE))),
        SizedBox(width: 16),
        Text(
          'or continue with',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF616161),
          ),
        ),
        SizedBox(width: 16),
        Expanded(child: Divider(color: Color(0xFFEEEEEE))),
      ],
    );
  }

  Widget _buildSocialButton(String assetPath) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEEEEEE), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(assetPath, width: 24, height: 24),
    );
  }
}
