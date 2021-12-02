import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:firebase_database/firebase_database.dart';

class ServerContact {


  String LoginTestServer(String ID, String PW) {
    if (ID == "" && PW == "") {
      var response = "Failed";
      return response;
    } else {
      var response = "Sucess";
      return response;
    }
  }

  //데이터 추가
  void User_createData() async {
    print("서버에 데이터 보내기");
    final create_UserData =
        FirebaseDatabase().reference().child('foorip');
    create_UserData.child('UserData').update(
      {
      "민트색캥거루": 
      {
        "ID": "yjun273",
         }
    }
    );
  }

  //데이터 읽기
  void User_readData() {
    final read_UserData = FirebaseDatabase().reference();
    read_UserData
        .child('foorip')
        .child('UserData')
        .child("민트색캥거루")
        .once()
        .then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
      var data = dataSnapshot.value;
      log("$data");
    });
  }

  //데이터 업데이트
  // void User_updateData() {
  //   final User_update_RestaurantData =
  //       FirebaseDatabase().reference().child('foorip').child('UserData');
  //   User_update_RestaurantData.child("000001").update({"name": "mintkangaroo"});
  // }

  //데이터 삭제
  // void User_deleteData() {
  //   final User_delete_RestaurantData =
  //       FirebaseDatabase().reference().child('foorip').child('RestaurantData');
  //   User_delete_RestaurantData.child("000001").remove();
  // }






  //데이터 추가
  void Restaurant_createData() async{
    print("서버에 데이터 보내기");
    final create_RestaurantData = FirebaseDatabase().reference().child('foorip');
    create_RestaurantData.child('RestaurantData').update(
      {
        "맛집":
        {
        "Favorite":"3",
        "Rate":"1"}
        }
    );
  }
  //데이터 읽기
  void Restaurant_readData() {
    final read_RestaurantData =
        FirebaseDatabase().reference();
    read_RestaurantData
        .child('foorip')
        .child('RestaurantData')
        .once()
        .then((DataSnapshot dataSnapshot){
          var Restaurant_data = dataSnapshot.value;
          log("$Restaurant_data");
      print(Restaurant_data);
    });
  }

  //데이터 업데이트
  // void updateData() {
  //   final update_RestaurantData =
  //       FirebaseDatabase().reference().child('foorip').child('RestaurantData');
  //       update_RestaurantData.child("000001").update({
  //         "name":"mintkangaroo"
  //       });

  // }
  //데이터 삭제
  // void deleteData() {
  //   final delete_RestaurantData =
  //       FirebaseDatabase().reference().child('foorip').child('RestaurantData');
  //   delete_RestaurantData.child("000001").remove();
  // }
}
