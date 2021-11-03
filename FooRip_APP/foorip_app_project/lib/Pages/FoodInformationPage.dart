import 'package:flutter/material.dart';

class FoodInformationPage extends StatefulWidget {
  const FoodInformationPage({Key? key}) : super(key: key);

  @override
  _FoodInformationPageState createState() => _FoodInformationPageState();
}

class _FoodInformationPageState extends State<FoodInformationPage> {
  @override
  Widget build(BuildContext context) {
    //필터 검색 입력창 변수 정의
    final FI_FilterIDtextController = new TextEditingController();

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "푸립",
                        style: TextStyle(fontSize: 25),
                      ),
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
                        controller: FI_FilterIDtextController,
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
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Container(
                          height: displayHeight * 0.08,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "캥거루 고깃집",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "캥거루 고기 전문점",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: displayHeight * 0.17,
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Text(
                                      "좋아요",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffffFFB969),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "8932",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffffFFB969),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "위치:서울시 동물의숲 켕케도섬 44-4",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "영업시간:매주 금요일 휴업",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tel.010-4484-4444",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    Container(//이미지 넣음 됨

                        )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
