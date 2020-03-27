import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NomalcellAction { action }

class NomalcellActionCreator {
  static Action onAction() {
    return const Action(NomalcellAction.action);
  }
}
