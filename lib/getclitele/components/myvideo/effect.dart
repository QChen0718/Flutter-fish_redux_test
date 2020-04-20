import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:video_player/video_player.dart';
import 'action.dart';
import 'state.dart';

Effect<MyVideoState> buildEffect() {
  return combineEffects(<Object, Effect<MyVideoState>>{
    MyVideoAction.action: _onAction,
    Lifecycle.initState: _onInit,
    Lifecycle.dispose: _onDispose,
    Lifecycle.build: _onBuild
  });
}

void _onAction(Action action, Context<MyVideoState> ctx) {
  if(ctx.state.isMute){
    ctx.state.controller.setVolume(0);
    ctx.state.isMute = false;
  }else{
    ctx.state.controller.setVolume(1);
    ctx.state.isMute = true;
  }
  ctx.dispatch(MyVideoActionCreator.onUpdate());
}
void _onInit(Action action, Context<MyVideoState> ctx) {
  urlChange(ctx);
}
void urlChange(Context<MyVideoState> ctx){
  if (ctx.state.url == null || ctx.state.url == '') return;
  if (ctx.state.controller != null){
//    如果控制器存在，清理掉重新创建
    ctx.state.controller.dispose();
  }
//  初始化组件参数
  ctx.state.hidePlayControl = true;
  ctx.state.videoInit = false;
  ctx.state.position = Duration(seconds: 0);
  ctx.state.hidePlayControl = false;

  ctx.state.controller = VideoPlayerController.network(ctx.state.url);
  ctx.state.initializeVideoPlayerFuture = ctx.state.controller.initialize();
// 监听播放进度
  ctx.state.controller.addListener(() async{
//    播放的进度时长
    Duration res = await ctx.state.controller.position;
    if(res == ctx.state.controller.value.duration){
      //  说明播放到了最后
      ctx.state.controller.pause();
    }
  });
}

void _onBuild(Action action, Context<MyVideoState> ctx) {
 ctx.state.isFullScreen =  MediaQuery.of(ctx.context).orientation == Orientation.landscape;
}
// 控件销毁方法
void _onDispose(Action action, Context<MyVideoState> ctx) {
  if(ctx.state.controller != null){
//    销毁掉视频播放器
    ctx.state.controller.dispose();
  }
}