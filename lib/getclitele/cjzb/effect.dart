import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CjzbState> buildEffect() {
  return combineEffects(<Object, Effect<CjzbState>>{
    CjzbAction.action: _onAction,
    CjzbAction.onjumpDetail: _onJumpDetail,
  });
}

void _onAction(Action action, Context<CjzbState> ctx) {
}
void _onJumpDetail(Action action,Context<CjzbState> ctx) {
  Navigator.pushNamed(ctx.context, 'cjzbdetail').then((value){
    ctx.dispatch(CjzbActionCreator.onUpdateData(value));
  });
}