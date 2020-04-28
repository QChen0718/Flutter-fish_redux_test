import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ForWardingzsHeaderAction { action ,update}

class ForWardingzsHeaderActionCreator {
  static Action onAction() {
    return  Action(ForWardingzsHeaderAction.action);
  }
  static Action onUpdate() {
    return  Action(ForWardingzsHeaderAction.update);
  }
}
