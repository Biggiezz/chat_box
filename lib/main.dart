import 'package:chatbox/home_start_chat/home_chat_list/home_chat_list.dart';
import 'package:chatbox/home_start_chat/home_start.dart';
import 'package:chatbox/signup_page/signup_page.dart';
import 'package:chatbox/welcome/home_page.dart';
import 'package:flutter/material.dart';

import 'login/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const HomeChatList(),
        );
      }
    );
  }
}




