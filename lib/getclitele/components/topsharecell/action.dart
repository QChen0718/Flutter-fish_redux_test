import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TopShareCellAction { action }

class TopShareCellActionCreator {
  static Action onAction() {
    return const Action(TopShareCellAction.action);
  }
}
