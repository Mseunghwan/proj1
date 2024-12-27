import 'package:flutter/material.dart';
import 'package:proj1/navigation/main_appbar.dart';
import 'package:proj1/screens/announcement.dart';
import 'package:proj1/navigation/main_navigation.dart';
import 'package:proj1/screens/members_issue.dart';
import 'package:proj1/screens/search_member.dart';

import '../screens/rules.dart';
import '../utils/global_color.dart';
// lib/navigation/main_screen.dart

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? _currentIndex; // 초기값 null: 네비게이션 선택 전 상태

  final List<Widget> _screens = [
    const Rules(),
    const SearchMember(),
    const Announcement(),
    const MembersIssue(),
  ];

  // 뒤로가기 처리를 위한 함수
  Future<bool> _onWillPop() async {
    if (_currentIndex != null) {
      setState(() {
        _currentIndex = null; // 메인 화면으로 돌아가기
      });
      return false; // 앱 종료 방지
    }
    return true; // 앱 종료 허용
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope( // 뒤로가기 처리를 위한 WillPopScope 추가
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            // 배경 이미지 (첫 화면)
            if (_currentIndex == null)
              Positioned.fill(
                child: Image.asset(
                  'assets/images/main_image.png',
                  fit: BoxFit.cover,
                ),
              )
            else
              _screens[_currentIndex!],
          ],
        ),
        bottomNavigationBar: MainNavigation(
          currentIndex: _currentIndex ?? -1,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}