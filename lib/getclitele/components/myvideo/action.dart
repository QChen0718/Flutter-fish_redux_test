import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyVideoAction { action,init ,update,rotating,play}

class MyVideoActionCreator {
  static Action onAction() {
    return const Action(MyVideoAction.action);
  }
  static Action onInit() {
    return Action(MyVideoAction.init);
  }
  static Action onUpdate(){
    return Action(MyVideoAction.update);
  }
  static Action onRotating(){
    return Action(MyVideoAction.rotating);
  }
  static Action onPlay(){
    return Action(MyVideoAction.play);
  }
}
