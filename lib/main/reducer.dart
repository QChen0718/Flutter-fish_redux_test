import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.action: _onAction,
      MainAction.onTabBarChange: _onTabBarChange,
    },
  );
}

MainState _onAction(MainState state, Action action) {
  final MainState newState = state.clone();
  return newState;
}
// 更新state
MainState _onTabBarChange(MainState state, Action action) {
//  action 里面存放的事件所携带的参数
  final MainState newState = state.clone();
  newState.selectIndex = action.payload;
  return newState;
}
