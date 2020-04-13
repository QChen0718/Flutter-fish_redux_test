import 'package:fish_redux/fish_redux.dart';

class NotePostState implements Cloneable<NotePostState> {

  String navtitle;
  @override
  NotePostState clone() {
    return NotePostState()
    ..navtitle = navtitle;
  }
}

NotePostState initState(Map<String, dynamic> args) {
  return NotePostState()
  ..navtitle = '全部随手发';
}
