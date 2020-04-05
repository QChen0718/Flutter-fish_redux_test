import 'package:fish_redux/fish_redux.dart';

class StaticsListcellState implements Cloneable<StaticsListcellState> {

  String cellindex;
  String photoHeader;
  String username;
  String weeknumber;
  String sumnumber;
  @override
  StaticsListcellState clone() {
    return StaticsListcellState()
    ..cellindex = cellindex
    ..photoHeader = photoHeader
    ..username = username
    ..weeknumber = weeknumber
    ..sumnumber = sumnumber;
  }
}

StaticsListcellState initState(Map<String, dynamic> args) {
  return StaticsListcellState();
}
