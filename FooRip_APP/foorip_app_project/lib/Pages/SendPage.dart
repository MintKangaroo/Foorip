import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/ServerContact.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
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
            height: 30,
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
                                SizedBox(width: 15,),
                                Expanded(
                                  child: SizedBox(
                                    height: 30,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder: (BuildContext context, int index){
                                      return Row(
                                        children: [Chip(
                                            label: Text('파스타'),
                                            backgroundColor: Colors.amber,
                                            labelStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            deleteIcon: Icon(
                                              Icons.cancel,
                                              color: Colors.white,
                                            ),
                                            onDeleted: () {
                                              setState(() {
                                                print("지울까요?");
                                              });
                                            },
                                          ),
                                          SizedBox(width: 5,)
                                          ]
                                      );}),
                                  ),
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
                          // Container(
                          //   height: 130,
                          //   width: displayWidth * 0.9,
                          //   color: Colors.grey.withOpacity(0.27),
                          // ),
                        ],
                      )),
                    ),
                    GestureDetector(
                        onTap: () {
                          //TODO: (수정)서버와의 통신
                          ServerContact().Restaurant_createData();
                          Navigator.pop(context);
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
