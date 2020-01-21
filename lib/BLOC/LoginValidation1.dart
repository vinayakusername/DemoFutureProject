import 'package:demoproject/Model/UserLoginInfoModel.dart';
import 'package:demoproject/Utility/Serialition.dart';

class LoginValidation1
{
 
  List <UserLoginInfo> userList = [];
  Future<void> userValidation() async {
      // List<UserLoginInfo> userList1 = []; 
      //       userList1 = await new Serialition().loadShowData();
      Map userInfoMap = await new Serialition().loadShowData();
      //Below code is written for converting map to list.
      userInfoMap.entries.forEach((e) => userList.add(UserLoginInfo(e.key, e.value)));
      print(userList);
      //var user = UserLoginInfo.fromJson(userInfoMap);

  // if(userList1!=null){
  //      userList1.forEach((someData){
  //             if(someData.email=="pramod@gmail.com")
  //              print("email: ${someData.email} exits!!!");
  //             else
  //               print( "User is Not Exit");
  //          }
  //      );
  //      }
  //      else
  //       print("userList1 is null"); 


  }

}