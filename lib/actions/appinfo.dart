import 'package:package_info/package_info.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:date_format/date_format.dart';
class APPInfo{
  static const APP_KEY = "ycfiosiplqs93zpd98qjhayrm";
  // 接口密文
  static const APP_CIPHERTEX = "dhzurowp8adlrmacrkhai8zjrksbdaycfios";

  static String timeStamp = formatDate(DateTime.now(), [yyyy,'-',mm,'-',dd,'T',HH,':',mm,':',ss,z]);

  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
  static String version;
  static String signStr = APP_CIPHERTEX + "apiVersion" + "2.1.0" + "appKey" + APP_KEY + "timeStamp" +
     timeStamp;
//  MD5加密
  static String sign = generateMd5(signStr).toUpperCase();
// 获取APP信息
  static getpackageInfo()async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
  }
}