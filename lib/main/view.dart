import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/customer/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/getclitele_detail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/page.dart';
import 'package:flutter_fish_redux_router_qt/my/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.selectIndex,
        items: state.tabs,
        onTap: (index){
//          发送切换TabBar的事件
          dispatch(MainActionCreator.onTabBarChange(index));
        },
    ),
    body: _getController(state)
  );
}
//设置底部标签栏Widget
Widget _getController(MainState state){
  YicaifuApp yicaifuApp = YicaifuApp();
  if(state.selectIndex == 0){
   return yicaifuApp.routes.buildPage('getclitele',null);
  }else if(state.selectIndex == 1){
    return yicaifuApp.routes.buildPage('customer',null);
  }else{
    return yicaifuApp.routes.buildPage('my',null);
  }
}
// 每个bottomItem的子路由
final List<Map<String,dynamic>> subRoutes = [
  {'getclitele':getCliteleRoutes},
  {'customer':customerRoutes},
  {'my':myRoutes}
];

// 获客的子路由
final AbstractRoutes getCliteleRoutes = PageRoutes(
    pages: <String, Page<Object,dynamic>>{
      'getclitele':GetClitelePage(),
      'getcliteledetail':GetCliteleDetailPage()
    }
);
// 客户的子路由
final AbstractRoutes customerRoutes = PageRoutes(
    pages: <String, Page<Object,dynamic>>{
      'customer':CustomerPage(),
    }
);
// 我的子路由
final AbstractRoutes myRoutes = PageRoutes(
    pages: <String, Page<Object,dynamic>>{
      'my':MyPage(),
    }
);