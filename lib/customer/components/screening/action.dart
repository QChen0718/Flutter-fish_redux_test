import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ScreeningAction { action }

class ScreeningActionCreator {
  static Action onAction() {
    return const Action(ScreeningAction.action);
  }
}
