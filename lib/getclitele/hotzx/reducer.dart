import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HotzxState> buildReducer() {
  return asReducer(
    <Object, Reducer<HotzxState>>{
      HotzxAction.action: _onAction,
    },
  );
}

HotzxState _onAction(HotzxState state, Action action) {
  final HotzxState newState = state.clone();
  return newState;
}
