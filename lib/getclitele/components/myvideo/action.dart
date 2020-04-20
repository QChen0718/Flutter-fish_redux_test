import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyVideoAction { action,init ,update,rotating,play,hidenui,speedandreverse,}

class MyVideoActionCreator {
  static Action onAction(int clicktag) {
    return  Action(MyVideoAction.action,payload: clicktag);
  }
//  初始化
  static Action onInit() {
    return Action(MyVideoAction.init);
  }
//  更新ui
  static Action onUpdate(){
    return Action(MyVideoAction.update);
  }
//  旋转屏幕
  static Action onRotating(){
    return Action(MyVideoAction.rotating);
  }
//  播放
  static Action onPlay(){
    return Action(MyVideoAction.play);
  }
//  隐藏操作视频功能按钮
  static Action onHidenui(){
    return Action(MyVideoAction.hidenui);
  }
//  快进或者快退
  static Action onSpeedandreverse(int tag){
    return Action(MyVideoAction.speedandreverse,payload: tag);
  }
}
