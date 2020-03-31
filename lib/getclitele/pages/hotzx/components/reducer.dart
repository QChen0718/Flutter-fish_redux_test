//这块主要是更新state的地方，就是更新视图中显示的数据的

import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HeaderState> buildReducer() {
  return asReducer(
    <Object, Reducer<HeaderState>>{
      HeaderAction.action: _onAction,
    },
  );
}

HeaderState _onAction(HeaderState state, Action action) {
  final HeaderState newState = state.clone();
  return newState;
}
