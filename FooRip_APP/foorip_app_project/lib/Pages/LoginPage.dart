import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:foorip_app_project/Function/ServerContact.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/DataSaveCheck.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TextField에서 아이디, PW 입력 받아 저장하는 변수
  final LoginIDtextController = new TextEditingController();
  final TextEditingController LoginPWtextController =
      new TextEditingController();

  //checkBox 변수 정의
  bool _isChecked = false;

  //회원가입 버튼 or 로그인 버튼이 클릭됐을 때 Main or Register로 이동하는 함수
  void MovetoMain() {
    Get.offAndToNamed('/MainPage');
  }

  void MovetoRegister() {
    Get.toNamed('/RegisterPage');
  }

  //로그인 유지 체크하는 변수
  var DataSaveCheckFun = new UserData();

  //로그인 서버와 연동 함수 정의

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
                  height: displayHeight * 0.1,
                  child: SizedBox(),
                ),
                Container(
                  height: displayHeight * 0.09,
                  child: Column(
                    children: [
                      Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 28,
                            color: Color(0xffffb969),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: displayWidth * 0.8,
                        height: 5,
                        color: Color(0xffffb969),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: displayHeight * 0.25,
                  child: Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          Container(
                            width: displayWidth * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffffdfa166).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: TextFormField(
                              controller: LoginIDtextController,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '아이디를 입력하세요.',
                                hintStyle: TextStyle(
                                    color: Color(0xffffdfa166), fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  size: 30,
                                  color: Color(0xffffdfa166),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: displayWidth * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xffffdfa166).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: TextFormField(
                              controller: LoginPWtextController,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '비밀번호를 입력하세요.',
                                hintStyle: TextStyle(
                                    color: Color(0xffffdfa166), fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: Color(0xffffdfa166),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: displayWidth * 0.8,
                        child: Row(
                          children: [
                            Checkbox(
                                value: _isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = !_isChecked;
                                  });
                                }),
                            Text(
                              "로그인을 유지하겠습니까?",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: displayHeight * 0.03, child: SizedBox()),
                Container(
                  height: displayHeight * 0.15,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          log("LoginPage : ServerContact 함수로 호출 후 Return 받기");
                          log("LoginPage : 만약 Return 값이 True이면 MainPage로 이동");
                          //TODO: (수정)서버와의 통신
                          ServerContact().User_readData();
                          
                          //로그인 확인
                          var response = ServerContact().LoginTestServer(
                              LoginIDtextController.text,
                              LoginPWtextController.text);
                          if (response == "Sucess") {
                            if (_isChecked == true) {
                              //로그인 유지하기
                              DataSaveCheckFun.AutoLogin(
                                  LoginIDtextController.text,
                                  LoginPWtextController.text);
                            }

                            MovetoMain();
                          } else {
                            Get.snackbar("", "로그인에 실패했습니다",
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                        child: Container(
                            width: displayWidth * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Center(
                                  child: Text("로그인",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                            ),
                            color: Color(0xffffb969)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  MovetoRegister();
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Container(
                                      child: Text("회원가입",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: -0.5,
                                            fontSize: 16,
                                            color: Color(0xffffb969),
                                          ))),
                                )),
                            Container(
                              height: 15,
                              width: 2,
                              color: Color(0xffffb969),
                            ),
                            GestureDetector(
                                onTap: () {

                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Container(
                                      child: Text(
                                    "아이디 찾기",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.5,
                                      fontSize: 16,
                                      color: Color(0xffffb969),
                                    ),
                                  )),
                                )),
                            Container(
                              height: 15,
                              width: 2,
                              color: Color(0xffffb969),
                            ),
                            GestureDetector(
                                onTap: () {
                      
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Container(
                                      child: Text(
                                    "비밀번호 찾기",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.5,
                                      fontSize: 16,
                                      color: Color(0xffffb969),
                                    ),
                                  )),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: displayWidth * 0.8,
                        height: 5,
                        color: Color(0xffffb969),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: displayHeight * 0.09,
                  child: SizedBox(),
                ),
                Container(
                  height: displayHeight * 0.16,
                  child: Column(
                    children: [
                      Container(
                        child: Text("카카오 로그인"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text("구글 로그인"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
