import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MarkingCellAction { action }

class MarkingCellActionCreator {
  static Action onAction() {
    return const Action(MarkingCellAction.action);
  }
}
