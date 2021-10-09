import 'package:http/http.dart' as http;
import 'dart:async';

class ServerContact{

  Future<String> LoginContact() async{
    var url = Uri.parse('http://127.0.0.1:5000/UserData');
    var response =  await http.post(url, body: {"user": "python"});
    print(response);
    return "response";
  }
}