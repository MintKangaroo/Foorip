import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StampPage extends StatefulWidget {
  const StampPage({ Key? key }) : super(key: key);

  @override
  _StampPageState createState() => _StampPageState();
}

class _StampPageState extends State<StampPage> {
  //bottomNavigator 변수 정의
  int _selectedIndex = 3;
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
    } else {
      setState(() {
        _selectedIndex = index;
        Get.toNamed(_children[index]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(),
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
        ));
  }
}