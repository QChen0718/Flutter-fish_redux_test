import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

class GreatVideoState implements Cloneable<GreatVideoState> {

  String navtitle;
  List<String> tabtitles;
  TabController tabController;
  List<Widget> controllers;
  @override
  GreatVideoState clone() {
    return GreatVideoState()
    ..navtitle = navtitle
    ..tabController = tabController
    ..controllers = controllers;
  }
}

GreatVideoState initState(Map<String, dynamic> args) {
  return GreatVideoState()
  ..navtitle = '精彩视频'
  ..tabtitles = ['财富讲坛','产品路演']
  ..controllers = [YicaifuApp.routes.buildPage('videolist', {'type':APPInfo.treasureLiving}),YicaifuApp.routes.buildPage('videolist', {'type':APPInfo.productLiving})];
}
// 一次使用的用 SingleTickerProviderStateMixin
// 使用 SingleTickerProviderStateMixin 主要是TabBar需要用到这块
// 多次使用时使用常规的TickerProviderStateMixin
// 如果一个状态被用于多个AnimationController对象，或者它被传递给其他对象，而这些对象可能不止一次地使用它，
// 那么不要混合使用一个单独的TickerProviderStateMixin，而是使用一个常规的TickerProviderStateMixin。
class GreatVideoStateKeepAliveStf extends ComponentState<GreatVideoState> with TickerProviderStateMixin{

}