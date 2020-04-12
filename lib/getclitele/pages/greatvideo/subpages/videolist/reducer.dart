import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VideoListState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoListState>>{
      VideoListAction.action: _onAction,
      VideoListAction.init: _onInit
    },
  );
}

VideoListState _onAction(VideoListState state, Action action) {
  final VideoListState newState = state.clone();
  return newState;
}

VideoListState _onInit(VideoListState state, Action action){
  final VideoListState newState = state.clone();
  newState.liststate = action.payload;
  return newState;
}