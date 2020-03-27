import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MenucellAction { action }

class MenucellActionCreator {
  static Action onAction() {
    return const Action(MenucellAction.action);
  }
}
