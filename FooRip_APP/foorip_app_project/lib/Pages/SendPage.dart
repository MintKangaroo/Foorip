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

    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Flexible(
          flex: 1,
          child: Container(
              child: Center(
                  child: Image.asset(
            "assets/images/fooriptextlogo.png",
            height: 70,
          ))),
        ),
        Flexible(
            flex: 9,
            child: Container(
                width: displayWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  border: Border.all(color: Colors.black12, width: 3),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "보내기",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffFFB969),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(child:Row(
                    children: [
                      Text(
                        "식당명",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ))
                ]))),
      ]),
    ));
  }
}
