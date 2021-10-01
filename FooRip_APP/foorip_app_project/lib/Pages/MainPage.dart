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

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("푸립"),
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
      //TODO: BottomNavigatorBar 구현
    );
  }
}
