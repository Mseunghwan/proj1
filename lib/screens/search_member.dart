// lib/screens/search_member.dart
import 'package:flutter/material.dart';
import 'package:proj1/utils/global_color.dart';
import '../navigation/main_appbar.dart';

class SearchMember extends StatelessWidget {
  const SearchMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(rightText: '회원검색'),
      body: SafeArea(
        child: Container(
          color: GlobalColor.lightGray,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                color: GlobalColor.white,
                child: Row(
                  children: [
                    // 검색 옵션 드롭다운
                    Container(
                      height: 44, // 애플 스타일의 높이
                      decoration: BoxDecoration(
                        color: GlobalColor.lightGray.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButtonHideUnderline( // 밑줄 제거
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            isDense: true,
                            hint: const Text(
                              "이름",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                            items: const [
                              DropdownMenuItem(value: "name", child: Text("이름")),
                              DropdownMenuItem(value: "email", child: Text("이메일")),
                              DropdownMenuItem(value: "phone", child: Text("전화번호")),
                            ],
                            onChanged: (value) {},
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // 검색창
                    Expanded(
                      child: Container(
                        height: 44, // 애플 스타일의 높이
                        decoration: BoxDecoration(
                          color: GlobalColor.lightGray.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "검색어를 입력하세요",
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, color: Colors.grey),
              // 회원 리스트 (기존 코드 유지)
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 8.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      color: GlobalColor.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("M${index + 1}"),
                        ),
                        title: Text("회원 이름 $index"),
                        subtitle: Text("회원 정보 $index"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {},
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