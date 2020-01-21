import 'dart:async' show Future;
import 'dart:convert';
import 'package:demoproject/Model/UserLoginInfoModel.dart';
import 'package:flutter/services.dart' show rootBundle;




class Serialition{

List<UserLoginInfo> userList = [];
// Future is used to load the data from json file asynchronously.
 Future<Map> loadShowData() async {
   
  // List<UserLoginInfo> userList = [];
  //This statement is used to serialize the json into string.
  String data = await rootBundle.loadString("JSONFiles/userInfo.json");

  var jsonString= jsonDecode(data);
   
  
  // for(var data in jsonString){
  //      userList.add(new UserLoginInfo(data['email'],data['mobile']));
  //   }

  // return userList;
  
//  userList.forEach((someData){
//    if(someData.email=="pramod@gmail.com")
//    //print("email: ${someData.email}");
//      print("email: ${someData.mobile}");
//     }
//    );


//This statement is used to decode the json data into map variable.
Map userMap = jsonDecode(jsonString);
// var user = UserLoginInfo.fromJson(userMap);
return userMap;
// List userList = jsonDecode(jsonString);

// var user = UsersLoginList.fromJson(userList);

 //print(user);

//print('Howdy, ${user.username}!');
 //print('We sent the verification link to ${user.email}.');

//return user.email;
}

 

}