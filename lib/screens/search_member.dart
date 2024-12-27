import 'package:flutter/material.dart';
import 'package:proj1/utils/global_color.dart'; // GlobalColor import

import '../navigation/main_appbar.dart';
import '../utils/global_color.dart';

class SearchMember extends StatelessWidget {
  const SearchMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

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
                    Flexible(
                      flex: 3,
                      child: DropdownButtonFormField<String>(
                        isExpanded: true, // DropdownButton을 가로 공간에 맞춤
                        items: const [
                          DropdownMenuItem(value: "name", child: Text("옵션1")),
                          DropdownMenuItem(value: "email", child: Text("옵션2")),
                          DropdownMenuItem(value: "phone", child: Text("옵션3")),
                        ],
                        onChanged: (value) {



                          // 검색 옵션 선택 시 이벤트



                        },
                        decoration: const InputDecoration(
                          labelText: "옵션 선택",
                          border: OutlineInputBorder(),
                        ),
                      ),

                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      flex: 4,
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: "검색어 입력",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      flex: 2,

                      child: ElevatedButton(

                        onPressed: () {


                          // 검색 버튼 터치 시 이벤트
                          
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
                    final double containerHeight = screenWidth * 0.4; // 반응형 컨테이너 높이
                    final double imageWidth = screenWidth * 0.3; // 반응형 이미지 폭

                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 16.0,
                      ),
                      height: containerHeight,
                      color: GlobalColor.white, // 리스트 아이템 배경색 설정
                      child: Row(
                        children: [
                          // 좌측 이미지 공간
                          Flexible(
                            flex: 3,
                            child: Container(
                              width: imageWidth,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300, // 배경색 (기본 이미지 대체)
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://via.placeholder.com/150", // 샘플 이미지 URL
                                  ),
                                  fit: BoxFit.cover, // 이미지를 컨테이너에 맞게 채움
                                ),
                              ),
                            ),
                          ),
                          // 회원 정보 텍스트
                          Flexible(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "회원 이름 $index (기수 $index)",  //현재 더미 데이터 적용 중
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8), // 이름과 직책 간격 조정
                                      Text(
                                        "직책 $index",  //현재 더미 데이터 적용 중
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("직업 $index"), //현재 더미 데이터 적용 중
                                  Text("주소 $index"), //현재 더미 데이터 적용 중
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.circle, size: 8, color: Colors.grey),
                                          const SizedBox(width: 8),
                                          Text("Tel: 010-1234-5678"),   //현재 더미 데이터 적용 중
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.circle, size: 8, color: Colors.grey),
                                          const SizedBox(width: 8),
                                          Text("C.P: 010-8765-4321"),  //현재 더미 데이터 적용 중
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(Icons.circle, size: 8, color: Colors.grey),
                                          const SizedBox(width: 8),
                                          Text("E-mail: user$index@example.com"),  //현재 더미 데이터 적용 중
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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