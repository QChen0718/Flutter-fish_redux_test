import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GetCliteleState> buildReducer() {
  return asReducer(
    <Object, Reducer<GetCliteleState>>{
      GetCliteleAction.action: _onAction,
    },
  );
}

GetCliteleState _onAction(GetCliteleState state, Action action) {
  final GetCliteleState newState = state.clone();
  return newState;
}
