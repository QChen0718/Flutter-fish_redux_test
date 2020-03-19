import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CjzbDetailAction { action,onBack }

class CjzbDetailActionCreator {
  static Action onAction() {
    return const Action(CjzbDetailAction.action);
  }
  static Action onBack() {
    return Action(CjzbDetailAction.onBack);
  }
}
