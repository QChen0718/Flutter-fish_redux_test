import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

void main(){

  realRunApp();
}

void realRunApp()async{
  WidgetsFlutterBinding.ensureInitialized();
  bool success = await SpUtil.getInstance();
//  加这个是为了在调用runApp之前需要使用这个方法才能进行其他方法的调用

  runApp(YicaifuApp());
}