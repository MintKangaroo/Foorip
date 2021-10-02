import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

//구글맵 controller 초기화
Completer<GoogleMapController> _controller = Completer();
//구글맵 카메라 위치 초기화
final CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(36.982110, 127.528039),
  zoom: 14.4746,
);

//구글맵 Widget 구현
Widget GoogleMapArea() {
  return GoogleMap(
    mapType: MapType.normal,
    initialCameraPosition: _kGooglePlex,
    onMapCreated: (GoogleMapController controller) {
      _controller.complete(controller);
    },
  );
}
