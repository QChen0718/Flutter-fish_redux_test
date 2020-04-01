import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CliteleItemCellAction { action }

class CliteleItemCellActionCreator {
  static Action onAction(int index) {
    return  Action(CliteleItemCellAction.action,payload: index);
  }
}
