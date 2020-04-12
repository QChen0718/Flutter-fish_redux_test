import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VideoDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoDetailState>>{
      VideoDetailAction.action: _onAction,
    },
  );
}

VideoDetailState _onAction(VideoDetailState state, Action action) {
  final VideoDetailState newState = state.clone();
  return newState;
}
