import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/loadingview.dart';
import 'package:flutter_fish_redux_router_qt/actions/notificationcenter.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
    Lifecycle.initState: _onInitState,
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}
void _onInitState(Action action, Context<MainState> ctx) {
  //添加监听者
  NotificationCenter.instance.addObserver('showpopview', (object){
    showDialog<Null>(
          context: ctx.context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return LoadingView(
              wxurl: SpUtil.clipboardData.text,
            );
          }
      );
  });
}
