import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SubItemAction { action }

class SubItemActionCreator {
  static Action onAction() {
    return const Action(SubItemAction.action);
  }
}
