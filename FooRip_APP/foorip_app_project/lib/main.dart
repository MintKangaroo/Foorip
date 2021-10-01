import 'package:flutter/material.dart';
import 'package:get/get.dart';

//라우트를 위한 다트 파일 가져오기
import 'Pages/SplashPage.dart';
import 'Pages/MainPage.dart';
import 'Pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'FOORIP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: '/',
        getPages: [
          // TODO: 페이지 추가할 때 라우트 추가하기
          GetPage(name: '/', page: () => SplashPage()),
          GetPage(name: '/MainPage', page: () => MainPage()),
          GetPage(name: '/LoginPage', page: () => LoginPage()),
        ]);
  }
}
