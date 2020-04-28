import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NoteListCellAction { action }

class NoteListCellActionCreator {
  static Action onAction() {
    return const Action(NoteListCellAction.action);
  }
}
