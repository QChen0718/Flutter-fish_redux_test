import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NotePostAction { action }

class NotePostActionCreator {
  static Action onAction() {
    return const Action(NotePostAction.action);
  }
}
