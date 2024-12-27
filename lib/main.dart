import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView( // body 전체를 스크롤 가능하게 변경
          child: Container(
            width: double.infinity,
            color: Color(0xffc6c6c6),
            padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  snowText("대구 MBC문화원 최고위과정"),
                  snowText("총동창회 회칙"),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "제정 2015년 01월 28일\n개정 2024년 10월 29일",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  leftAlignChapterText("제 1장 총칭"),
                  SizedBox(height: 10),
                  leftAlignArticleText("제 1조(명칭)"),
                  SizedBox(height: 10),
                  leftAlignContentText(
                      "본회는 '대구 MBC문화원 최고위과정 총동창회'(이하'본회'라 한다)라 청한다."),
                  SizedBox(height: 10),
                  leftAlignArticleText("제2조(목적)"),
                  SizedBox(height: 20),
                  leftAlignContentText(
                      "본회의 목적은 다음과 같다.\n1. 상호존중과 이해로서 회원 상호간의 유대강화와 친목을 도모하고,\n2. ‘대구MBC문화원 최고위과정’의 발전에 기여하며,\n3. 지역사회와 국가발전, 세계평화에 기여함을 목적으로 한다"),
                  leftAlignArticleText("제3조(사업)"),
                  leftAlignContentText(
                      "본회는 그 목적을 달성하기 위하여 다음 각호의 사업을 수행한다.\n1. 회원 상호간의 유대강화와 친목 도모에 필요한 사업\n2. “대구MBC문화원 최고위과정”의 발전에 필요한 사업\n3. 지역사회와 국가발전, 세계평화 기여에 필요한 사업\n4. 기타 본회의 발전을 위하여 총회 또는 이사회에서 정하는 사항"),
                  leftAlignArticleText("제4조(사무소)"),
                  leftAlignContentText("본회의 사무소는 대구광역시에 둔다."),
                  leftAlignChapterText("제 2 장 회원"),
                  leftAlignArticleText("제5조(회원)"),
                  leftAlignContentText(
                      "본회 회원은 '대구MBC문화원 최고위과정'을 수료한 자로 한다."),
                  leftAlignArticleText("제6조(회원의 의무)"),
                  leftAlignContentText(
                      "회원은 본회의 회칙 및 규정을 준수하고 분담금 및 회비 납부와 본회의 사업에 적극 참여하여야 한다."),
                  leftAlignArticleText("제7조(회원자격 정지 또는 제명"),
                  leftAlignContentText("① 모든 회원은 의결권 및 기타의 권리를 동등하게 가진다.\n② 회원은 제6조의 의무를 다하지 않았을 때는 회원으로서의 권리를 주장할 수 없다."),
                  leftAlignChapterText("제 3장 기구 및 집행부"),
                  leftAlignContentText(
                      "본회는 의결 기구로 총회와 이사회를 두고 자문기구로 고문을 둘 수 있으며, 원활한 업무수행을 위하여 집행부(임원회의)를 둔다."),
                  leftAlignArticleText("제8조(총회)"),
                  leftAlignContentText(
                      "① 총회는 최고의결기구로 회원 전원으로 구성된다.\n② 총회는 다음사항을 의결한다.\n  1. 회칙 제정 및 개정\n  2. 집행부 구성 승인\n  3. 사업보고 및 결산 승인\n  4. 기타 이사회에서 총회에 부의된 안건\n③ 총회의 소집과 결의방법은 다음과 같다.\n  1. 총회는 정기총회와 임시총회로 구분하고, 회장이 이를 소집한다.\n  2. 정기총회는 매년 1월 중 소집한다.\n  3. 임시총회는 회장이 필요하다고 인정되는 경우 또는 집행부 의결로 소집할 수 있다.\n  4. 총회는 회원 30명이상 출석으로 성립하며, 회칙 제⋅개정은 참석회원의 3분의 2이상의 찬성으로, 나머지 안건은 참석회원 과반수 이상의 찬성으로 결의한다.\n  5. 제4항에도 불구하고 이사회가 필요하다고 인정하는 경우에는 서면결의로 총회의 결의에 갈음 할 수 있다."),
                  leftAlignArticleText("제9조(이사회)"),
                  leftAlignContentText(
                      "① 이사회는 당연직으로 총동회장과, 기수별 동기회 현 회장 전원으로 구성한다.\n② 이사회의는 다음사항을 의결한다.\n  1. 회칙 제·개정(안)\n  2. 집행부 구성(안)\n  3. 사업계획 및 예산(안)\n  4. 사업보고 및 결산(안)\n  5. 기타 본회 운영 및 예산집행과 관련하여 부의된 안건\n③ 이사회 소집과 결의방법은 다음과 같다.\n  1. 이사회는 총동회장이 필요하다고 판단할 경우나 3명 이상의 이사회 또는 총동 집행부 임원의 요구로 소집할 수 있다.\n  2. 이사회 의결 시 총동창회장을 의장으로 하고, 총동창회장 유고 시 상임부회장, 참석한 이사 중 선임 기수 회장의 순으로 의장을 대행한다.\n  3. 이사회는 10명 이상 참석으로 성립되고 참석 임원 과반수 이상의 찬성으로 의결한다."),
                  leftAlignArticleText("제10조(임원회의)"),
                  leftAlignContentText(
                      "① 임원회의는 회장, 사무총장, 사무국장·차장, 홍보국장·차장, 재무국장·차장으로 구성한다.\n② 임원회의는 회장이 필요하다고 판단할 경우나 3명 이상의 임원 요구로 소집할 수 있다.\n③ 임원회의 의장은 회장으로 하고, 회장 결석 시 사무총장이 의장을 대행한다.\n④ 임원회의는 다음 사항을 심의 의결 및 집행한다.\n  1. 총회 및 이사회에 상정할 안건.\n  2. 이사회에서 의결된 안건의 집행에 관한 사항.\n  3. 기타 본회 운영과 관련하여 이사회에서 결정하는 사항."),
                  leftAlignArticleText("제11조(집행부 및 임무)"),
                  leftAlignContentText(
                      "① 본회는 다음과 같이 집행부임원을 둔다.\n  1. 회장 : 회장은 본회를 대표하며, 총회, 이사회, 임원회를 소집하고 그 의장이 되며, 대내외 회무를 총괄한다.\n  2. 고문 : 총동창회장의 지명으로 본회 발전에 공로가 있는 자 또는 원로회원 중(약간명)\n  3. 상임부회장 : 당연직으로 기수별 현 동기회장 중 이사회에서 선임(이사회 이사 겸직)하며, 회장을 보좌하며 회장 유고 시 회장의 임무를 대행한다.\n  4. 부회장(이사) : 당연직으로 기수별 현 동기회장 전원은 부회장 겸 이사회 이사를 겸직한다.\n  5. 감사 : 감사는 본회의 운영 및 재정을 감사하며, 그 결과를 이사회 및 총회에 보고하여야 하고, 이사회의 의결로서 선임한다.\n  6. 사무총장 1명 : 총동창회장이 지명한다.\n  7. 사무국장, 차장, 홍보국장, 차장, 재무국장, 차장 각 1명은 총동창회장이 지명한다.\n② 집행부임원은 집행부회의에서 집행부구성(안)을 작성하여 총회의 승인을 득하여 결정한다.\n③ 집행부임원의 임기는 1년으로 하되 연임할 수 있다.\n④ 집행부임원 중 결원이 발생할 경우 결원으로 본회운영에 차질이 있다고 판단될 경우 이사회의 결정으로 새로운 임원을 선출한다. 단, 회장의 결원이 있을 경우에는 임시총회를 개최하여 총회의 승인을 득하여야 한다."),
                  leftAlignChapterText("제 4 장 운영"),
                  leftAlignArticleText("제12조(사무국)"),
                  leftAlignContentText(
                      "① 본회는 사무국을 별도로 둘 수 있으며, 업무의 효율성을 높이기 위해 사무원을 둘 수 있다.\n② 사무국은 사무총장이 총괄하며, 총무이사, 재무이사, 홍보이사가 보좌한다.\n③ 각 기수별 사무총장은 사무국 요원으로 한다.\n④ 골프대회 및 등반대회 등의 각종 행사 시에는 행사를 위한 별도의 임시조직을 둘 수 있다."),
                  leftAlignArticleText("제13조(회계연도)"),
                  leftAlignContentText("본회의 회계연도는 매년 1월 1일부터 12월 31일 까지로 한다."),
                  leftAlignArticleText("제14조(재정)"),
                  leftAlignContentText("본회의 운영에 필요한 재정조달에 관한 사항은 이사회에 위임한다."),
                  leftAlignArticleText("제15조(행사)"),
                  leftAlignContentText(
                      "본회는 제3조의 목적을 달성하기 위하여 다음 각 호의 행사를 할 수 있다.\n1. 총동창회 체육대회 또는 야유회\n2. 신년회 또는 송년의 밤\n3. 각종 세미나\n4. 골프대회, 등산대회\n5. 기타 이사회에서 의결된 행사"),
                  leftAlignChapterText("제 5 장 부칙"),
                  leftAlignArticleText("제17조(시행행칙)"),
                  leftAlignContentText(
                      "① 본회의 발전을 위하여 필요한 때에는 별도의 세칙을 제정할 수 있다.\n② 본회의 세칙은 임원회의 의결을 거쳐 이사회에서 승인 후 효력을 갖는다."),
                  leftAlignArticleText("제18조(효력발생)"),
                  leftAlignContentText("본 회칙은 총회 또는 이사회에서 승인받는 즉시 효력이 발생한다."),
                  leftAlignArticleText("[ 조직도 ]"),
                  Image.asset("assets/images/organization_chart.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget snowText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'sf_snow',
      fontSize: 20,
    ),
  );
}

Widget leftAlignContentText(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 7), // 기본 값은 0, 필요 시 조정 가능
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}


Widget leftAlignChapterText(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget leftAlignArticleText(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

