// board_screen.dart
import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // 기본 뒤로가기 버튼 제거
        backgroundColor: const Color(0xFF3B5998),
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // MBC 로고
            const Text(
              '대구MBC',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(), // 왼쪽과 오른쪽 사이 공간
            const Text(
              '공지사항',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 16), // 오른쪽 여백
            // 설정 아이콘
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildBoardItem(
                  '대구MBC문화원 2024 정기총회 및 송년의 밤 행사',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  '대구MBC문화원 23기 수업안내(1114)',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  '대구MBC문화원 22기 수업안내(1114)',
                  '2024-11-14',
                  '0',
                ),
                _buildBoardItem(
                  '대구MBC문화원 23기 수업안내(1107)',
                  '2024-11-05',
                  '0',
                ),
                _buildBoardItem(
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

  Widget _buildBoardItem(String title, String date, String commentCount) {
    return Container(
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
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildPageButton(String number, {bool isSelected = false}) {
    return Container(
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
    );
  }
}