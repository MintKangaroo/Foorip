import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MyPage.dart';
import 'FavoritePage.dart';
import 'StampPage.dart';
import 'dart:developer';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //구글맵에 필요한 변수들 정의
  //구글맵 controller 초기화
  Completer<GoogleMapController> _controller = Completer();
//구글맵 카메라 위치 초기화
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.982110, 127.528039),
    zoom: 14.4746,
  );

  //구글맵 위에 위젯 보일지 말지 결정
  var _visible = false;

  Set<Marker> Makingmarker() {
    return <Marker>[
      Marker(
          draggable: false,
          markerId: MarkerId("marker_1"),
          position: LatLng(36.982110, 127.528039),
          // infoWindow: InfoWindow(title: "대금고"),
          onTap: () {
            setState(() {
              _visible = true;
            });
          })
    ].toSet();
  }

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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "푸립",
                        style: TextStyle(fontSize: 25),
                      ),
                      GestureDetector(
                        onTap: () {
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: displayWidth * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xffffdfa166).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        controller: FilterIDtextController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '필터를 선택하세요.',
                          hintStyle: TextStyle(
                              color: Color(0xffffdfa166), fontSize: 18),
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
            Expanded(
                child: Stack(children: [
              Positioned.fill(
                child: GoogleMap(
                  markers: Makingmarker(),
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    // _controller.complete(controller);
                  },
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                left: 10,
                child: Visibility(
                  visible: _visible,
                  child: Container(

                    width: displayWidth *0.5,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hello World"),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _visible = false;
                                });
                              },
                              child: Icon(Icons.close))
                          ],
                        ),
                      ],
                    )),
                ),
                )
            ])),
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
