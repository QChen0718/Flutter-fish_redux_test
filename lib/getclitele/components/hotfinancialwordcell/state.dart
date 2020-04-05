import 'package:fish_redux/fish_redux.dart';

class HotFinancialWordeCellState implements Cloneable<HotFinancialWordeCellState> {
  String posterphoto;
  String postername;
  @override
  HotFinancialWordeCellState clone() {
    return HotFinancialWordeCellState()
    ..posterphoto = posterphoto
    ..postername = postername;
  }
}

HotFinancialWordeCellState initState(Map<String, dynamic> args) {
  return HotFinancialWordeCellState();
}
