import 'package:fish_redux/fish_redux.dart';

class TopShareCellState implements Cloneable<TopShareCellState> {

  @override
  TopShareCellState clone() {
    return TopShareCellState();
  }
}

TopShareCellState initState(Map<String, dynamic> args) {
  return TopShareCellState();
}
