import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/cjzbdetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/getclitele_detail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/page.dart';
import 'package:flutter_fish_redux_router_qt/login/page.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'package:flutter_fish_redux_router_qt/start/page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'customer/page.dart';
import 'getclitele/page.dart';
import 'my/page.dart';

class YicaifuApp extends StatelessWidget{
//  初始化路由表，管理所有页面的路由
  static AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object,dynamic>>{
        'start':StartPage(),
        'login':LoginPage(),
        'main':MainPage(),
        'getclitele':GetClitelePage(),
        'customer':CustomerPage(),
        'my':MyPage(),
        'getcliteledetail':GetCliteleDetailPage(),
        'cjzb':CjzbPage(),
        'hotzx':HotzxPage(),
        'cjzbdetail':CjzbDetailPage()
      }
  );
  var islogin = false;
  Widget rootWidget = routes.buildPage('login', null);
//这块检查是显示登录页面还是直接显示首页
 Future<Widget> _getcacheData()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString('id')!=null){
      return  routes.buildPage('main', {
        'pages':List<Widget>.unmodifiable([
//          子路由的设置
          routes.buildPage('getclitele', {
            'clitelesubpages':List<Widget>.unmodifiable([
              routes.buildPage('cjzb', null),
              routes.buildPage('hotzx', null)
            ])
          }),
          routes.buildPage('customer', null),
          routes.buildPage('my', null)
        ])
      });
    }else{
      return routes.buildPage('login', null);
    }

  }
  @override
  Widget build(BuildContext context) {
    _getcacheData().then((currentwidget){
      rootWidget = currentwidget;
    });
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        设置统一风格
        primarySwatch: Colors.red
      ),
      home: rootWidget,
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute<Object>(
            builder: (BuildContext context){
              return routes.buildPage(settings.name, settings.arguments);
            });
      },
    );
  }
}