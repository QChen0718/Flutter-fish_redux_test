import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/mycard/subpages/editcard/state.dart';

class EditCardHeaderviewState implements Cloneable<EditCardHeaderviewState> {
  String headerphoto;
  String headertitle;
  String headercontent;
  String headersize;
  @override
  EditCardHeaderviewState clone() {
    return EditCardHeaderviewState()
    ..headerphoto = headerphoto
    ..headertitle = headertitle
    ..headercontent = headercontent
    ..headersize = headersize;
  }
}

class EditCardHeaderviewConnector extends ConnOp<EditCardState,EditCardHeaderviewState>{
  @override
  EditCardHeaderviewState get(EditCardState state) {
    // TODO: implement get
    return state.editCardHeaderviewState;
  }
  @override
  void set(EditCardState state, EditCardHeaderviewState subState) {
    // TODO: implement set
    state.editCardHeaderviewState = subState;
  }
}
