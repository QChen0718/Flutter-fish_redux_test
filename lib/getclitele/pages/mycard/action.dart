import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyCardAction { action }

class MyCardActionCreator {
  static Action onAction(int index) {
    return  Action(MyCardAction.action,payload: index);
  }
}
