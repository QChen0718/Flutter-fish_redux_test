import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ScreeningAction { action }

class ScreeningActionCreator {
  static Action onAction(int index) {
    return  Action(ScreeningAction.action,payload: index);
  }
}
