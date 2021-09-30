import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Column(
              children: [
                Row(
                  children: [],
                ), //TODO: 앱 이름과 식당 이름 추가
                Container(),//TODO: 필터 검색 
              ],
            ),
            flex: 1,
          ),
          Flexible(
            child: Container(color: Colors.yellow), //TODO:  여기에 지도 구현하기
            flex: 5,
          ),
        ],
      ),
      //TODO: BottomNavigatorBar 구현
    );
  }
}
