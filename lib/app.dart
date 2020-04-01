import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/cjzb/cjzbdetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/cjzb/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/getclitele_detail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/page.dart';
import 'package:flutter_fish_redux_router_qt/login/page.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/page.dart';
import 'package:flutter_fish_redux_router_qt/start/page.dart';
import 'customer/page.dart';
import 'getclitele/pages/jxzx/page.dart';
import 'my/page.dart';

class YicaifuApp extends StatelessWidget{
//  初始化路由表，管理所有页面的路由
  static AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object,dynamic>>{
        'statr':StartPage(),
        'login':LoginPage(),
        'main':MainPage(),
        'getclitele':GetClitelePage(),
        'newgetclitele':NewGetClitelePage(),
        'customer':CustomerPage(),
        'my':MyPage(),
        'getcliteledetail':GetCliteleDetailPage(),
        'cjzb':CjzbPage(),
        'hotzx':HotzxPage(),
        'cjzbdetail':CjzbDetailPage(),
        'userset':UsersetPage()
      }
  );
  static BuildContext appContext;
//这块检查是显示登录页面还是直接显示首页
 Widget _checkshowpage(){
   String userid = SpUtil.preferences.getString('id');
   if(userid != null){
//     主页面
     return routes.buildPage('main', {
       'pages':List<Widget>.unmodifiable([
//          子路由的设置
         routes.buildPage('newgetclitele', null),
         routes.buildPage('customer', null),
         routes.buildPage('my', null)
       ])
     });
   }else{
//     登录页面
     return routes.buildPage('login', null);
   }
  }
// 定义NavigatorState的GlobalKey
  static GlobalKey<NavigatorState> navigatorState = new GlobalKey();
//  3、在需要跳转的地方调用navigatorState.currentState获取到NavigatorState进行界面跳转即可。
  @override
  Widget build(BuildContext context) {
    appContext = context;
    // TODO: implement build
    return MaterialApp(
      navigatorKey: navigatorState,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        设置统一风格
        primarySwatch: Colors.red,

      ),
      home: _checkshowpage(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute<Object>(
            builder: (BuildContext context){
              return routes.buildPage(settings.name, settings.arguments);
            });
      },
    );
  }
}