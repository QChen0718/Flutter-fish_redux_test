

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
    myVideoState.url = 'http://1caifu-file-public.oss-cn-hangzhou.aliyuncs.com/video/business-institute/%E5%BE%AE%E8%AF%BE%E4%BA%94%EF%BC%9A%E9%98%B3%E5%85%89%E7%A7%81%E5%8B%9F%E7%BC%98%E4%BD%95%E9%98%B3%E5%85%89-6bc06548959046dfb7cd77e2e7240202.mp4';
    myVideoState.width = Adapt.screenW();
    myVideoState.height = Adapt.screenW()/16*9;
    ctx.dispatch(VideoDetailActionCreator.onInit(myVideoState));
}
