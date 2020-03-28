import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class NomalcellState implements Cloneable<NomalcellState> {
  String nomal_iconname;
  String nomal_title;
  String nomal_arrow;
  @override
  NomalcellState clone() {
    return NomalcellState()
    ..nomal_iconname = nomal_iconname
    ..nomal_title = nomal_title
    ..nomal_arrow = nomal_arrow;
  }
}

class NomalConnector extends ConnOp<MyState,NomalcellState>{
  @override
  void set(MyState state, NomalcellState subState) {
    // TODO: implement set
    state.nomalcellState = subState;
  }
  @override
  NomalcellState get(MyState state) {
    // TODO: implement get
    return state.nomalcellState;
  }
}