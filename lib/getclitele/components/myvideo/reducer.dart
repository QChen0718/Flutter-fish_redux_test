import 'dart:math';

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
      MyVideoAction.play:_onPlay,
      MyVideoAction.hidenui:_onHidenui,
      MyVideoAction.speedandreverse: _onSpeedandreverse
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
  final MyVideoState newState = state.clone();
  newState.videoInit = true;
  return newState;
}
// 横屏，竖屏
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
// 播放暂停
MyVideoState _onPlay(MyVideoState state,Action action) {
  final MyVideoState newState = state.clone();
  if(newState.controller.value.duration.inSeconds == newState.controller.value.position.inSeconds){
    newState.controller.seekTo(Duration(seconds: 0));
  }
  newState.controller.value.isPlaying?
  newState.controller.pause()
  :newState.controller.play();
  return newState;
}
// 隐藏操作视频按钮
MyVideoState _onHidenui(MyVideoState state,Action action) {
  final MyVideoState newState = state.clone();
  newState.hidePlayControl = !state.hidePlayControl;
  return newState;
}
// 快进，快退
MyVideoState _onSpeedandreverse(MyVideoState state,Action action) {
  final MyVideoState newState = state.clone();
  if(action.payload == 100){
    if(newState.controller.value.duration.inSeconds-newState.controller.value.position.inSeconds > 15){
      newState.controller.seekTo(Duration(seconds: newState.controller.value.position.inSeconds+15));
    }else{
      newState.controller.seekTo(Duration(seconds: newState.controller.value.duration.inSeconds));
    }

  }else{
    if(newState.controller.value.position.inSeconds>15){
      newState.controller.seekTo(Duration(seconds: newState.controller.value.position.inSeconds-15));
    }else{
      newState.controller.seekTo(Duration(seconds: 0));
    }
  }
  return newState;
}