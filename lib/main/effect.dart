import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
    Lifecycle.initState: _onInitState,
    Lifecycle.dispose:_onDispose,
    Lifecycle.didChangeAppLifecycleState:_onDidChangeAppLifecycleState
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}
void _onInitState(Action action, Context<MainState> ctx) {
  WidgetsBinding.instance.addObserver(MainPage());
}
void _onDispose(Action action, Context<MainState> ctx) {
  WidgetsBinding.instance.removeObserver(MainPage());
}
void _onDidChangeAppLifecycleState(Action action, Context<MainState> ctx) {

  // 当App生命周期状态为恢复时。
  if (ctx == AppLifecycleState.resumed) {

  }
}