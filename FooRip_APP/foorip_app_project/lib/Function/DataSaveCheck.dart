import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  String ID = "";
  String Password = "";


  CheckData() async {
    final prefs = await SharedPreferences.getInstance();
    final ID = prefs.getString("ID") ?? null;
    if (ID != null) {
      return "Sucess";
    } else {
      return "Failed";
    }
  }

  AutoLogin(String ID, String PW) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("ID", ID);
    prefs.setString("PW", PW);
  }

  LogOutData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
