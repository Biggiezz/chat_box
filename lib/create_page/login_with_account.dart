import 'package:chatbox/assets/image.dart';
import 'package:chatbox/signup_page/signup_page.dart';
import 'package:chatbox/welcome/home_page.dart';
import 'package:flutter/material.dart';

class LoginWithAccount extends StatefulWidget {
  const LoginWithAccount({super.key});

  @override
  State<LoginWithAccount> createState() => _LoginWithAccountState();
}

class _LoginWithAccountState extends State<LoginWithAccount> {
  var _rememberMe = false;

  get _passwordController => null;
  var _showPass = false;
  @override
  Widget build(BuildContext context) {
    //var _passwordFocus;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //Text  "Login to your Account"
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 40, 24, 45),
            child: Text(
              "Login to your Account",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),

                hintText: 'Nhập vào email của bạn',
                labelText: 'Email',
                suffixStyle: TextStyle(fontSize: 14, color: Color(0xFF9E9E9E)),
                filled: true,
                fillColor: Color(0xffFAFAFA),
                prefixIcon: Image.asset('assets/images/email.png'),
                // prefixIcon: Icon(Icons.email,size: 18, color: Color(0xFF9E9E9E)),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ), //Email
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 10),
            child: TextField(
             // focusNode: _passwordFocus,
              controller: _passwordController,
              obscureText: !_showPass,
              decoration: InputDecoration(
                labelText: 'Password',
                //  filled: true,
                // fillColor: _passwordFocus.hasFocus
                //     ? Color(0xff00CDBD)
                //     : Color(0xffFAFAFA),
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
          ), // Password
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 0, 0, 24),
            child: Row(
              children: [
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
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF212121),
                  ),
                ),
              ],
            ),
          ), //Checkbox
          Container(
            width: 380,
            height: 58,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(100),
              color: Color(0XFF11B1A5),
            ),


              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomePage()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),

              ),

            ),

          //Button Sign in

          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 10),

            child: Text(
              "Forgot the password?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF00CDBD),
              ),
            ),
          ), // Forgot password
          Padding(
            padding: const EdgeInsets.fromLTRB(0,30,0,0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Container(
                    width: 70,
                   height: 1,

                    color: Color(0xFFEEEEEE),
                  ),
                ),
                SizedBox(width: 16),
                Text("or continue with", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Color(0xFF616161)),
                ),
                SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                  child: Container(
                    width: 70,
                    height: 1,
                    color: Color(0xFFEEEEEE),
                  ),
                ),

              ],

            ),

          ), // buildOr
          SizedBox(height: 24),
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
                child:
                    Image.asset(ImageAssets.logo_Fb,),


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
                child:
                Image.asset(ImageAssets.logo_Gg),


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
                child:
                Image.asset(ImageAssets.logo_Apple),


              ),
            ],
          ), // Logo (fb,gg,apple) - Container
          Padding(
            padding: const EdgeInsets.fromLTRB(24,45,24,0),
            child:  GestureDetector(
                onTap: () {
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => SignupPage()));
    },






            child: RichText(text: TextSpan(


              text: "Don't have an account?",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
              children: <TextSpan>[

                TextSpan(text:  "  Sign up", style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w600, color: Color(0xFF00CDBD),
            ),


            ),

                ]

                  ),




            //Row(
            // padding:
            //   Container(color: Color(0xFFEEEEEE)),
            // Text("or continue with"),
            //   Container(color: Color(0xFFEEEEEE)),
            // ],

                ),
          ), // Don't have an account? Sign up build(RichText and Row)
    ),
    ]
      ),
    );
  }
}
