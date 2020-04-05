import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SelectPosterAction { action }

class SelectPosterActionCreator {
  static Action onAction() {
    return const Action(SelectPosterAction.action);
  }
}
