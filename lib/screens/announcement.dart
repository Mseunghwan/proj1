// lib/screens/announcement.dart
import 'package:flutter/material.dart';

import '../navigation/main_appbar.dart';
import '../utils/global_color.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(rightText: '공지사항'),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildBoardItem(
                  context,
                  '대구MBC문화원 2024 정기총회 및 송년의 밤 행사',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  context,
                  '대구MBC문화원 23기 수업안내(1114)',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  context,
                  '대구MBC문화원 22기 수업안내(1114)',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  context,
                  '대구MBC문화원 23기 수업안내(1107)',
                  '2024-11-05',
                  '0',
                ),
                _buildBoardItem(
                  context,
                  '대구MBC문화원 22기 수업안내(1107)',
                  '2024-11-05',
                  '0',
                ),
              ],
            ),
          ),
          _buildPagination(),
        ],
      ),
    );
  }

  Widget _buildBoardItem(BuildContext context, String title, String date, String commentCount) {
    return InkWell(
      onTap: () {
        // 클릭 시 상세 페이지로 이동하는 기능
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('상세 내용이 준비되지 않았습니다.'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              commentCount,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPagination() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPageButton('1', isSelected: true),
          _buildPageButton('2'),
          _buildPageButton('3'),
          _buildPageButton('4'),
          _buildPageButton('5'),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildPageButton(String number, {bool isSelected = false}) {
    return InkWell(
      onTap: () {
        // 페이지 버튼 클릭 시 동작
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}