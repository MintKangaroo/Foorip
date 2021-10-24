import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:developer';

class ServerContact {
  Future<String> LoginContact() async {
    var url = Uri.parse('https://fooripbackend.herokuapp.com/');
    log("ServerContact : Rest API에서 데이터 불러오기");
    //var response =  await http.post(url, body: {"user": "python"});
    var response = await http.get(url);
    var responsedecode = utf8.decode(response.bodyBytes);
    return responsedecode;
  }

  String LoginTestServer(String ID, String PW) {
    if (ID == "" && PW == "") {
      var response = "Failed";
      return response;
    } else {
      var response = "Sucess";
      return response;
    }
  }
}
