import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MenucellState> buildReducer() {
  return asReducer(
    <Object, Reducer<MenucellState>>{
      MenucellAction.action: _onAction,
    },
  );
}

MenucellState _onAction(MenucellState state, Action action) {
  final MenucellState newState = state.clone();
  return newState;
}
