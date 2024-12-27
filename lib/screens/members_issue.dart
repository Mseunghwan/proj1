import 'package:flutter/material.dart';

class MembersIssue extends StatelessWidget {
  const MembersIssue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF3B5998),
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
            const Text(
              '회원홍보',
              style: TextStyle(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 기본적으로 세로 스크롤
          child: Column(
            children: [
              const Divider(height: 1, color: Colors.grey),
              // 회원 리스트 영역
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7, // 고정된 높이
                child: ListView.builder(
                  itemCount: 20, // 예시 데이터 개수
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text("M${index + 1}"),
                      ),
                      title: Text("[부고알림] 000씨 00상 $index"),
                      subtitle: Text("회원 정보 $index"),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // 회원 상세 정보 페이지로 이동 로직
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
