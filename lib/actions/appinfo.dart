import 'package:flutter_fish_redux_router_qt/actions/dateformat.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:package_info/package_info.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_des/flutter_des.dart';
class APPInfo{
  static const APP_KEY = "ycfiosiplqs93zpd98qjhayrm";
  // 接口密文
  static const APP_CIPHERTEX = "dhzurowp8adlrmacrkhai8zjrksbdaycfios";
  static const HTTP_IMAGE_DOWNLOAD_REQUEST_URL = "https://rescdn.xiaohu.in/";
  static String timeStamp = DateFormat.nowdateFormat();
  static String DES_KEY_STR = "XCHONGKJ";
  static String encryptstr;
//
  static const productLiving  = 2;// 产品路演
  static const treasureLiving = 6;// 财富讲坛
//  md5加密
  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
//  des加密
  static Future<String> generateDES(String data) async{
    encryptstr = await FlutterDes.encryptToHex(data, DES_KEY_STR);
    return encryptstr;
  }
// 时间戳转换成时分秒
  static String durationToTime(int durationnumber){
    int hours = ((((durationnumber / 1000) / 60)) /60 ).toInt();
    int min = ((durationnumber / 1000) / 60).toInt();
    int sec = ((durationnumber / 1000) % 60).toInt();
    if (hours>0){
      return getType(hours) + ":" + getType(min) + ":" + getType(sec);
    }else{
      return getType(min) + ":" + getType(sec);
    }
  }
  static String getType(int time){
    return time<10 ? "0" + time.toString() : time.toString();
  }
//  版本号
  static String version = SpUtil.packageInfo.version;

  static String ApiVersionKey = 'Accept-Version';

  static Map<String,dynamic> getFirstHeader(){
    return {ApiVersionKey:'1.0.0'};
  }
  static Map<String,dynamic> getSecondHeader(){
    return {ApiVersionKey:'2.0.0'};
  }
  static Map<String,dynamic> getSecondFirstHeader(){
    return {ApiVersionKey:'2.1.0'};
  }
  static Map<String,dynamic> getThirdHeader(){
    return {ApiVersionKey:'3.0.0'};
  }
  static Map<String,dynamic> getFourthHeader(){
    return {ApiVersionKey:'4.0.0'};
  }
  static Map<String,dynamic> getUserDict(){
    return {
      "userMobile" : SpUtil.preferences.getString('mobile'),
      "userId" : SpUtil.preferences.getString('id'),
    };
  }
//  获取请求默认参数
  static Map<String,dynamic> getRequestnomalparams(String apiversion){
     String signStr = APP_CIPHERTEX + "apiVersion" + apiversion + "appKey" + APP_KEY + "timeStamp" +
        timeStamp;
     String signdesStr = SpUtil.preferences.getString('id') + ":" + SpUtil.preferences.getString('mobile') + ":" + timeStamp + ":" + "0";
//   des 加密
     generateDES(signdesStr).then((value){
       print("des加密结果" + encryptstr);
     });


//  MD5加密
     String sign = generateMd5(signStr).toUpperCase();

    return {
      'appKey':APP_KEY,
      'timeStamp':timeStamp,
      'sign':sign,
      'version':version,
      'apiVersion':apiversion,
      'channel':1
    };
  }

//  获取新的请求默认参数
  static Map<String,dynamic> getNewRequestnomalparams(String apiversion){
    String signStr = APP_CIPHERTEX + "apiVersion" + apiversion + "appKey" + APP_KEY + "timeStamp" +
        timeStamp;
//  MD5加密
    String sign = generateMd5(signStr).toUpperCase();
    return {
      'appKey':APP_KEY,
      'timeStamp':timeStamp,
      'sign':sign,
      'version':version,
      'apiVersion':apiversion,
    };
  }
}
