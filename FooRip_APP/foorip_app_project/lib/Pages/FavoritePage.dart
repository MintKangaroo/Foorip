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
    } else if (index == 0) {
      Get.offAllNamed('/MainPage');
    } else {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Image.asset("assets/images/fooriptextlogo.png",
                              height: 70),
                          padding: const EdgeInsets.fromLTRB(130, 0, 0, 0)),
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
                    width: displayWidth * 0.9,
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
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  width: displayWidth * 0.9,
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                            ),
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                            ),
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
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                            ),
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
                        width: 5,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  // height: 100,
                  width: displayWidth * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(3, 3, 3, 0),
                        child: Row(
                          children: [
                            Text(
                              "예원 레스토랑",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "파스타 전문점",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              //좋아요랑 아이콘 오른쪽 정렬 안 됨
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                        
                                  Container(
                                    //width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      //crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "좋아요",
                                          style: TextStyle(
                                              fontSize: 7,
                                              color: Colors.orange),
                                        ),
                                        Text(
                                          "8932",
                                          style: TextStyle(
                                              fontSize: 7,
                                              color: Colors.orange),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 25,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[ 
                                Container(
                                child: Text(
                                  "서울시 동물의 숲 토도톳도 32-1",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),]
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                                height: 40, width: 55, color: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 3, 3, 5),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
