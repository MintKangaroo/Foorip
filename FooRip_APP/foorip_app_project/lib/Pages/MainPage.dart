import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:foorip_app_project/Function/GoogleMapFun.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //필터 검색 입력창 변수 정의
  final FilterIDtextController = new TextEditingController();

  
  //bottomNavigator 변수 정의
  int _selectedIndex = 0;
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

  //Send 버튼이 클릭됐을 때 SendPage로 이동하는 함수
  void MovetoSend() {
    Get.toNamed('/SendPage');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: displayHeight * 0.15,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text("푸립", style: TextStyle(fontSize: 25),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: GestureDetector(
                          onTap: (){
                            MovetoSend();
                          },
                          child: Container(
                              width: 50,
                              height: 30,
                              color: Colors.orange,
                              child: Icon(
                                Icons.send,
                              ),
                              ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,)
                  ,
                  Container(
                    
                    width: displayWidth * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xffffdfa166).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        controller: FilterIDtextController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '필터를 선택하세요.',
                          hintStyle:
                              TextStyle(color: Color(0xffffdfa166), fontSize: 18),
                          suffixIcon: Icon(
                            Icons.tune,
                            size: 30,
                            color: Color(0xffffdfa166),
                          ),
                        ),
                      ),
                    ),
                  ),
                ], 
              ),
            ),
            Expanded(child: GoogleMapArea()),
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
        ),
      ),

      
    );
    
  }

}
