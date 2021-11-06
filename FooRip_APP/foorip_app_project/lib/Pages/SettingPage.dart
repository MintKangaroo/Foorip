import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/DataSaveCheck.dart';
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
      statusBarColor: Colors.grey 
      , // 원하는 색
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
                height: displayHeight*0.1,
                width: displayWidth * 1,
                child: Image.asset("assets/images/fooriptextlogo.png"),
                
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),//왼 위 오 아래
                height: displayHeight * 0.05,
                width: displayWidth *1,
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
