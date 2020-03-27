import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class MenucellState implements Cloneable<MenucellState> {
  List<Map<String,dynamic>> menuitems;
  @override
  MenucellState clone() {
    return MenucellState()
    ..menuitems = menuitems;
  }
}

class MenuConnector extends ConnOp<MyState,MenucellState>{
  @override
  void set(MyState state, MenucellState subState) {
    // TODO: implement set
    state.menucellState = subState;
  }
  @override
  MenucellState get(MyState state) {
    // TODO: implement get
    return state.menucellState;
  }
}
