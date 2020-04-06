import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyCardState>>{
      MyCardAction.action: _onAction,
    },
  );
}

MyCardState _onAction(MyCardState state, Action action) {
  final MyCardState newState = state.clone();
  return newState;
}
