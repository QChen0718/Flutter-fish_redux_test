import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CjzbDetailAction { action,onBack,updateTitle }

class CjzbDetailActionCreator {
  static Action onAction() {
    return const Action(CjzbDetailAction.action);
  }
  static Action onBack() {
    return Action(CjzbDetailAction.onBack);
  }
  static Action onUpdateTitle(String title) {
    return Action(CjzbDetailAction.updateTitle,payload: title);
  }
}
