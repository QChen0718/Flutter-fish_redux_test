import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EditCardAction { action , submitClick }

class EditCardActionCreator {
  static Action onAction() {
    return const Action(EditCardAction.action);
  }
  static Action onSubmitClick() {
    return Action(EditCardAction.submitClick);
  }
}
