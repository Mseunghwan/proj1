// lib/navigation/main_appbar.dart
import 'package:flutter/material.dart';
import '../utils/global_color.dart';
import 'main_screen.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String rightText;

  const MainAppbar({
    Key? key,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: GlobalColor.AppBar,
      elevation: 0,
      toolbarHeight: 56.0,
      titleSpacing: 8,
      title: Row(
        children: [
          // 뒤로가기 버튼
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 36,
            height: 36,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: Colors.white,
              ),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  Navigator.of(context).pushReplacement(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const MainScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 300),
                    ),
                  );
                }
              },
              padding: EdgeInsets.zero,
            ),
          ),
          // 로고 텍스트
          const Text(
            '대구MBC',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: -0.3,
            ),
          ),
          const Spacer(),
          // 오른쪽 텍스트
          Text(
            rightText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(width: 10),
          // 설정 버튼
          Container(
            margin: const EdgeInsets.only(left: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 36,
            height: 36,
            child: IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                size: 18,
                color: Colors.white,
              ),
              onPressed: () {},
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}