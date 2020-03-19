import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CjcellState> buildEffect() {
  return combineEffects(<Object, Effect<CjcellState>>{
    CjcellAction.action: _onAction,
    CjcellAction.jumpdetail: _onJumpDetail
  });
}

void _onAction(Action action, Context<CjcellState> ctx) {
}

void _onJumpDetail(Action action, Context<CjcellState> ctx) {
   Navigator.pushNamed(ctx.context, 'cjzbdetail');
}