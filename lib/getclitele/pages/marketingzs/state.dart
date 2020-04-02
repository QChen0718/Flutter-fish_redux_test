import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MarketingZSState implements Cloneable<MarketingZSState> {
  String nav_title;
  List<String> itemtitles;
  TabController tabController;
  @override
  MarketingZSState clone() {
    return MarketingZSState()
    ..nav_title = nav_title
    ..itemtitles = itemtitles
    ..tabController = tabController;
  }
}

MarketingZSState initState(Map<String, dynamic> args) {
  List<String> itemtitles = ['营销线索','分享记录','访客统计'];
  return MarketingZSState()
  ..nav_title = '营销助手'
  ..itemtitles = itemtitles;
}
// 一次使用的用 SingleTickerProviderStateMixin
// 使用 SingleTickerProviderStateMixin 主要是TabBar需要用到这块
// 多次使用时使用常规的TickerProviderStateMixin
// 如果一个状态被用于多个AnimationController对象，或者它被传递给其他对象，而这些对象可能不止一次地使用它，
// 那么不要混合使用一个单独的TickerProviderStateMixin，而是使用一个常规的TickerProviderStateMixin。
class MarketingZSStateKeepAliveStf extends ComponentState<MarketingZSState> with TickerProviderStateMixin{

}