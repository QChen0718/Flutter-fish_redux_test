//统一处理异步获取数据的方法，异步转同步
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info/package_info.dart';
class SpUtil{
 static SharedPreferences preferences;
 static PackageInfo packageInfo;
 static ClipboardData clipboardData;
 static Future<bool> getInstance() async{
   preferences = await SharedPreferences.getInstance();
   packageInfo = await PackageInfo.fromPlatform();
   //    访问剪贴板的内容
   clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
   return true;
 }
}