import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("회원가입"),
          Container(
            width: 40,
            height: 2,
          ),
          Container(
            width: 40,
            height: 10,
            child: (Text("아이디를 입력하세요")),
          ),
          Container(
            width: 40,
            height: 10,
            child: (Text("비밀번호를 입력하세요")),
          ),
          Container(
            width: 40,
            height: 10,
            child: (Text("비밀번호를 재입력하세요")),
          ),
          GestureDetector(
            onTap: (){
              //TODO: 가입하기 버튼
            },
            child: Container(
              width: 40,
              height: 15,
            )),
          Container(
            width: 40,
            height: 2,
          ),
        ],
      ),
    );
  }
}