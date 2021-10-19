import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  // 보내기 버튼 클릭시 메인 페이지 이동
  void MovetoMain() {
    Get.offAndToNamed('/MainPage');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Flexible(
          flex: 1,
          child: Container(
              child: Center(
                  child: Image.asset(
            "assets/images/fooriptextlogo.png",
            height: 70,
          ))),
        ),
        Flexible(
            flex: 9,
            child: Container(
                width: displayWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  border: Border.all(color: Colors.black12, width: 3),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "보내기",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffFFB969),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Text(
                        "식당명",
                        style: TextStyle(fontSize: 15),
                      ),
                      Container(
                        height: 50,
                        width: displayWidth * 0.7,
                      )
                    ],
                  )),
                  Container(
                    child: Row(
                      children: [
                        Text("키워드"),
                        Container(
                          child: Row(children: [
                            Text("파스타"),
                            GestureDetector(
                              onTap: () {
                                //TODO: 지워지는 기능 구현
                              },
                              child: Icon(
                                Icons.close,
                              ),
                            )
                          ]),
                          decoration: BoxDecoration(
                            color: Color(0xffffdfa166),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Container(
                          child: Row(children: [
                            Text("양식"),
                            GestureDetector(
                              onTap: () {
                                //TODO: 지워지는 기능 구현
                              },
                              child: Icon(
                                Icons.close,
                              ),
                            )
                          ]),
                          decoration: BoxDecoration(
                            color: Color(0xffffdfa166),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Container(
                          child: Row(children: [
                            Text("감성"),
                            GestureDetector(
                              onTap: () {
                                //TODO: 지워지는 기능 구현
                              },
                              child: Icon(
                                Icons.close,
                              ),
                            )
                          ]),
                          decoration: BoxDecoration(
                            color: Color(0xffffdfa166),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "위치",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          height: 50,
                          width: displayWidth * 0.7,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "번호",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          height: 50,
                          width: displayWidth * 0.7,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "사진",
                          style: TextStyle(fontSize: 15),
                        ),
                        GestureDetector(
                            onTap: () {
                              //TODO: 이미지 불러오기 기능 구현
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffffdfa166),
                                  borderRadius: BorderRadius.circular(3)),
                            )),
                        Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      //TODO: 이미지 파일 삭제 기능
                                    },
                                    child: Icon(Icons.close)),
                                Text("예원레스토랑.png"),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      //TODO: 이미지 파일 삭제 기능
                                    },
                                    child: Icon(Icons.close)),
                                Text("예원레스토랑_내부.png"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    "추천이유",
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: displayWidth * 0.9,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        MovetoMain();
                      },
                      child: Container(
                        child: Text(
                          "보내기",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        height: 80,
                        width: displayWidth * 0.5,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(2)),
                      ))
                ]))),
      ]),
    ));
  }
}
