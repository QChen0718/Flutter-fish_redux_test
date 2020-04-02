import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MarketingZSState> buildEffect() {
  return combineEffects(<Object, Effect<MarketingZSState>>{
    MarketingZSAction.action: _onAction,
    //    这个方法很重要，页面的初始化方法
    Lifecycle.initState:_onInit,
  });
}

void _onAction(Action action, Context<MarketingZSState> ctx) {
}
void _onInit(Action action, Context<MarketingZSState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.itemtitles.length, vsync: tickerProvider);
}