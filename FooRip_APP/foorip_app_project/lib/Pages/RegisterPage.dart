import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'dart:developer';
import 'package:foorip_app_project/Function/ServerContact.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //TextField에서 아이디, PW 입력 받아 저장하는 변수
  String RegisterEmailtextController = "";
  String RegisterPWtextController = "";
  String RegisterPWagaintextController = "";
  String RegisterIDtextController = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

    return SafeArea(
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

                child: Column(
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 28,
                            ),
                            Container(
                              width: 290,
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return '아이디를 입력하세요';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  RegisterIDtextController = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      Color(0xffffdfa166).withOpacity(0.4),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xffffdfa166).withOpacity(0.4),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffffdfa166)
                                            .withOpacity(0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
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
                              child: TextFormField(
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return '비밀번호를 입력하세요';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  RegisterPWtextController = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      Color(0xffffdfa166).withOpacity(0.4),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xffffdfa166).withOpacity(0.4),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffffdfa166)
                                            .withOpacity(0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
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
                              child: TextFormField(
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return '비밀번호를 입력하세요';
                                  }
                                  else if(RegisterPWtextController != value){
                                    return null;
                                  }
                                  return '입력한 비밀번호와 다릅니다!';
                                },
                                onSaved: (value) {
                                  RegisterPWagaintextController = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      Color(0xffffdfa166).withOpacity(0.4),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xffffdfa166).withOpacity(0.4),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffffdfa166)
                                            .withOpacity(0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
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
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              width: 290,
                              child: TextFormField(
                                textInputAction: TextInputAction.send,
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return '이메일을 입력하세요';
                                  }
                                   else if (!RegExp(
                                          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                      .hasMatch(value)) {
                                    return '유효한 이메일을 입력해 주세요';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  RegisterEmailtextController = value!;
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      Color(0xffffdfa166).withOpacity(0.4),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xffffdfa166).withOpacity(0.4),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffffdfa166)
                                            .withOpacity(0.4),
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
                                  hintText: '이메일 입력',
                                  hintStyle: TextStyle(
                                    color: Color(0xffffdfa166),
                                    fontSize: 18,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email,
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

                  child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        //TODO: (수정)서버에 데이터 보내기
                      
                        print("로그인 화면으로 이동합니다");
                        _formKey.currentState!.save();
                        ServerContact().User_createData(
                            RegisterIDtextController,
                            RegisterPWagaintextController,
                            RegisterEmailtextController);
                        print(RegisterIDtextController);
                        print(RegisterPWtextController);
                        print(RegisterPWagaintextController);
                        print(RegisterEmailtextController);
                        MovetoLogin();
                      }
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
              SizedBox(height: 50),
              //7
            ],
          ),
        ),
      ),
    );
  }
}
