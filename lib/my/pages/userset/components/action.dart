import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction { action , cellClick}

class ItemActionCreator {
  static Action onAction() {
    return const Action(ItemAction.action);
  }
  static Action onCellClick() {
    return Action(ItemAction.cellClick);
  }
}
