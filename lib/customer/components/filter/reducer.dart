import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FilterState> buildReducer() {
  return asReducer(
    <Object, Reducer<FilterState>>{
      FilterAction.action: _onAction,
      FilterAction.show : _onShow
    },
  );
}

FilterState _onAction(FilterState state, Action action) {
  final FilterState newState = state.clone();
  return newState;
}

FilterState _onShow(FilterState state, Action action) {
  final FilterState newState = state.clone();
  newState.isshow = !newState.isshow;
//  选择的筛选item
  newState.selectitemtitle = action.payload;
//  更改第一个筛选的title
  newState.titles[0] = action.payload;
  return newState;
}