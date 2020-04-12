import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:package_info/package_info.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:date_format/date_format.dart';
class APPInfo{
  static const APP_KEY = "ycfiosiplqs93zpd98qjhayrm";
  // 接口密文
  static const APP_CIPHERTEX = "dhzurowp8adlrmacrkhai8zjrksbdaycfios";
  static const HTTP_IMAGE_DOWNLOAD_REQUEST_URL = "https://rescdn.xiaohu.in/";
  static String timeStamp = formatDate(DateTime.now(), [yyyy,'-',mm,'-',dd,'T',HH,':',mm,':',ss,z]);
//
  static const productLiving  = 2;// 产品路演
  static const treasureLiving = 6;// 财富讲坛
  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
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
}
