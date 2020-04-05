import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PosterDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<PosterDetailState>>{
      PosterDetailAction.action: _onAction,
    },
  );
}

PosterDetailState _onAction(PosterDetailState state, Action action) {
  final PosterDetailState newState = state.clone();
  return newState;
}
