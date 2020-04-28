import 'package:date_format/date_format.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/notelistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/notespost/adapter.dart';

class NotePostState extends MutableSource implements Cloneable<NotePostState> {

  List<NoteListCellState> liststate = [];
  String navtitle;
  @override
  NotePostState clone() {
    return NotePostState()
    ..navtitle = navtitle
    ..liststate = liststate;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return liststate[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return NoteSpostAdapter.cellid;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => liststate?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    liststate[index] = data;
  }
}

NotePostState initState(Map<String, dynamic> args) {
  return NotePostState()
  ..navtitle = '全部随手发';
}
