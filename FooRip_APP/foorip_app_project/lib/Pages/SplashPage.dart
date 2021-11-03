import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String NextPage = "";

  @override
  void initState() {
    super.initState();
    CheckData();
  }

  //자동로그인 (기기에 저장돼있는 ID값 불러오는 함수)
  CheckData() async {
    final prefs = await SharedPreferences.getInstance();
    final ID = prefs.getString("ID") ?? "null";
    if (ID != "null") {
      setState(() {
        NextPage = "main";
      });
    } else {
      setState(() {
        NextPage = "login";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    if (NextPage == "main") {
      Timer(Duration(seconds: 2), () => Get.offAndToNamed('/MainPage'));
    } else if (NextPage == "login") {
      Timer(Duration(seconds: 2), () => Get.offAndToNamed('/LoginPage'));
    } else {
      print("Page 이동 Erroe in SplashPage ");
    }

    return Scaffold(
      body: (Center(
        child: Image.asset(
          "assets/images/fooriplogo.png",
          width: 100,
        ),
      )),
    );
  }
}
