import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/state.dart';

class MarkingCellState implements Cloneable<MarkingCellState> {
  String markingname;
  List<Map<String,dynamic>> markinglist;
  String arrow_name;
  @override
  MarkingCellState clone() {
    return MarkingCellState()
    ..markinglist = markinglist
    ..markingname = markingname
    ..arrow_name = arrow_name;
  }
}


class MarkingCellConnector extends ConnOp<NewGetCliteleState,MarkingCellState>{
  @override
  MarkingCellState get(NewGetCliteleState state) {
    // TODO: implement get
    return state.markingCellState;
  }
  @override
  void set(NewGetCliteleState state, MarkingCellState subState) {
    // TODO: implement set
    state.markingCellState = subState;
  }
}