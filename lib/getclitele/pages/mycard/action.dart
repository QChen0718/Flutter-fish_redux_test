import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyCardAction { action }

class MyCardActionCreator {
  static Action onAction() {
    return const Action(MyCardAction.action);
  }
}
