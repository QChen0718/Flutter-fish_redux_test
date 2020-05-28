import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EditCardHeaderviewAction { action,selectPhoto }

class EditCardHeaderviewActionCreator {
  static Action onAction() {
    return const Action(EditCardHeaderviewAction.action);
  }
  static Action onSelectPhoto() {
    return const Action(EditCardHeaderviewAction.selectPhoto);
  }
}

