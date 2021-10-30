import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  

  //send아이콘 클릭시 보내기 페이지로 이동
  void MovwtoSend() {
    Get.toNamed('/Sendpage');
    //디버깅시 오류 발생 위치 Check
    log("SendPage로 보내기에서 오류 발생");
  }

  //필터 검색 입력창 변수 정의
  final FilterIDtextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                Container(
                  //로고+보내기버튼
                  height: displayHeight * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: displayWidth * 0.12,
                      ),
                      Container(
                          //로고
                          child: Image.asset(
                            "assets/images/fooriptextlogo.png",
                            height: 80,
                          ),
                          padding: const EdgeInsets.fromLTRB(130, 0, 0, 0)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: GestureDetector(
                          onTap: () {
                            MovwtoSend();
                          },
                          child: Container(
                            width: displayWidth * 0.12,
                            
                            decoration: BoxDecoration(
                              color: Color(0xffffFFB969),
                              borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  //검색창 그룹
                  height: displayHeight * 0.07,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: displayWidth * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xffffdfa166).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextFormField(
                            controller: FilterIDtextController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '필터를 선택하세요.',
                              hintStyle: TextStyle(
                                  color: Color(0xffffdfa166), fontSize: 18),
                              suffixIcon: Icon(
                                Icons.tune,
                                size: 30,
                                color: Color(0xffffdfa166),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //키워드
                  height: displayHeight * 0.05,
                  //padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  width: displayWidth * 0.89,
                  child: Row(
                    children: [
                      Chip(
                        label: Text(
                          "파스타",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        deleteIcon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        ),
                        onDeleted: () {
                          //TODO: 지워지는 기능 구현
                        },
                        backgroundColor: Color(0xffffFFB969),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Chip(
                        label: Text(
                          "양식",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        deleteIcon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        ),
                        onDeleted: () {
                          //TODO: 지워지는 기능 구현
                        },
                        backgroundColor: Color(0xffffFFB969),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Chip(
                        label: Text(
                          "감성",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        deleteIcon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 15,
                        ),
                        onDeleted: () {
                          //TODO: 지워지는 기능 구현
                        },
                        backgroundColor: Color(0xffffFFB969),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    //카드
                    child: Column(
                      children: [
                        Container(
                          // height:
                          width: displayWidth * 0.96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffffFFB969), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                //padding: const EdgeInsets.fromLTRB(8, 5, 2, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Text(
                                          "예원 레스토랑",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        //padding:
                                        // const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "파스타 전문점",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      //좋아요랑 아이콘 오른쪽 정렬
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "좋아요",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "8932",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 20,
                                            color: Color(0xffffFFB969),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                // padding: const EdgeInsets.fromLTRB(8, 0, 0, 2),
                                child: Column(
                                  children: [
                                    Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            child: Text(
                                              "서울시 동물의 숲 토도톳도 32-1",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                              Container(
                                height: displayHeight * 0.15,
                                width: displayWidth * 0.95,
                                //padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      //이미지
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                              height: displayHeight * 0.13,
                                              width: displayWidth * 0.38,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    //Padding(padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),),
                                    Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            //mainAxisAlignment:
                                            // MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_border_outlined,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // height: displayHeight*0.05,
                                          //width: displayWidth*0.54,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "튀어나와룔",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "존맛탱구리~! 여기 명란파스타 맛집임~~!",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.green,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "땟깔좋은 귀신이 될거얌",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "명란 파스타 먹고 땟깔 좋아졌다.",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text("리카르도",
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "가게 안에 고슴도치 존.귀.💝💕💗💖💞",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          // height:
                          width: displayWidth * 0.96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffffFFB969), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                //padding: const EdgeInsets.fromLTRB(8, 5, 2, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Text(
                                          "예원 레스토랑",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        //padding:
                                        // const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "파스타 전문점",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      //좋아요랑 아이콘 오른쪽 정렬
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "좋아요",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "8932",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 20,
                                            color: Color(0xffffFFB969),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                // padding: const EdgeInsets.fromLTRB(8, 0, 0, 2),
                                child: Column(
                                  children: [
                                    Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            child: Text(
                                              "서울시 동물의 숲 토도톳도 32-1",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                              Container(
                                height: displayHeight * 0.15,
                                width: displayWidth * 0.95,
                                //padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      //이미지
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                              height: displayHeight * 0.13,
                                              width: displayWidth * 0.38,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    //Padding(padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),),
                                    Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            //mainAxisAlignment:
                                            // MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_border_outlined,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // height: displayHeight*0.05,
                                          //width: displayWidth*0.54,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "튀어나와룔",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "존맛탱구리~! 여기 명란파스타 맛집임~~!",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.green,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "땟깔좋은 귀신이 될거얌",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "명란 파스타 먹고 땟깔 좋아졌다.",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text("리카르도",
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "가게 안에 고슴도치 존.귀.💝💕💗💖💞",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              )
                            ],
                            
                          ),
                          
                        ),
                         SizedBox(
                          height: 5,
                        ),
                        Container(
                          // height:
                          width: displayWidth * 0.96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffffFFB969), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                //padding: const EdgeInsets.fromLTRB(8, 5, 2, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Text(
                                          "예원 레스토랑",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        //padding:
                                        // const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "파스타 전문점",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      //좋아요랑 아이콘 오른쪽 정렬
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "좋아요",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "8932",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 20,
                                            color: Color(0xffffFFB969),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                // padding: const EdgeInsets.fromLTRB(8, 0, 0, 2),
                                child: Column(
                                  children: [
                                    Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            child: Text(
                                              "서울시 동물의 숲 토도톳도 32-1",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                              Container(
                                height: displayHeight * 0.15,
                                width: displayWidth * 0.95,
                                //padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      //이미지
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                              height: displayHeight * 0.13,
                                              width: displayWidth * 0.38,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    //Padding(padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),),
                                    Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            //mainAxisAlignment:
                                            // MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_border_outlined,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // height: displayHeight*0.05,
                                          //width: displayWidth*0.54,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "튀어나와룔",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "존맛탱구리~! 여기 명란파스타 맛집임~~!",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.green,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "땟깔좋은 귀신이 될거얌",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "명란 파스타 먹고 땟깔 좋아졌다.",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text("리카르도",
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "가게 안에 고슴도치 존.귀.💝💕💗💖💞",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                         SizedBox(
                          height: 5,
                        ),
                        Container(
                          // height:
                          width: displayWidth * 0.96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffffFFB969), width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                //padding: const EdgeInsets.fromLTRB(8, 5, 2, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Text(
                                          "예원 레스토랑",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        //padding:
                                        // const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "파스타 전문점",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      //좋아요랑 아이콘 오른쪽 정렬
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "좋아요",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "8932",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color:
                                                          Color(0xffffFFB969),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 20,
                                            color: Color(0xffffFFB969),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                // padding: const EdgeInsets.fromLTRB(8, 0, 0, 2),
                                child: Column(
                                  children: [
                                    Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            child: Text(
                                              "서울시 동물의 숲 토도톳도 32-1",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                              Container(
                                height: displayHeight * 0.15,
                                width: displayWidth * 0.95,
                                //padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      //이미지
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                              height: displayHeight * 0.13,
                                              width: displayWidth * 0.38,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    //Padding(padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),),
                                    Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            //mainAxisAlignment:
                                            // MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star_border_outlined,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // height: displayHeight*0.05,
                                          //width: displayWidth*0.54,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "튀어나와룔",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "존맛탱구리~! 여기 명란파스타 맛집임~~!",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.green,
                                                      size: 10,
                                                    ),
                                                    Text(
                                                      "땟깔좋은 귀신이 될거얌",
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "명란 파스타 먹고 땟깔 좋아졌다.",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.military_tech,
                                                      color: Colors.blue,
                                                      size: 10,
                                                    ),
                                                    Text("리카르도",
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "가게 안에 고슴도치 존.귀.💝💕💗💖💞",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ));
  }
}
