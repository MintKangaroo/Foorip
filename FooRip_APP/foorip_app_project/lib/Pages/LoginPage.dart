import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                child: SizedBox(),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Text("Login"),
                    Container(
                      width: 40,
                      height: 2,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.yellow,
                    ),
                    Row(
                      children: [
                        //TODO: CheckBox 구현
                        Text("로그인을 유지하겠습니까?")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex:2,
              child: Container(child: SizedBox()),
            ),
            Flexible(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //TODO: Login버튼이 눌렸을 때
                      },
                      child: Container(
                        width: 40,
                        height: 15,
                        color: Colors.yellow,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(onTap: () {}, child: Text("회원가입하러가기")),
                        GestureDetector(onTap: () {}, child: Text("아이디 찾기")),
                        GestureDetector(onTap: () {}, child: Text("비밀번호 찾기")),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 2,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: SizedBox(),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Text("카카오 로그인"),
                    ),
                    Container(
                      child: Text("구글 로그인"),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
