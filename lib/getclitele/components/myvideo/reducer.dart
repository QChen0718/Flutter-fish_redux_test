import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyVideoState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyVideoState>>{
      MyVideoAction.action: _onAction,
    },
  );
}

MyVideoState _onAction(MyVideoState state, Action action) {
  final MyVideoState newState = state.clone();
  return newState;
}
