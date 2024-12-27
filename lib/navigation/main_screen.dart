// lib/navigation/main_screen.dart
import 'package:flutter/material.dart';
import 'package:proj1/screens/announcement.dart';
import 'package:proj1/navigation/main_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text('메인 이미지 화면')),  // 메인 이미지 화면
    const Announcement(),                  // 회원검색 화면
    const Announcement(),                  // 회원검색 화면
    const Announcement(),                  // 공지사항 화면
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
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