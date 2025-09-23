import 'package:chatbox/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class EndedChat extends StatefulWidget {
  const EndedChat({
    super.key,
    this.deleteFunction, // không required nữa
  });
  final Function(BuildContext)? deleteFunction; // nullable

  @override
  State<EndedChat> createState() => _EndedChatState();
}

class _EndedChatState extends State<EndedChat> {
  // Dữ liệu mẫu (thay bằng dữ liệu thật của bạn)
  final List<Map<String, String>> _items = [
    {
      'image': ImageAssets.boboHeartEye,
      'text': 'Bobo - Dec 19,2024',
      'subtext': "I'm good too, I'm reading a book right now 😆😆",
    },
    {
      'image': ImageAssets.boboErrorEye,
      'text': 'Bobo - Dec 18,2024',
      'subtext': 'Bobo is very sad today because of an accident',
    },
    {
      'image': ImageAssets.boboStarEye,
      'text': 'Bobo - Dec 18,2024', // <-- duplicate text ok nếu key dùng index
      'subtext': 'Hi, how are you today? I’m ready to accompany your day!',
    },
    {
      'image': ImageAssets.boboCryEye,
      'text': 'Bobo - Dec 16,2024',
      'subtext': 'Bobo is learning camera, do you want to learn with me? 😁',
    },
    {
      'image': ImageAssets.boboSleepEye,
      'text': 'Bobo - Dec 15,2024',
      'subtext': 'Hi Andrew! Bobo is here! Bobo is very tired today.',
    },
    {
      'image': ImageAssets.boboSleepEye,
      'text': 'Bobo - Dec 15,2024',
      'subtext': 'Hi Andrew! Bobo is here! Bobo is very tired today.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: AppBar(
            title: Text(
              'Ended Chats',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF212121),
              ),
            ),
            backgroundColor: Colors.white,
            actions: [
              SvgPicture.asset(ImageAssets.search),
              SizedBox(width: 20),
              SvgPicture.asset(ImageAssets.more),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: _items.length,
          separatorBuilder: (_, __) => SizedBox(height: 24.h),
          // dùng builder để tạo widget và key theo index -> KHÔNG trùng
          itemBuilder: (context, index) {
            final item = _items[index];
            return _buildMessenger(
              key: ValueKey('messenger_$index'), // duy nhất trong list
              image: item['image'],
              text: item['text'],
              subtext: item['subtext'],
            );
          },
        ),
      ),
    );
  }

  // Chú ý: thêm parameter Key? để truyền key xuống
  Widget _buildMessenger({
    Key? key,
    String? text,
    String? subtext,
    String? image,
  }) {
    return Slidable(
      key: key, // key an toàn, từ index ở trên
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              // ví dụ xóa item: bạn cần implement logic xóa dựa trên index
            },

            backgroundColor: Color(0xFFF75555),
            foregroundColor: Colors.white,
            icon: Icons.delete_outline_outlined,
            borderRadius: BorderRadius.circular(32),
          ),
        ],
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 127.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF04060F).withOpacity(0.05),
              offset: Offset(0, 4),
              blurRadius: 60,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Row(
            children: [
              if ((image ?? '').isNotEmpty) SvgPicture.asset(image ?? ''),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 212.w,
                    child: Text(
                      text ?? '',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF212121),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  SizedBox(
                    width: 212.w,
                    child: Text(
                      subtext ?? '',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
