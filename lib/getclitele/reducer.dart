import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NewGetCliteleState> buildReducer() {
  return asReducer(
    <Object, Reducer<NewGetCliteleState>>{
      NewGetCliteleAction.action: _onAction,
    },
  );
}

NewGetCliteleState _onAction(NewGetCliteleState state, Action action) {
  final NewGetCliteleState newState = state.clone();
  return newState;
}
