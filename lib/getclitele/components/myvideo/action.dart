import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyVideoAction { action }

class MyVideoActionCreator {
  static Action onAction() {
    return const Action(MyVideoAction.action);
  }
}
