import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<GetCliteleState> buildEffect() {
  return combineEffects(<Object, Effect<GetCliteleState>>{
    GetCliteleAction.action: _onAction,
    GetCliteleAction.jumpDetail: _onJumpDetail,
    //    这个方法很重要，页面的初始化方法
    Lifecycle.initState:_init,
  });
}

void _onAction(Action action, Context<GetCliteleState> ctx) {
}
void _onJumpDetail(Action action,Context<GetCliteleState> ctx){

  Navigator.pushNamed(ctx.context, 'getcliteledetail');
}

void _init(Action action,Context<GetCliteleState> ctx){
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.tabs.length, vsync: tickerProvider);
}