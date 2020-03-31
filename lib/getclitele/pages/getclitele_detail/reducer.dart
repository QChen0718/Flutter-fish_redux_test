import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GetCliteleDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<GetCliteleDetailState>>{
      GetCliteleDetailAction.action: _onAction,
    },
  );
}

GetCliteleDetailState _onAction(GetCliteleDetailState state, Action action) {
  final GetCliteleDetailState newState = state.clone();
  return newState;
}
