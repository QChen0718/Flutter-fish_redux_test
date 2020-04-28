import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<ForWardingzsHeaderState> buildEffect() {
  return combineEffects(<Object, Effect<ForWardingzsHeaderState>>{
    ForWardingzsHeaderAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<ForWardingzsHeaderState> ctx) {

}
void _onInit(Action action, Context<ForWardingzsHeaderState> ctx) {
  ctx.state.textEditingController = TextEditingController();
  ctx.state.textEditingController.text = 'https://www.1caifu.com/about/news-detail/';
}