import 'package:flutter/material.dart';
import 'package:proj1/utils/global_color.dart'; // GlobalColor import

import '../navigation/main_appbar.dart';
import '../utils/global_color.dart';

class SearchMember extends StatelessWidget {
  const SearchMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(rightText: '회원검색'),
      body: SafeArea(
        child: Container(
          color: GlobalColor.lightGray, // 전체 배경색 설정
          child: Column(
            children: [
              // 검색 옵션, 입력창, 버튼 영역
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // 검색 옵션 선택 (Dropdown)
                    Expanded(
                      flex: 2,
                      child: DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(value: "name", child: Text("이름")),
                          DropdownMenuItem(value: "email", child: Text("이메일")),
                          DropdownMenuItem(value: "phone", child: Text("전화번호")),
                        ],
                        onChanged: (value) {
                          // 검색 옵션 변경 로직
                        },
                        decoration: const InputDecoration(
                          labelText: "옵션 선택",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // 검색 텍스트 입력창
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: "검색어 입력",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // 검색 버튼
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          // 검색 버튼 로직
                        },
                        child: const Text("검색"),
                      ),
                    ),
                  ],
                ),
              ),
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
                        title: Text("회원 이름 $index"),
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
