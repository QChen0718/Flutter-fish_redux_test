import 'package:fish_redux/fish_redux.dart';

class MarkingCellState implements Cloneable<MarkingCellState> {

  @override
  MarkingCellState clone() {
    return MarkingCellState();
  }
}

MarkingCellState initState(Map<String, dynamic> args) {
  return MarkingCellState();
}
