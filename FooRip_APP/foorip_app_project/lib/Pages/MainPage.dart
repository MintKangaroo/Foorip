import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MyPage.dart';
import 'FavoritePage.dart';
import 'StampPage.dart';
import 'dart:developer';
import 'HomePage.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //bottomNavigator 변수 정의
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    MyPage(),
    FavoritePage(),
    StampPage()
  ];

  //bottomNavigator Item 선택됐을 때
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (_onItemTapped){},
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
      ),
    );
  }
}
