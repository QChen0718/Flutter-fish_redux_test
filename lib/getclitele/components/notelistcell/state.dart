import 'package:fish_redux/fish_redux.dart';

class NoteListCellState implements Cloneable<NoteListCellState> {

  String datestr;
  String contentstr;
  @override
  NoteListCellState clone() {
    return NoteListCellState()
    ..datestr = datestr
    ..contentstr = contentstr;
  }
}

NoteListCellState initState(Map<String, dynamic> args) {
  return NoteListCellState();
}
