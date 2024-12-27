import 'package:flutter/material.dart';

class MainNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MainNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // 높이를 80으로 증가
      decoration: BoxDecoration(
        color: Colors.black12, // 배경색을 하얀색으로 변경
        border: Border(
          top: BorderSide(color: Colors.grey.shade200), // 테두리 색상 더 연하게
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(0, Icons.article_outlined, '회칙'),
          _buildNavItem(1, Icons.person_search_outlined, '회원검색'),
          _buildNavItem(2, Icons.notifications_outlined, '공지사항'),
          _buildNavItem(3, Icons.campaign_outlined, '회원홍보'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = currentIndex == index;
    return InkWell(
      onTap: () => onTap(index),
      child: SizedBox(
        width: 80, // 각 아이템의 너비 지정
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32, // 아이콘 크기 증가
              color: isSelected ? const Color(0xFF3B5998) : Colors.grey.shade400,
            ),
            const SizedBox(height: 6), // 간격 약간 증가
            Text(
              label,
              style: TextStyle(
                fontSize: 13, // 글자 크기 약간 증가
                color: isSelected ? const Color(0xFF3B5998) : Colors.grey.shade600,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}