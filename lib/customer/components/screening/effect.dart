import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/notificationcenter.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<ScreeningState> buildEffect() {
  return combineEffects(<Object, Effect<ScreeningState>>{
    ScreeningAction.action: _onAction,
//    Lifecycle.appear:_onAppear,
    Lifecycle.build:_onBuild
  });
}

void _onAction(Action action, Context<ScreeningState> ctx) {
//  隐藏侧边栏
//  发送通知，更新列表数据
  NotificationCenter.instance.postNotification('updateCustomerList', null);
  Navigator.pop(ctx.context);
}
//构建方法，每次显示视图的时候都会触发
void _onBuild(Action action,Context<ScreeningState> ctx) {
//
  print('----------->触发');
//  获取客户标签
  Request.getInstance().get(API.REQUEST_GET_CUSTOMERTAG, null, null, (succeck){

  }, (error){

  });
}