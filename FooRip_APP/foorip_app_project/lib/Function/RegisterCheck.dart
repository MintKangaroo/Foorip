import 'package:flutter/material.dart';

class RegisterCheck {
  String RegisterEmailCheck(FocusNode focousNode,String CheckingEmail) {
    if (CheckingEmail.isEmpty) {
      focousNode.requestFocus();
      return "이메일을 입력하세요.";
    } else if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(CheckingEmail)) {
          focousNode.requestFocus();
      return "옳바른 이메일을 입력하세요.";
    } else {
      return "";
    }
  }

  String RegisterPWCheck() {
    return "";
  }
}
