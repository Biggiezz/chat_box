import 'package:chatbox/assets/image.dart';
import 'package:chatbox/home_start_chat/home_chat_list/chat_with_bobo/start_new_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeChatList extends StatefulWidget {
  const HomeChatList({super.key});

  @override
  State<HomeChatList> createState() => _HomeChatListState();
}

class _HomeChatListState extends State<HomeChatList> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(10, 10,24, 0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Bobo',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            leading: SvgPicture.asset(ImageAssets.homeStart),
            actions: [
              Icon(Icons.notifications),
              SizedBox(width: 20.w),
              Icon(Icons.settings),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Active Chats',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              _buildChatwithBoBo(),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ended Chats',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                    ),
                  ),
                  // bật tab xem tất cả tin nhắn
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF00CDBD),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
        
              _buildMessTab(
                text: 'BoBo - Dec 19, 2024',
                subtext: 'I\'m good too, I\'m reading a book right now 😆😆',
                image: ImageAssets.boboHeartEye,
              ),

              SizedBox(height: 24),
        
              _buildMessTab(
                text: 'Bobo - Dec 18, 2024',
                subtext: 'Bobo is very sad today because of an accident',
                image: ImageAssets.boboErrorEye,
              ),
              SizedBox(height: 24),
        
              _buildMessTab(
                text: 'BoBo - Dec 18, 2024',
                subtext:
                    'Hi, how are you today? I’m ready to accompany your day!',
                image: ImageAssets.boboStarEye,
              ),
              SizedBox(height: 24),
        
              _buildButtonStartChat('Start Another Chat with Bobo'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChatwithBoBo() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 127.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF04060F).withValues(alpha: 0.05),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 100.w,
            height: 79.02.h,
            child: SvgPicture.asset(ImageAssets.homeStart),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              SizedBox(
                width: 164.w,
                height: 70.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Text(
                          'Bobo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF212121),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Hello Andrew! I\'m Bobo 😁How are you today??',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          SvgPicture.asset(ImageAssets.mess),
        ],
      ),
    );
  }

  Widget _buildMessTab({String? text, String? subtext, String? image}) {
    return Container(
      width: 380.w,
      height: 127.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF04060F).withValues(alpha: 0.05),
            blurRadius: 60,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100.w,
              height: 79.h,
              child: SvgPicture.asset(image ?? '')),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              SizedBox(
                width: 212.w,
                height: 70.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text ?? '',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF212121),
                      ),
                    ),
                    Text(
                      subtext ?? '',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtonStartChat(String? text) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StartNewChat()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 58,
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
        child:  Center(
            child: Text(text ??'',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),)),
      ),
    );
  }
}
