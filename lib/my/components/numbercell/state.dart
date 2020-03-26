import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class NumbercellState implements Cloneable<NumbercellState> {
  List<String> numbers;
  List<String> infos=['费用(万)','交易额(万)','足迹','金币'];
  @override
  NumbercellState clone() {
    return NumbercellState()
    ..numbers = numbers
    ..infos = infos;
  }
}

class NumberConnector extends ConnOp<MyState,NumbercellState>{
  @override
  void set(MyState state, NumbercellState subState) {
    // TODO: implement set
    state.numbercellState = subState;
  }
  @override
  NumbercellState get(MyState state) {
    // TODO: implement get
    return state.numbercellState;
  }
}