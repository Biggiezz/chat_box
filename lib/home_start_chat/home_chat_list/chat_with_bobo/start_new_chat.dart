import 'package:chatbox/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartNewChat extends StatefulWidget {
  const StartNewChat({super.key});

  @override
  State<StartNewChat> createState() => _StartNewChatState();
}

class _StartNewChatState extends State<StartNewChat> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = []; // lưu tất cả tin nhắn

  // Lưu tin nhắn xuống local
  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList("messages", _messages);
  }

  // Load tin nhắn khi mở lại app
  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList("messages");
    if (saved != null) {
      setState(() {
        _messages.clear();
        _messages.addAll(saved);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      _messages.insert(0, _controller.text.trim()); // thêm tin nhắn mới
    });

    _controller.clear(); // xóa text sau khi gửi
    _saveMessages(); // lưu lại
  }

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
            SizedBox(height: 16),

            Row(children: [_buildTextBox(text: 'Hello Andrew! I\'m Bobo 😁')]),
            SizedBox(height: 16),
            Row(children: [_buildTextBox(text: 'How are you today??')]),

            // Danh sách tin nhắn

               Expanded(
                child: ListView.builder(
                  reverse: true, // tin nhắn mới nằm trên cùng
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return Align(
                      alignment: Alignment.centerRight, // căn sang phải
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          _messages[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),

            // Ô nhập + nút gửi
            Row(
              children: [
                Container(
                  width: 312.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade50,
                  ),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00CDBD),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      border: InputBorder.none,
                      hintText: 'Type a message to Bobo ...',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                SizedBox(width: 12),
                GestureDetector(
                  onTap: _sendMessage,
                  child: Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF00CDBD),
                    ),
                    child: Center(child: SvgPicture.asset(ImageAssets.send)),
                  ),
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
