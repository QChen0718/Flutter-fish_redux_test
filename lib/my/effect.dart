import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'components/nomalcell/state.dart';
import 'state.dart';

Effect<MyState> buildEffect() {
  return combineEffects(<Object, Effect<MyState>>{
    MyAction.action: _onAction,
    Lifecycle.initState: _onInit,
    MyAction.jumpSetpage: _onJumpSetpage
  });
}

void _onAction(Action action, Context<MyState> ctx) {
}
void _onInit(Action action, Context<MyState> ctx) {
    List<NomalcellState> listcell = [];
    ctx.state.nomalcelltitles.forEach((value){
        NomalcellState nomalcellState = NomalcellState();
        nomalcellState.nomal_iconname = value['icon'];
        nomalcellState.nomal_title = value['title'];
        nomalcellState.nomal_arrow = 'images/nomal_arrow.webp';
        listcell.add(nomalcellState);
    });
    ctx.dispatch(MyActionCreator.onInit(listcell));
}

void _onJumpSetpage(Action action,Context<MyState> ctx){
  Navigator.pushNamed(ctx.context, 'userset');
}