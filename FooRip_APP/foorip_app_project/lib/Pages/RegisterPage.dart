import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //회원가입 버튼이 클릭됐을 때 Main or Login으로 이동하는 함수
  void MovetoMain() {
    Get.offAndToNamed('/MainPage');
  }

  void MovetoLogin() {
    Get.toNamed('/LoginPage');
  }

  @override
  Widget build(BuildContext context) {
    //Display width, height 구하기
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //1
                  height: 73,
                  child: SizedBox(),
                ),
                Container(
                  //2
                  height: 63,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "회원가입",
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xffffb969),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 300,
                        height: 5,
                        color: Color(0xffffb969),
                      ),
                    ],
                  ),
                ),
                Container(
                  //3
                  height: 165,
                  child: Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Container(
                            width: 290,
                            decoration: BoxDecoration(
                              color: Color(0xffffdfa166).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '아이디 입력',
                                hintStyle: TextStyle(
                                  color: Color(0xffffdfa166),
                                  fontSize: 18,
                                ),
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  size: 30,
                                  color: Color(0xffffdfa166),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            width: 290,
                            decoration: BoxDecoration(
                              color: Color(0xffffdfa166).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '비밀번호 입력',
                                hintStyle: TextStyle(
                                  color: Color(0xffffdfa166),
                                  fontSize: 18,
                                ),
                                prefixIcon: Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: Color(0xffffdfa166),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            width: 290,
                            decoration: BoxDecoration(
                              color: Color(0xffffdfa166).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: TextField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '비밀번호 재입력',
                                hintStyle: TextStyle(
                                  color: Color(0xffffdfa166),
                                  fontSize: 18,
                                ),
                                prefixIcon: Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: Color(0xffffdfa166),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  //4
                  height: 100,
                ),
                Container(
                    //5
                    height: 100,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            MovetoLogin();
                          },
                          child: Container(
                            height: 70,
                            width: 290,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Center(
                                child: Text(
                                  "가입하기",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            color: Color(0xffffb969),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 5,
                          color: Color(0xffffb969),
                        ),
                      ],
                    )),
                Container(
                  //6
                  height: 50,
                  child: SizedBox(),
                ),
                SizedBox(
                  height: 50
                ),
                  //7
                ],
            ),
          ),
        ),
      ),
    );
  }
}
