import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/main/state.dart';
import 'action.dart';
import 'state.dart';

Effect<FilterState> buildEffect() {
  return combineEffects(<Object, Effect<FilterState>>{
    FilterAction.action: _onAction,
    FilterAction.onpenDrawer: _onOpenDrawer
  });
}

void _onAction(Action action, Context<FilterState> ctx) {
}
void _onOpenDrawer(Action action, Context<FilterState> ctx){
//  Scaffold.of(ctx.context).openEndDrawer();
  MainState.cscaffoldKey.currentState.openEndDrawer();
//  Scaffold.of(YicaifuApp.navigatorState.currentContext).openEndDrawer();
}
