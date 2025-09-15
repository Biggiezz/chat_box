import 'package:chatbox/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartNewChat extends StatefulWidget {
  const StartNewChat({super.key});

  @override
  State<StartNewChat> createState() => _StartNewChatState();
}

class _StartNewChatState extends State<StartNewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),

        child: Padding(
          padding: const EdgeInsets.only(right: 20),

          child: AppBar(
            title: Text(
              'Bobo',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            backgroundColor: Colors.white,
            actions: [
              SvgPicture.asset(ImageAssets.search),
              SizedBox(width: 20.w),
              SvgPicture.asset(ImageAssets.more),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(children: [SvgPicture.asset(ImageAssets.boboSmileEye)]),
            Row(children: [_buildTextBox(text: 'Hello Andrew! I\'m Bobo 😁')]),
            SizedBox(height: 16),
            Row(children: [_buildTextBox(text: 'How are you today??')]),
            Spacer(),
            Row(
              children: [
                Container(
                  width: 312.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: TextField(
                      decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(
                          borderRadius:

                        ),
                        border: InputBorder.none,
                        hint: Text(
                          'Type a message to Bobo ...',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  width: 56.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFF00CDBD),
                  ),
                  child: Center(child: SvgPicture.asset(ImageAssets.send)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextBox({String? text}) {
    return Container(
      width: 300.w,
      height: 57.h,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xFFF5F5F5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 16),
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF212121),
          ),
        ),
      ),
    );
  }
}
