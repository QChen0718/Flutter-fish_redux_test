import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<SelectPosterState> buildEffect() {
  return combineEffects(<Object, Effect<SelectPosterState>>{
    SelectPosterAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<SelectPosterState> ctx) {
}
void _onInit(Action action, Context<SelectPosterState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.itemtitles.length, vsync: tickerProvider);
}