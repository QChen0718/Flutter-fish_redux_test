import 'package:fish_redux/fish_redux.dart';

class MarketingCluesState implements Cloneable<MarketingCluesState> {

  @override
  MarketingCluesState clone() {
    return MarketingCluesState();
  }
}

MarketingCluesState initState(Map<String, dynamic> args) {
  return MarketingCluesState();
}
