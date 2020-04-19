import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:orientation/orientation.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyVideoState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyVideoState>>{
      MyVideoAction.action: _onAction,
      MyVideoAction.init:_onInit,
      MyVideoAction.update:_onUpdate,
      MyVideoAction.rotating:_onRotating,
      MyVideoAction.play:_onPlay
    },
  );
}

MyVideoState _onAction(MyVideoState state, Action action) {
  final MyVideoState newState = state.clone();
  return newState;
}

MyVideoState _onInit(MyVideoState state, Action action) {
  final MyVideoState newState = state.clone();
  return newState;
}

MyVideoState _onUpdate(MyVideoState state, Action action) {
//  bool get isFullScreen =>
//  state.isFullScreen = MediaQuery.of(ctx.context).orientation == Orientation.portrait;
  final MyVideoState newState = state.clone();
  newState.videoInit = true;
  return newState;
}
MyVideoState _onRotating(MyVideoState state,Action action) {
  final MyVideoState newState = state.clone();
  if (state.isFullScreen) { // 如果是全屏就切换竖屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,

    ]);
    newState.isFullScreen = false;
  } else {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight
    ]);
    newState.isFullScreen = true;
  }
  newState.width = newState.isFullScreen?Adapt.screenH():Adapt.screenW();
  newState.height = newState.isFullScreen?Adapt.screenW():Adapt.screenW()/16*9; // 竖屏时容器为16：9
  return newState;
}

MyVideoState _onPlay(MyVideoState state,Action action) {
  final MyVideoState newState = state.clone();
  newState.controller.value.isPlaying?
  newState.controller.pause()
  :newState.controller.play();
  return newState;
}