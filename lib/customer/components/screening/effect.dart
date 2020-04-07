import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<ScreeningState> buildEffect() {
  return combineEffects(<Object, Effect<ScreeningState>>{
    ScreeningAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ScreeningState> ctx) {
  Navigator.pop(ctx.context);
}
