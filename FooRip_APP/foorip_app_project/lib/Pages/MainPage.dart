import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //구글맵 controller 초기화
  Completer<GoogleMapController> _controller = Completer();
  //구글맵 카메라 위치 초기화
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.982110, 127.528039),
    zoom: 14.4746,
  );
  


  //bottomNavigator 변수 정의
  int _selectedIndex = 0;
  final List _children = ['/MainPage', '/MyPage', '/Cafe', '/Setting'];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      setState(() {
        _selectedIndex = index;
        Navigator.pushNamed(context, _children[index]);
      });
    }
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
            Flexible(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("푸립", style: TextStyle(fontSize: 25),),
                      Container(
                          //TODO: SendPage로 이어짐
                          )
                    ],
                  ),
                  Container(), //TODO: 필터 검색
                ],
              ),
              flex: 1,
            ),
            Flexible(
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ), //구글맵 구현
              flex: 5,
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
        ),
      ),
    );
  }
}
