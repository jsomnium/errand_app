import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // <앱 바>
          toolbarHeight: 53,
          titleSpacing: 24,
          title: Text(
            '덕부름',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "C_A",
                color: Color(0xff3C88FA)),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Container(
              // 공지 Container
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.fromLTRB(20, 8, 20, 0), // 바깥쪽
              padding: EdgeInsets.fromLTRB(14, 10, 0, 10), // 안쪽
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), //모서리를 둥글게
                color: Color(0xffF8F8F8),
              ),
              child: Row(children: [
                Text('공지',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Pre",
                    )),
                SizedBox(
                  height: 40,
                  width: 10,
                ),
                Text('덕부름에 새로운 기능이 추가됐어요.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Pre",
                    ))
              ]),
            ),
            Stack(
              children: [
                Container(
                  // 이벤트 세븐틴 포토_이미지
                  width: double.infinity,
                  height: 172,
                  margin: EdgeInsets.all(20), // 바깥쪽
                  padding: EdgeInsets.fromLTRB(20, 32, 0, 24), // 안쪽
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/image_1.png'),
                    ),
                  ),
                ),
                Container(
                  // 이벤트 세븐틴 포토_이미지
                  width: double.infinity,
                  height: 172,
                  margin: EdgeInsets.all(20), // 바깥쪽
                  padding: EdgeInsets.fromLTRB(20, 32, 0, 24), // 안쪽
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(0.3)),
                  child: SizedBox(
                    // 텍스트
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EVENT',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Pre"),
                        ),
                        SizedBox(
                          // 줄 간격
                          height: 3,
                        ),
                        Text(
                          'SEVENTEEN Photo',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Pre"),
                        ),
                        SizedBox(
                          // 줄 간격
                          height: 5,
                        ),
                        Text('지금 이벤트 참가하고 세븐틴 굿즈 받기',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Pre")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  // 심부름 신청 하러가기
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.fromLTRB(18, 20, 0, 0), //안쪽
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0), //바깥쪽
                  decoration: BoxDecoration(
                    color: Color(0xff1F1F21),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '심부름 신청하러 가기',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Pre"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '덕질 관련 심부름을 신청해보세요!',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Pre"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  // 심부름 신청 하러가기 버튼
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(271, 20, 0, 0), //바깥쪽
                  child: Icon(Icons.arrow_circle_right_sharp,
                      color: Colors.white, size: 45),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  // 최근 등록된 심부름 수정해야됨
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(24, 40, 0, 0), //바깥쪽
                  child: Text('최근 등록된 심부름',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Pre")),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(307, 40, 0, 0), //바깥쪽
                  child: Text('더보기',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffB1B1B4),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Pre")),
                ),
                Container(
                  //더보기 버튼
                  margin: EdgeInsets.fromLTRB(347, 40, 0, 0), //바깥쪽
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xffB1B1B4),
                    size: 15,
                  ),
                )
              ],
            ),
            Container(
              // 등록된 심부름들 container
              width: double.infinity,
              height: 144,
              margin: EdgeInsets.fromLTRB(20, 14, 0, 0), // 바깥쪽
              child: ListView(
                scrollDirection: Axis.horizontal, // 가로로 스크롤
                children: [
                  Container(
                    // 등록된 심부름_1
                    width: 139,
                    height: 144,
                    margin: EdgeInsets.fromLTRB(0, 0, 12, 0), // 바깥쪽
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffF1F1F1),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // 시급 컨테이너
                          margin: EdgeInsets.fromLTRB(14, 14, 0, 0), // 바깥쪽
                          decoration: BoxDecoration(
                            color: Color(0xffE0F4F8),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 23,
                          width: 58,
                          child: Center(
                            child: Text('시급 1만원',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xff04BCD6),
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "Pre")),
                          ),
                        ),
                        Container(
                          // '장소' 컨테이너
                          margin: EdgeInsets.fromLTRB(14, 10, 0, 0),
                          child: Text(
                            '서울 광진구',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Pre"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              // '할 일' 컨테이너
                              margin: EdgeInsets.fromLTRB(10, 8, 0, 0), // 바깥쪽
                              height: 30,
                              width: 81,
                              decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  '팬싸 대리응모',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff3C88FA),
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Pre"),
                                ),
                              ),
                            ),
                            Container(
                              // 동그라미 '+2' 컨테이너
                              margin: EdgeInsets.fromLTRB(6, 10, 0, 0), // 바깥쪽
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Color(0xff3C88FA),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  '+2',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffF8F8F8),
                                      fontFamily: "Pre"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // '시간' 컨테이너
                          margin: EdgeInsets.fromLTRB(14, 10, 0, 0), // 바깥쪽
                          child: Text('8/6 오후 8:00',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffB1B1B4),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Pre")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // 하단 녹색 바 [덕부름 이용 방법]
              width: double.infinity,
              height: 86,
              color: Color(0xffF7FFE7),
              margin: EdgeInsets.fromLTRB(20, 29, 20, 0),
              padding: EdgeInsets.all(19),
              child: Row(children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Color(0xffDBFFAC), shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      'Tip!',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                SizedBox(
                  // 줄 간격
                  width: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('덕부름 이용 방법',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Pre")),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: Text('덕부름의 이용 방법을 알아보세요!',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Pre")),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Color(0xff6C6C6C),
                        )
                      ],
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
