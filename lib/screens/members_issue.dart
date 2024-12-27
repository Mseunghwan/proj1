import 'package:flutter/material.dart';
import 'package:proj1/utils/global_color.dart'; // GlobalColor import

import '../navigation/main_appbar.dart';
import '../utils/global_color.dart';

class MembersIssue extends StatelessWidget {
  const MembersIssue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(rightText: '회원홍보'),
      body: SafeArea(
        child: Container(
          color: GlobalColor.lightGray, // 전체 배경색 설정
          child: Column(
            children: [
              const Divider(height: 1, color: Colors.grey),
              // 회원 리스트 영역
              Expanded(
                child: ListView.builder(
                  itemCount: 20, // 예시 데이터 개수
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 8.0,  // 상단 간격
                        left: 16.0, // 좌측 간격
                        right: 16.0, // 우측 간격
                      ),
                      color: GlobalColor.white, // 리스트 아이템 배경색 설정
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("M${index + 1}"),
                        ),
                        title: Text("[부고알림] 000님의 부친상 $index"),
                        subtitle: Text("회원 정보 $index"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          // 회원 상세 정보 페이지로 이동 로직
                        },
                      ),
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
