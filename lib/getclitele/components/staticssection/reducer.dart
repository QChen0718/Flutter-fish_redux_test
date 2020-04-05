import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StaticsSectionState> buildReducer() {
  return asReducer(
    <Object, Reducer<StaticsSectionState>>{
      StaticsSectionAction.action: _onAction,
    },
  );
}

StaticsSectionState _onAction(StaticsSectionState state, Action action) {
  final StaticsSectionState newState = state.clone();
  return newState;
}
