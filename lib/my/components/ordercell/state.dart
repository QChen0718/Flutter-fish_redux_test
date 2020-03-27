import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class OrdercellState implements Cloneable<OrdercellState> {
  String celltitle;
  List<Map<String,dynamic>> items;
  @override
  OrdercellState clone() {
    return OrdercellState()
    ..celltitle = celltitle
    ..items = items;
  }
}

class OrderConnector extends ConnOp<MyState,OrdercellState>{
  @override
  void set(MyState state, OrdercellState subState) {
    // TODO: implement set
    state.ordercellState = subState;
  }
  @override
  OrdercellState get(MyState state) {
    // TODO: implement get
    return state.ordercellState;
  }
}