import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ForWardingzsContentAction { action }

class ForWardingzsContentActionCreator {
  static Action onAction() {
    return const Action(ForWardingzsContentAction.action);
  }
}
