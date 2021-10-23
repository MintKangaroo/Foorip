import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';


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

  void MovetoSetting(){
    Get.toNamed('/SettingPage');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
          body: Column(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 25,),
                        Image.asset("assets/images/fooriptextlogo.png",width: displayWidth*0.4,),
                        GestureDetector(
                          onTap: (){
                            MovetoSetting();
                          },
                          child: Icon(Icons.settings, size: 35,))
                      ],
                    ),

                  ],
                )
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(),
                            Text("ACHIEVEMENTS"),
                            Spacer(),
                            Container(),
                            SizedBox(),
                          ],
                        )
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
