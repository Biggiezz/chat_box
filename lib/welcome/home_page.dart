import 'package:chatbox/assets/image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Fill Your Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF212121),
          ),
        ),

        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(ImageAssets.profile, fit: BoxFit.cover),
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            alignment: Alignment.center,
            width: 380,
            height: 56,
            child: TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text("Full Name",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9E9E9E),
                ),),
                hintText: "Nhập Họ và Tên",


              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            alignment: Alignment.center,
            width: 380,
            height: 56,
            child: TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text("Nickname",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9E9E9E),
                  ),),
                hintText: "Nhập tên đăng nhập",
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            alignment: Alignment.center,
            width: 380,
            height: 56,
            child: TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text("Email",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9E9E9E),
                  ),),
                hintText: "Nhập địa chỉ Email",
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            alignment: Alignment.center,
            width: 380,
            height: 56,
            child: TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),

                label: Text("Phone Number",
                  style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9E9E9E),
                ),
                ),
                hintText: "Nhập số điện thoại",
              ),
            ),
          ),
          SizedBox(height: 160),
          Container(
            width: 380,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0XFF11B1A5),
            ),

            // child: GestureDetector(
            //   onTap: (){
            //  Navigator.push(context, MaterialPageRoute(
            //      builder: (context) => HomePage()));
            // },
            child: SizedBox(
              width: 348,
              height: 22,

              child: TextButton(
                onPressed: () {},

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
}
