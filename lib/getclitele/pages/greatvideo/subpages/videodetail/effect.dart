

import 'package:chewie/chewie.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/myvideo/state.dart';
import 'package:video_player/video_player.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoDetailState> buildEffect() {
  return combineEffects(<Object, Effect<VideoDetailState>>{
    VideoDetailAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<VideoDetailState> ctx) {
}
// 初始化方法
void _onInit(Action action, Context<VideoDetailState> ctx) {
    MyVideoState myVideoState = MyVideoState();
    myVideoState.url = ctx.state.videourl;
    myVideoState.width = Adapt.screenW();
    myVideoState.height = Adapt.screenW()/16*9;
    ctx.dispatch(VideoDetailActionCreator.onInit(myVideoState));
}
