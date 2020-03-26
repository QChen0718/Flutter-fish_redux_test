import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NumbercellAction { action }

class NumbercellActionCreator {
  static Action onAction() {
    return const Action(NumbercellAction.action);
  }
}
