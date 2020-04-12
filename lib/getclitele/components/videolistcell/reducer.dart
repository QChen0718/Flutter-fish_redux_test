import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VideoListCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoListCellState>>{
      VideoListCellAction.action: _onAction,
    },
  );
}

VideoListCellState _onAction(VideoListCellState state, Action action) {
  final VideoListCellState newState = state.clone();
  return newState;
}
