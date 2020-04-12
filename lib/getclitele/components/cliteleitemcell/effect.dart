import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CliteleItemCellState> buildEffect() {
  return combineEffects(<Object, Effect<CliteleItemCellState>>{
    CliteleItemCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CliteleItemCellState> ctx) {
//  item的点击方法
  switch(action.payload){
    case 0:
//      移动工作室
      break;
    case 1:
//      智能名片
      Navigator.pushNamed(ctx.context, 'mycard');
      break;
    case 2:
//      产品推介
      Navigator.pushNamed(ctx.context, 'producttj');
      break;
    case 3:
//      每日财经
      Navigator.pushNamed(ctx.context, 'getclitele');
      break;
    case 4:
//      精品海报
      Navigator.pushNamed(ctx.context, 'selectposter');
      break;
    case 5:
//      精彩视频
      Navigator.pushNamed(ctx.context, 'greatvideo');
      break;
    case 6:
//      转发助手
      break;
    case 7:
//      随手发
      break;
    case 8:
//      敬请期待
      break;
  }
}
