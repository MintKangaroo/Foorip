import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MyPage.dart';
import 'FavoritePage.dart';
import 'StampPage.dart';
import 'dart:developer';
import 'package:location/location.dart';
import 'package:get/get.dart';
import 'package:foorip_app_project/Function/ServerContact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //구글맵에 필요한 변수들 정의
  //구글맵 controller 초기화
  Completer<GoogleMapController> _controller = Completer();

  double lat = 37.579524;
  double lot = 126.977050;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  //현재 위치를 찾는 함수
  Future<void> getLocation() async {
    final position = await Location().getLocation();
    lat = position.latitude!;
    lot = position.longitude!;
    print(lat);
    print(lot);
    setState(() {
      lat = position.latitude!;
      lot = position.longitude!;
    });
  }

  //구글맵 위에 위젯 보일지 말지 결정
  var _visible = false;

  Set<Marker> Makingmarker() {
    return <Marker>[
      Marker(
          draggable: false,
          markerId: MarkerId("marker_1"),
          position: LatLng(37.686349799999995, 127.842057),
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

  //Send 버튼이 클릭됐을 때 SendPage, FoodInformationPage로 이동하는 함수
  void MovetoSend() {
    Get.toNamed('/SendPage');
  }

  //FoodInformationPage로 이동
  void MovetoFoodInform() {
    Get.toNamed('/FoodInformation');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    //구글맵 카메라 위치 초기화
    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(lat, lot),
      zoom: 15.5,
    );

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  //상단 로고 영역
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: displayWidth * 0.001,
                      ),
                      SizedBox(width: displayWidth * 0.13),
                      SizedBox(
                        width: displayWidth * 0.15,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: displayHeight * 0.065,
                        //width: displayWidth * 1,
                        child: Image.asset("assets/images/fooriptextlogo.png"),
                      ),
                      SizedBox(
                        width: displayWidth * 0.15,
                      ),
                      GestureDetector(
                        onTap: () {
                          MovetoSend();
                        },
                        child: Container(
                          width: displayWidth * 0.13,
                          height: displayHeight * 0.045,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XffffFFB969),
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: displayWidth * 0.001),
                    ],
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
              GoogleMap(
                mapToolbarEnabled: false,
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
                  controller.animateCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                    target: LatLng(lat, lot),
                    zoom: 15.5,
                  )));
                  // _controller.complete(controller);
                },
                onCameraMove: (CameraPosition cameraPosition) {
                  print(cameraPosition.zoom);
                  print(cameraPosition.target);
                },
              ),
              Positioned(
                bottom: 5,
                right: 10,
                left: 10,
                child: GestureDetector(
                  onDoubleTap: () {
                    //TODO: (수정)서버 통신
                    ServerContact().Restaurant_readData();
                    MovetoFoodInform();
                  },
                  child: Visibility(
                    visible: _visible,
                    child: SizedBox(
                      height: 150,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Container(
                                    width: displayWidth * 0.9,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: displayWidth * 0.9,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xffffFFB969),
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                //padding: const EdgeInsets.fromLTRB(8, 5, 2, 0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        child: Text(
                                                          "예원 레스토랑",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Center(
                                                      child: Container(
                                                        //padding:
                                                        // const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Text(
                                                              "파스타 전문점",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      //좋아요랑 아이콘 오른쪽 정렬
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            child: Column(
                                                              // crossAxisAlignment:
                                                              //     CrossAxisAlignment.end,
                                                              children: [
                                                                Text(
                                                                  "좋아요",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Color(
                                                                          0xffffFFB969),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                                Text(
                                                                  "8932",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Color(
                                                                          0xffffFFB969),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.favorite,
                                                            size: 20,
                                                            color: Color(
                                                                0xffffFFB969),
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  _visible =
                                                                      false;
                                                                });
                                                              },
                                                              child: Icon(
                                                                  Icons.close))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // padding: const EdgeInsets.fromLTRB(8, 0, 0, 2),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                        // mainAxisAlignment:
                                                        //     MainAxisAlignment.start,
                                                        children: [
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              "서울시 동물의 숲 토도톳도 32-1",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ])
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: displayHeight * 0.11,
                                                width: displayWidth * 0.95,
                                                //padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Container(
                                                      //이미지
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 6,
                                                          ),
                                                          Container(
                                                              height:
                                                                  displayHeight *
                                                                      0.1,
                                                              width:
                                                                  displayWidth *
                                                                      0.38,
                                                              color:
                                                                  Colors.grey),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    //Padding(padding: const EdgeInsets.fromLTRB(8, 3, 3, 8),),
                                                    Container(
                                                        child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            //mainAxisAlignment:
                                                            // MainAxisAlignment.start,
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .orange,
                                                                size: 20,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .orange,
                                                                size: 20,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .orange,
                                                                size: 20,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .orange,
                                                                size: 20,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border_outlined,
                                                                color: Colors
                                                                    .orange,
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // height: displayHeight*0.05,
                                                          //width: displayWidth*0.54,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .military_tech,
                                                                      color: Colors
                                                                          .blue,
                                                                      size: 10,
                                                                    ),
                                                                    Text(
                                                                      "튀어나와룔",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            9,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Text(
                                                                "존맛탱구리~! 여기 명란파스타 맛집임~~!",
                                                                style: TextStyle(
                                                                    fontSize: 9,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Container(
                                                                child: Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .military_tech,
                                                                      color: Colors
                                                                          .green,
                                                                      size: 10,
                                                                    ),
                                                                    Text(
                                                                      "땟깔좋은 귀신이 될거얌",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            9,
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Text(
                                                                "명란 파스타 먹고 땟깔 좋아졌다.",
                                                                style: TextStyle(
                                                                    fontSize: 9,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Container(
                                                                child: Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .military_tech,
                                                                      color: Colors
                                                                          .blue,
                                                                      size: 10,
                                                                    ),
                                                                    Text("리카르도",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9,
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ),
                                                              Text(
                                                                "가게 안에 고슴도치 존.귀.💝💕💗💖💞",
                                                                style: TextStyle(
                                                                    fontSize: 9,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                ),
              )
            ])),
          ],
        ),
      ),
    );
  }
}
