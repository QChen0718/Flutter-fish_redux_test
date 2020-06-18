import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/notificationcenter.dart';
import 'package:flutter_fish_redux_router_qt/main/state.dart';
import 'package:flutter_fish_redux_router_qt/singleton/khsingleton.dart';
import 'action.dart';
import 'state.dart';

Effect<FilterState> buildEffect() {
  return combineEffects(<Object, Effect<FilterState>>{
    FilterAction.action: _onAction,
    FilterAction.onpenDrawer: _onOpenDrawer,
    FilterAction.selectItem: _onSelectItem
  });
}

void _onAction(Action action, Context<FilterState> ctx) {
  //  更新UI界面
  ctx.dispatch(FilterActionCreator.onUpdateUI(int.parse(action.payload)));
//  筛选类型
  if(ctx.state.textColor == Color(0xff333333)){
    KHSingleton.getInstance().customerQueryType = "";
  }else {
    KHSingleton.getInstance().customerQueryType = action.payload;
  }

//  发送通知刷新客户列表
  NotificationCenter.instance.postNotification("updateCustomerList", null);

}
void _onSelectItem(Action action, Context<FilterState> ctx){
  var khsing = KHSingleton.getInstance();
  var dict = action.payload;
  khsing.sort = dict['index'].toString();
  //  发送通知刷新客户列表
  NotificationCenter.instance.postNotification("updateCustomerList", null);
  ctx.dispatch(FilterActionCreator.onStatusUpdate(dict['name']));
}
void _onOpenDrawer(Action action, Context<FilterState> ctx){
  MainState.cscaffoldKey.currentState.openEndDrawer();
}
