import 'package:chatbox/assets/image.dart';
import 'package:chatbox/home_start_chat/home_chat_list/home_chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeStart extends StatefulWidget {
  const HomeStart({super.key});

  @override
  State<HomeStart> createState() => _HomeStartState();
}

class _HomeStartState extends State<HomeStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),

        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(24, 24, 24, 0),
          child: AppBar(
            title: Text(
              "Bobo",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            backgroundColor: Colors.white,
            leading: SvgPicture.asset(ImageAssets.homeStart),
            actions: [
              Icon(Icons.notifications, color: Color(0xFF212121)),
              SizedBox(width: 20.w),
              Icon(Icons.settings, color: Color(0xFF212121)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 39, top: 48, right: 39),
        child: Column(
          children: [
            SvgPicture.asset(ImageAssets.logo_home_start),
            SizedBox(height: 48.h),
            Text(
              'Welcome, Andrew! 👋',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            SizedBox(height: 48.h),
            Text(
              'Let\'s Have Fun with Bobo!',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Start a conversation with Bobo right now!',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF212121),
              ),
            ),
            SizedBox(height: 32.h),
            _buildButtonStart("Start Chat with Bobo"),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonStart(String? text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeChatList()),
        );
      },
      child: Container(
        width: 380.w,
        height: 58.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF00CDBD),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF00CDBD).withValues(alpha: 0.25),
              blurRadius: 24,
              offset: Offset(4, 8),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
