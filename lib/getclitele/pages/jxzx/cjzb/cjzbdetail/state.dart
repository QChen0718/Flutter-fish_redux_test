import 'dart:async';

//import 'package:bridge_webview_flutter/webview_flutter.dart';
import 'package:bridge_webview_flutter/webview_flutter.dart';
import 'package:fish_redux/fish_redux.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class CjzbDetailState implements Cloneable<CjzbDetailState> {
  String weburl;
  WebViewController controller;
  String navtitle = '';
  @override
  CjzbDetailState clone() {
    return CjzbDetailState()
    ..weburl = weburl
    ..controller = controller
    ..navtitle = navtitle;
  }
}

CjzbDetailState initState(Map<String, dynamic> args) {
//  获取上个界面传过来的值
  String url = args['url'];
  return CjzbDetailState()
  ..weburl = url;
}
