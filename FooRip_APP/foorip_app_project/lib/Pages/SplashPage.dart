import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    //Splash 후 페이지 이동
    Timer(Duration(seconds: 2), () => Get.offAndToNamed('/LoginPage'));

    return Scaffold(
      body: (Center(
        child: (Text('Splash', style: TextStyle(fontSize: 35),)),
      )),
    );
  }
}
