import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<GreatVideoState> buildEffect() {
  return combineEffects(<Object, Effect<GreatVideoState>>{
    GreatVideoAction.action: _onAction,
    Lifecycle.initState : _onInit
  });
}

void _onAction(Action action, Context<GreatVideoState> ctx) {
}
void _onInit(Action action, Context<GreatVideoState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.tabtitles.length, vsync: tickerProvider);
}