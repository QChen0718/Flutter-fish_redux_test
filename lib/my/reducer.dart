import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyState>>{
      MyAction.action: _onAction,
      MyAction.init: _onInit
    },
  );
}

MyState _onAction(MyState state, Action action) {
  final MyState newState = state.clone();
  return newState;
}

MyState _onInit(MyState state, Action action) {
  final MyState newState = state.clone();
  newState.nomalcells = action.payload;
  return newState;
}