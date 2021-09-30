import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          Container(
            width: 40,
            height: 2,
          ),
          Container(
            width: 40,
            height: 10,
          ),
          Container(
            width: 40,
            height: 10,
          ),
          Row(children: [
            //TODO: CheckBox 구현
            Text("로그인을 유지하겠습니까?")
          ],),
          GestureDetector(
            onTap: (){
              //TODO: Login버튼이 눌렸을 때
            },
            child: Container(
              width: 40,
              height: 15,
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Text("회원가입하러가기")),
                GestureDetector(
                onTap: (){},
                child: Text("아이디 찾기")),
                GestureDetector(
                onTap: (){},
                child: Text("비밀번호 찾기")),
            ],
          ),
          Container(
            width: 40,
            height: 2,
          ),
          Container(child: Text("카카오 로그인"),),
          Container(child: Text("구글 로그인"),)
        ],
      ),
    );
  }
}