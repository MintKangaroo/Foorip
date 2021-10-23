import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  // 보내기 버튼 클릭시 메인 페이지 이동
  void MovetoMain() {
    Get.off('/MainPage');
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
                      child: Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 30,
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
                            height: 30,
                          ),
                          Container(
                              child: Row(
                            children: [
                              Text(
                                "식당명",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              Container(
                                color: Colors.grey.withOpacity(0.27),
                                height: 40,
                                width: displayWidth * 0.73,
                              )
                            ],
                          )),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "키워드",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Container(
                                    width: displayWidth * 0.73,
                                    child: Row(
                                      children: [
                                        //TODO:Chip 위젯으로 변경해주세여!!
                                        Container(
                                          child: Row(children: [
                                            Text(
                                              "파스타",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
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
                                            color:
                                                Colors.orange.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Text(
                                              "양식",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
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
                                            color:
                                                Colors.orange.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          child: Row(children: [
                                            Text(
                                              "감성",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
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
                                            color:
                                                Colors.orange.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "위치",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Container(
                                  height: 40,
                                  width: displayWidth * 0.73,
                                  color: Colors.grey.withOpacity(0.27),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "번호",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Container(
                                  height: 40,
                                  color: Colors.grey.withOpacity(0.27),
                                  width: displayWidth * 0.73,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "사진",
                                  style: TextStyle(fontSize: 18),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      //TODO: 이미지 불러오기 기능 구현
                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15.0, 8, 15, 8),
                                        child: Text(
                                          "사진 첨부하기",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.orange.withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "추천이유",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 130,
                            width: displayWidth * 0.9,
                            color: Colors.grey.withOpacity(0.27),
                          ),
                        ],
                      )),
                    ),
                    GestureDetector(
                        onTap: () {
                          MovetoMain();
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "보내기",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          height: 50,
                          width: displayWidth * 0.6,
                          decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(5)),
                        ))
                  ],
                ))),
      ]),
    ));
  }
}
