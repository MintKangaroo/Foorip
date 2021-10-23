import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  //bottomNavigator 변수 정의
  int _selectedIndex = 1;
  final List _children = [
    '/MainPage',
    '/MyPage',
    '/FavoritePage',
    '/StampPage'
  ];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    } else if (index == 0) {
      Get.offAllNamed('/MainPage');
    } else {
      setState(() {
        _selectedIndex = index;
        Get.toNamed(_children[index]);
      });
    }
  }

  void MovetoSetting() {
    Get.toNamed('/SettingPage');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFFB969),
          body: Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 35,
                          ),
                          Image.asset(
                            "assets/images/fooriptextlogo.png",
                            width: displayWidth * 0.4,
                          ),
                          GestureDetector(
                              onTap: () {
                                MovetoSetting();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.settings,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      new CircularPercentIndicator(
                        radius: 150.0,
                        animation: true,
                        animationDuration: 2000,
                        lineWidth: 10.0,
                        percent: 0.7,
                        progressColor: Colors.red,
                        backgroundColor: Colors.red.withOpacity(0.3),
                        center: new CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.white,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/fooriplogo.png",
                                ),
                                
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "민트 캥거루",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("등급")
                    ],
                  )),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              SizedBox(),
                              Text(
                                "ACHIEVEMENTS",
                                style: TextStyle(
                                    color: Color(0xffFFB969),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: Color(0xffFFB969),
                                      ),
                                      Text(
                                        "1,265",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xffFFB969)),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Color(0xffFFB969), width: 2)),
                              ),
                              SizedBox(),
                            ],
                          ),
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.15",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.18",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.15",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.18",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.15",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.18",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.15",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2023.05.18",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Container(
                                      width: displayWidth * 0.75,
                                      height: 3,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "까만 목티랑 청바지부터 사 주세요!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+5",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "주식 시장에서 기업 업적으로 인해",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+10",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "성취해 놓은 일이나 이룩해 놓은 성과",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 40, 0),
                                          child: Text(
                                            "+30",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: (_onItemTapped),
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xffffb969),
                ),
                icon: Icon(
                  Icons.home,
                  color: Color(0xffffb969).withOpacity(0.5),
                  size: 30,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.account_box,
                  color: Color(0xffffb969),
                ),
                icon: Icon(
                  Icons.account_box,
                  color: Color(0xffffb969).withOpacity(0.5),
                  size: 30,
                ),
                label: "MyPage",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: Color(0xffffb969),
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Color(0xffffb969).withOpacity(0.5),
                  size: 30,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.military_tech,
                  color: Color(0xffffb969),
                ),
                icon: Icon(
                  Icons.military_tech,
                  color: Color(0xffffb969).withOpacity(0.5),
                  size: 30,
                ),
                label: "Medal",
              ),
            ],
          )),
    );
  }
}
