import 'package:flutter/material.dart';

class SearchMember extends StatelessWidget {
  const SearchMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 기본적으로 세로 스크롤
          child: Column(
            children: [
              // 검색 옵션, 입력창, 버튼 영역
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Row에 가로 스크롤 추가
                  child: Row(
                    children: [
                      // 검색 옵션 선택 (Dropdown)
                      SizedBox(
                        width: 150, // 고정된 크기 제공
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
                      SizedBox(
                        width: 200, // 고정된 크기 제공
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: "검색어 입력",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // 검색 버튼
                      ElevatedButton(
                        onPressed: () {
                          // 검색 버튼 로직
                        },
                        child: const Text("검색"),
                      ),
                    ],
                  ),
                ),
              ),
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
                      title: Text("회원 이름 $index"),
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
