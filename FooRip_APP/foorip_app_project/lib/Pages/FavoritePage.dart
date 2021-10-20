import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  //bottomNavigator 변수 정의
  int _selectedIndex = 2;
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
    }
    else if (index == 0) {
      Get.offAllNamed('/MainPage');
    } 
     else {
      setState(() {
        _selectedIndex = index;
        Get.toNamed(_children[index]);
      });
    }
  }

  //send아이콘 클릭시 보내기 페이지로 이동
  void MovwtoSend() {
    Get.toNamed('/Sendpage');
  }

  //필터 검색 입력창 변수 정의
  final FilterIDtextController = new TextEditingController();

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
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/images/fooriptextlogo.png",
                          height: 70),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: GestureDetector(
                          onTap: () {
                            MovwtoSend();
                          },
                          child: Container(
                            width: 50,
                            height: 30,
                            color: Colors.orange,
                            child: Icon(Icons.send),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    width: displayWidth * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xffffdfa166).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextField(
                        controller: FilterIDtextController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '필터를 선택하세요',
                            hintStyle: TextStyle(
                                color: Color(0xffffdfa166), fontSize: 18),
                            suffixIcon: Icon(
                              Icons.tune,
                              size: 30,
                              color: Color(0xffffdfa166),
                            )),
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      Text("파스타"),
                      GestureDetector(
                        onTap: () {
                          //TODO: 지워지는 기능 구현
                        },
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffdfa166),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text("양식"),
                      GestureDetector(
                        onTap: () {
                          //TODO: 지워지는 기능 구현
                        },
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffdfa166),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text("감성"),
                      GestureDetector(
                        onTap: () {
                          //TODO: 지워지는 기능 구현
                        },
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffdfa166),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: displayWidth * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "예원 레스토랑",
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "파스타 전문점",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "좋아요",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.orange),
                                  ),
                                  Text(
                                    "8932",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.orange),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
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
            )));
  }
}
