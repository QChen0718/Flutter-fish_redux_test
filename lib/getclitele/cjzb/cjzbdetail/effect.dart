import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CjzbDetailState> buildEffect() {
  return combineEffects(<Object, Effect<CjzbDetailState>>{
    CjzbDetailAction.action: _onAction,
    CjzbDetailAction.onBack: _onBack
  });
}

void _onAction(Action action, Context<CjzbDetailState> ctx) {
}

void _onBack(Action action, Context<CjzbDetailState> ctx) {
  Navigator.pop(ctx.context);
}