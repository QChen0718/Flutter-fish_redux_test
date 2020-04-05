import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class SelectPosterState implements Cloneable<SelectPosterState> {
  String nav_title;
  List<String> itemtitles;
  TabController tabController;
  @override
  SelectPosterState clone() {
    return SelectPosterState()
    ..nav_title = nav_title
    ..itemtitles = itemtitles
    ..tabController = tabController;
  }
}

SelectPosterState initState(Map<String, dynamic> args) {
  List<String> itemtitles = ['最热金融词','专题分享','壹财富节气'];
  return SelectPosterState()
  ..nav_title = '精品海报'
  ..itemtitles = itemtitles;
}
// 一次使用的用 SingleTickerProviderStateMixin
// 使用 SingleTickerProviderStateMixin 主要是TabBar需要用到这块
// 多次使用时使用常规的TickerProviderStateMixin
// 如果一个状态被用于多个AnimationController对象，或者它被传递给其他对象，而这些对象可能不止一次地使用它，
// 那么不要混合使用一个单独的TickerProviderStateMixin，而是使用一个常规的TickerProviderStateMixin。
class SelectPosterStateKeepAliveStf extends ComponentState<SelectPosterState> with TickerProviderStateMixin{

}