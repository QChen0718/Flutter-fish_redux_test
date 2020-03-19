//接收事件，处理事件的响应和分发，和初始化的地方

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HeaderState> buildEffect() {
  return combineEffects(<Object, Effect<HeaderState>>{
    HeaderAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HeaderState> ctx) {
}
