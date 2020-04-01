import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/state.dart';

class CliteleItemCellState implements Cloneable<CliteleItemCellState> {
  List<Map<String,dynamic>> items;
  @override
  CliteleItemCellState clone() {
    return CliteleItemCellState()
    ..items = items;
  }
}

class CliteleItemCellConnector extends ConnOp<NewGetCliteleState,CliteleItemCellState>{
  @override
  CliteleItemCellState get(NewGetCliteleState state) {
    // TODO: implement get
    return state.cliteleItemCellState;
  }
  @override
  void set(NewGetCliteleState state, CliteleItemCellState subState) {
    // TODO: implement set
    state.cliteleItemCellState = subState;
  }
}