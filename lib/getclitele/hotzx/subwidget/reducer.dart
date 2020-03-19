import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SubItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<SubItemState>>{
      SubItemAction.action: _onAction,
    },
  );
}

SubItemState _onAction(SubItemState state, Action action) {
  final SubItemState newState = state.clone();
  return newState;
}
