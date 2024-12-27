import 'package:flutter/material.dart';
import 'package:proj1/navigation/main_appbar.dart';
import 'package:proj1/screens/announcement.dart';
import 'package:proj1/navigation/main_navigation.dart';
import 'package:proj1/screens/members_issue.dart';
import 'package:proj1/screens/search_member.dart';

import '../utils/global_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(), // 임시 회의 화면
    const SearchMember(),                 // 회원검색 화면
    const Announcement(),                 // 공지사항 화면
    const MembersIssue(),                 // 회원홍보 화면
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지 (홈 화면에만 표시)
          if (_currentIndex == 0)
            Positioned.fill(
              child: Image.asset(
                'assets/images/main_image.png', // 배경 이미지 경로
                fit: BoxFit.contain, // 화면에 맞게 조정 (여백 있음)
              ),
            ),
          // 선택된 화면의 콘텐츠
          _screens[_currentIndex],
        ],
      ),
      bottomNavigationBar: MainNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
