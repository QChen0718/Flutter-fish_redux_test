import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainAction { action, onTabBarChange}

class MainActionCreator {
  static Action onAction() {
    return const Action(MainAction.action);
  }
  static Action onTabBarChange(int index){
    return Action(MainAction.onTabBarChange,payload: index);
  }
}
