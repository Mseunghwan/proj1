import 'package:flutter/material.dart';
import '../utils/global_color.dart';

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
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Text(
            '대구MBC',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            rightText, // 전달받은 텍스트를 표시
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
