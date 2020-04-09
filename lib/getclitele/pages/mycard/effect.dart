import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MyCardState> buildEffect() {
  return combineEffects(<Object, Effect<MyCardState>>{
    MyCardAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyCardState> ctx) {
    if(action.payload == 1){
//      编辑名片
      Navigator.pushNamed(ctx.context, 'editcard');
    }else{

    }
}
