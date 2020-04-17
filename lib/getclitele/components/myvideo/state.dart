import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
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
  // 记录video播放进度
  Duration position = Duration(seconds: 0);
  // 记录播放控件ui是否显示(进度条，播放按钮，全屏按钮等等)
  Timer timer;
  bool hidePlayControl = true; // 控制是否隐藏控件ui
  double playControlOpacity = 0; // 通过透明度动画显示/隐藏控件ui
  // 记录是否全屏
  bool isFullScreen;

  MyVideoState({this.url, this.width, this.height, this.title});
  @override
  MyVideoState clone() {
    return MyVideoState();
  }
}

MyVideoState initState(Map<String, dynamic> args) {
  return MyVideoState();
}
