//用户信息存储
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_fish_redux_router_qt/models/loginmodel.dart';
class UserInfo{
  //存储用户基本信息到本地
 static cacheuserdata(Map<String,dynamic> data) async{
   LoginModel loginModel = LoginModel.fromJson(data);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('id', loginModel.data.id.toString());
    sharedPreferences.setString('mobile', loginModel.data.mobile);
    sharedPreferences.setBool('isAuth', loginModel.data.isAuth);
  }
}