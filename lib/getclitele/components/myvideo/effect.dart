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
}
void _onInit(Action action, Context<MyVideoState> ctx) {
  urlChange(ctx);
}
void urlChange(Context<MyVideoState> ctx){
  if (ctx.state.url == null || ctx.state.url == '') return;
  if (ctx.state.controller != null){
//    如果控制器存在，清理掉重新创建
    ctx.state.controller.removeListener(_videoListener(ctx));
    ctx.state.controller.dispose();
  }
//  初始化组件参数
  ctx.state.hidePlayControl = true;
  ctx.state.videoInit = false;
  ctx.state.position = Duration(seconds: 0);
//  这快初始化的有问题，需要修改
  ctx.state.controller = VideoPlayerController.network(ctx.state.url)..initialize().then((_){
    ctx.dispatch(MyVideoActionCreator.onUpdate());
  });


}
 _videoListener(Context<MyVideoState> ctx) async {
  Duration res = await ctx.state.controller.position;
  if(res>=ctx.state.controller.value.duration){
    ctx.state.controller.pause();
    ctx.state.controller.seekTo(Duration(seconds: 0));
  }
  ctx.state.position = res;
}
void _onBuild(Action action, Context<MyVideoState> ctx) {
 ctx.state.isFullScreen =  MediaQuery.of(ctx.context).orientation == Orientation.landscape;
}
// 控件销毁方法
void _onDispose(Action action, Context<MyVideoState> ctx) {
  if(ctx.state.controller != null){
    ctx.state.controller.removeListener(_videoListener(ctx));
    ctx.state.controller.dispose();
  }
}