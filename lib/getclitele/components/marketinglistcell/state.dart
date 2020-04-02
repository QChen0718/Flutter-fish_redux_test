import 'package:fish_redux/fish_redux.dart';

class MarketingListcellState implements Cloneable<MarketingListcellState> {

  @override
  MarketingListcellState clone() {
    return MarketingListcellState();
  }
}

MarketingListcellState initState(Map<String, dynamic> args) {
  return MarketingListcellState();
}
