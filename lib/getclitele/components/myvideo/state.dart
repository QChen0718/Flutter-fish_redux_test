import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videodetail/state.dart';
import 'package:video_player/video_player.dart';

class MyVideoState implements Cloneable<MyVideoState> {
  String url; //当前播放地址
//  视频尺寸比例
  double width;
  double height;
//  视频标题
  String title;
// 指示video资源是否加载完成，加载完成后会获得总时长和视频长宽比等信息
  bool videoInit = false;
//  video控件管理器
  VideoPlayerController controller;
  Future<void> initializeVideoPlayerFuture;
  // 记录video播放进度
  Duration position = Duration(seconds: 0);
  // 记录播放控件ui是否显示(进度条，播放按钮，全屏按钮等等)
  Timer timer;
  bool hidePlayControl = true; // 控制是否隐藏控件ui
  double playControlOpacity = 0; // 通过透明度动画显示/隐藏控件ui
//  BuildContext context;
  // 记录是否全屏
  bool isFullScreen = false;
//  记录是否静音
  bool isMute = false;
  // 记录是否全屏
  // 记录当前设备是否横屏，后续用到
  String quicklyname = 'images/quickly_icon.webp';
  String volumename = 'images/volume_icon.webp';
  String screenname = 'images/for_screen.webp';
  String fullscreen = 'images/fullscreen_icon.webp';
  String forwardname = 'images/forward_icon.webp';

//  MyVideoState({this.url, this.width, this.height, this.title});
  @override
  MyVideoState clone() {
    return MyVideoState()
    ..url = url
    ..width = width
    ..height = height
    ..title = title
    ..videoInit = videoInit
    ..controller = controller
    ..position = position
    ..timer = timer
    ..hidePlayControl = hidePlayControl
    ..playControlOpacity = playControlOpacity
    ..isFullScreen = isFullScreen
    ..initializeVideoPlayerFuture = initializeVideoPlayerFuture
    ..isMute = isMute;
  }
}

//MyVideoState initState(Map<String, dynamic> args) {
//  return MyVideoState();
//}
class MyVideoConnector extends ConnOp<VideoDetailState,MyVideoState>{
  @override
  get(state) {
    // TODO: implement get
    return state.myVideoState;
  }
  @override
  void set(state, subState) {
    // TODO: implement set
    state.myVideoState = subState;
    state.isFullScreen = subState.isFullScreen;
  }
}