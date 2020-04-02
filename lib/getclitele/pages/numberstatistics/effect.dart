import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<NumberStatisticsState> buildEffect() {
  return combineEffects(<Object, Effect<NumberStatisticsState>>{
    NumberStatisticsAction.action: _onAction,
    NumberStatisticsAction.back: _onBack
  });
}

void _onAction(Action action, Context<NumberStatisticsState> ctx) {
}

void _onBack(Action action, Context<NumberStatisticsState> ctx){
  Navigator.pop(ctx.context);
}