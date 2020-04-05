import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StaticsListcellAction { action }

class StaticsListcellActionCreator {
  static Action onAction() {
    return const Action(StaticsListcellAction.action);
  }
}
