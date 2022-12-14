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
              // [공지] Container
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
                      fontWeight: FontWeight.w800,
                      fontFamily: "Pre",
                    )),
                SizedBox(
                  height: 40,
                  width: 10,
                ),
                Text('덕부름에 새로운 기능이 추가됐어요.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
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
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Pre"),
                        ),
                        SizedBox(
                          // 줄 간격
                          height: 3,
                        ),
                        Text(
                          'SEVENTEEN Photo',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
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
                                fontWeight: FontWeight.w300,
                                fontFamily: "Pre")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // [심부름 신청하러 가기] Container
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0), //바깥쪽
              decoration: BoxDecoration(
                color: Color(0xff1F1F21),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // 양끝 여백 없이 정렬
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // 텍스트 두 줄
                    margin: EdgeInsets.fromLTRB(18, 20, 0, 0), // 바깥쪽
                    width: 187,
                    height: 41,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // 양끝 여백 없이 정렬
                      children: [
                        SizedBox(
                          child: Text(
                            '심부름 신청하러 가기',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontFamily: "Pre"),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            '덕질 관련 심부름을 신청해 보세요!',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: "Pre"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // 동그란 화살표
                    margin: EdgeInsets.fromLTRB(0, 20, 24, 0), // 바깥쪽
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff3E3E40), shape: BoxShape.circle),
                    child: Icon(
                      // 화살표 아이콘
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // [최근 등록된 심부름] Container
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(24, 40, 24, 0), // 바깥쪽
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // 양끝 여백 없이 정렬
                children: [
                  SizedBox(
                    // '최근 등록된 심부름' Text SizedBox
                    child: Text(
                      '최근 등록된 심부름',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Pre"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
                    children: [
                      SizedBox(
                        child: Text(
                          '더보기',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffB1B1B4),
                              fontFamily: "Pre"),
                        ),
                      ),
                      SizedBox(width: 6),
                      //Icon(
                      //  Icons.navigate_next_sharp,
                      //  color: Color(0xffb1b1b4),
                      //  size: 15,
                      //),
                      IconButton(
                        // iconSize: 15,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Errand()),
                          );
                        },
                        icon: Icon(
                          Icons.navigate_next_sharp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                                fontWeight: FontWeight.w800,
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
                                      fontWeight: FontWeight.w800,
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
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Pre")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // 등록된 심부름_2
                    width: 144,
                    height: 144,
                    margin: EdgeInsets.fromLTRB(0, 0, 12, 0), // 바깥쪽
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffF0E9FF),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // 시급 컨테이너
                          margin: EdgeInsets.fromLTRB(14, 14, 0, 0), // 바깥쪽
                          decoration: BoxDecoration(
                            color: Color(0xffF0E9FF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 23,
                          width: 58,
                          child: Center(
                            child: Text('시급 1만원',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xff8F5BFF),
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
                                fontWeight: FontWeight.w800,
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
                                  '행사 대리줄서기',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff3C88FA),
                                      fontWeight: FontWeight.w800,
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
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Pre")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // 등록된 심부름_3
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
                                fontWeight: FontWeight.w800,
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
                                      fontWeight: FontWeight.w800,
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
                                  fontWeight: FontWeight.w500,
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
              margin: EdgeInsets.fromLTRB(20, 29, 20, 10), // 바깥쪽
              padding: EdgeInsets.all(19), // 안쪽
              child: Row(
                children: [
                  Container(
                    // 'Tip!' 녹색 원 Container
                    height: 48,
                    width: 48,
                    margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
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
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '덕부름 이용 방법',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Pre"),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Text('덕부름의 이용 방법을 알아보세요!',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3E3E40),
                                    fontFamily: "Pre")),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Color(0xff6C6C6C),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Errand extends StatelessWidget {
  // 심부름 리스트
  const Errand({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        toolbarHeight: 48,
        backgroundColor: Colors.white,
        leading: // 툴 바 '타이틀' 전 아이콘 배치
            IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Color(0xff1f1f21),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          '심부름',
          style: TextStyle(
            fontFamily: 'Pre',
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Color(0xff1f1f21),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(20), // 안쪽
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24), // 안쪽
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // 양 끝으로 정렬
                      children: [
                        Text(
                          '서울 광진구',
                          style: TextStyle(
                            fontFamily: 'Pre',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xffe0f4f8),
                          ),
                          child: Text(
                            '시급 1만원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff04bcd6),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/6 오후 8:00',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '팬싸 대리응모',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffbbc1d0),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '서울 마포구',
                          style: TextStyle(
                            fontFamily: 'Pre',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xfff0e9ff),
                          ),
                          child: Text(
                            '시급 5만원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff8f5bff),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/7 오후 12:00',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '앨범 대리구매',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffbbc1d0),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '서울 구로구',
                          style: TextStyle(
                            fontFamily: 'Pre',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xffffecfa),
                          ),
                          child: Text(
                            '시급 7천원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffff6cd6),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/8 오전 7:32',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xfff4f8ff),
                          ),
                          child: Text(
                            '앨범 대리구매',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff3c88fa),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xfff4f8ff),
                          ),
                          child: Text(
                            '럭드 대리구매',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff3c88fa),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xfff4f8ff),
                          ),
                          child: Text(
                            '팬싸 대리응모',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff3c88fa),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '행사 대리줄서기',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffbbc1d0),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '서울 마포구',
                          style: TextStyle(
                            fontFamily: 'Pre',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xfff0e9ff),
                          ),
                          child: Text(
                            '시급 5만원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff8f5bff),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/7 오후 12:00',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '앨범 대리구매',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffbbc1d0),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '서울 마포구',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Pre',
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xfff0e9ff),
                          ),
                          child: Text(
                            '시급 5만원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff8f5bff),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/7 오후 12:00',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '앨범 대리구매',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffbbc1d0),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '서울 마포구',
                          style: TextStyle(
                            fontFamily: 'Pre',
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f1f21),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            color: Color(0xfff0e9ff),
                          ),
                          child: Text(
                            '시급 5만원',
                            style: TextStyle(
                              fontFamily: 'Pre',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff8f5bff),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '8/7 오후 12:00',
                      style: TextStyle(
                        fontFamily: 'Pre',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9a9a9a),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff4f8ff),
                      ),
                      child: Text(
                        '앨범 대리구매',
                        style: TextStyle(
                          fontFamily: 'Pre',
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff3c88fa),
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
