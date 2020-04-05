import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<HotFinancialWordeCellState> buildEffect() {
  return combineEffects(<Object, Effect<HotFinancialWordeCellState>>{
    HotFinancialWordeCellAction.action: _onAction,
    HotFinancialWordeCellAction.jumpPosterDetail: _onJumpPosterDetail,
  });
}

void _onAction(Action action, Context<HotFinancialWordeCellState> ctx) {
}
void _onJumpPosterDetail(Action action,Context<HotFinancialWordeCellState> ctx) {
  Navigator.pushNamed(ctx.context, 'selectposterdetail');
}