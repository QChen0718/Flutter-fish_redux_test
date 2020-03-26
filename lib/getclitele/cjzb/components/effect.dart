import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/network/api.dart';
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
//  传送weburl
    String weburl = API.REQUEST_WEB_URL_ZIXUN_DETAIL + ctx.state.cellid;
   Navigator.pushNamed(ctx.context, 'cjzbdetail',arguments: {'url':weburl}).then((value){
     if (value != null){
       ctx.dispatch(CjcellActionCreator.onUpdateData(value));
     }
   });
}