import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyVideoAction { action,init ,update,rotating,play,}

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
}
