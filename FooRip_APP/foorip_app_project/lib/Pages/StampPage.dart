import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:developer';

class StampPage extends StatefulWidget {
  const StampPage({Key? key}) : super(key: key);

  @override
  _StampPageState createState() => _StampPageState();
}

class _StampPageState extends State<StampPage> {
  //구글맵에 필요한 변수들 정의
  //구글맵 controller 초기화
  Completer<GoogleMapController> _controller = Completer();
//구글맵 카메라 위치 초기화
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.982110, 127.528039),
    zoom: 14.4746,
  );

  Set<Marker> Makingmarker() {
    return <Marker>[
      Marker(
          draggable: false,
          markerId: MarkerId("marker_1"),
          position: LatLng(36.982110, 127.528039),
          infoWindow: InfoWindow(title: "대금고"),
          onTap: () {
            Get.dialog(Container(
              height: 100,
              child: Text("Hello World"),
            ));
          })
    ].toSet();
  }

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
    } else if (index == 0) {
      Get.offAllNamed('/MainPage');
    } else {
      setState(() {
        _selectedIndex = index;
        Get.toNamed(_children[index]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            Flexible(
                child: Container(
                    child: GoogleMap(
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomGesturesEnabled: true,
              tiltGesturesEnabled: false,
              rotateGesturesEnabled: false,
              markers: Makingmarker(),
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                // _controller.complete(controller);
              },
              onCameraMove: (CameraPosition cameraPosition) {
                print(cameraPosition.zoom);
              },
            )))
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
        ));
  }
}
