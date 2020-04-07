import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}
