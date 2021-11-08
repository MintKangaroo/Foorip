import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/DataSaveCheck.dart';
import 'package:foorip_app_project/Pages/MyPage.dart';
import 'package:get/get.dart';
import 'LoginPage.dart';
import 'package:flutter/services.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var DataSaveCheck = new UserData();
  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    //상단 statusBar 삭제
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    //statusBar 색상 변경
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[300], // 원하는 색
    ));
    //ststusBar 글자 색 변경하고 싶다

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: displayWidth * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: displayHeight * 0.065,
                width: displayWidth * 1,
                child: Image.asset("assets/images/fooriptextlogo.png"),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 300, 500), //왼 위 오 아래
                height: displayHeight * 0.09,
                width: displayWidth * 1,
                child: InkWell(//이거 왜 안될까요?
                  onTap: () {
                    Get.toNamed('/MainPage');
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 35,
                  ),
                ),
              ),
              Container(
                  //color: Colors.black,
                  width: displayWidth * 0.8,
                  child: Column(
                    children: [
                      //문의사항
                      Container(
                        //color: Colors.grey[100],
                        height: displayHeight * 0.08,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(6, 0, 0, 0)),
                            Icon(
                              Icons.help_outline,
                              size: 25,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                            Text(
                              "문의사항",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    131, 0, 0, 0)), //왼 위 오 아래
                            Icon(
                              Icons.chevron_right_rounded,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffffC4C4C4),
                      ),
                      //로그아웃
                      Container(
                        //color: Colors.grey[100],
                        height: displayHeight * 0.08,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(6, 0, 0, 0)),
                            Icon(
                              Icons.logout,
                              size: 25,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                            Text(
                              "로그아웃",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(
                                    131, 0, 0, 0)), //왼 위 오 아래
                            InkWell(
                              onTap: () {
                                DataSaveCheck.LogOutData();
                                Get.offAll(LoginPage());
                              },
                              child: Icon(
                                Icons.chevron_right_rounded,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffffC4C4C4),
                      ),
                      //버전
                      Container(
                        //color: Colors.grey[100],
                        height: displayHeight * 0.08,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(6, 0, 0, 0)),
                            Icon(
                              Icons.language_rounded,
                              size: 25,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                            Text(
                              "v. 1. 1. 0",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Color(0xffffC4C4C4),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
