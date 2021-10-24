import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/DataSaveCheck.dart';
import 'package:get/get.dart';
import 'LoginPage.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

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
    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("로그아웃"),
              Container(
                child: GestureDetector(
                  onTap: (){
                    DataSaveCheck.LogOutData();
                    Get.offAll(LoginPage());
                  },
                  child: Icon(Icons.settings)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}