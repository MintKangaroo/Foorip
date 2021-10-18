import 'package:flutter/material.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Text("푸립"),
          Container(
            child: (Column(
              children: [
                Text("보내기"),
                Row(
                  children: [
                    Text("식당명"),
                    Container(
                      width: 35,
                      height: 10,
                      child: (Text("예원 레스토랑")),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("키워드"),
                    Container(
                      width: 35,
                      height: 15,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("위치"),
                    Container(
                      width: 35,
                      height: 10,
                      child: (Text("서울시 동물의숲 토도돗도 32-1")),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("번호"),
                    Container(
                      width: 35,
                      height: 10,
                      child: (Text("043-250-7877")),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("사진"),
                    Container(
                      width: 35,
                      height: 10,
                    )
                  ],
                ),
                Text("추천이유"),
                Container(
                  width: 40,
                  height: 25,
                ),
                GestureDetector(
                    onTap: () {
                      //TODO: 보내기 버튼
                    },
                    child: Container(
                      width: 20,
                      height: 10,
                      child: (Text("보내기")),
                    ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
