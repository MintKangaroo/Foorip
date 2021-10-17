

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ServerContact{

  Future<String> LoginContact() async{
    var url = Uri.parse('https://fooripbackend.herokuapp.com/');
    //var response =  await http.post(url, body: {"user": "python"});
    var response = await http.get(url);
    var responsedecode = utf8.decode(response.bodyBytes);
    return responsedecode;
  }
}