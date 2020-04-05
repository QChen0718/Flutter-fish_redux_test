import 'package:fish_redux/fish_redux.dart';

class MarketingListcellState implements Cloneable<MarketingListcellState> {
  String headerphoto;
  String username;
  String browsetitle = '浏览了';
  String browsecontent;
  String upgrade = '升级为客户';
  String date;
  @override
  MarketingListcellState clone() {
    return MarketingListcellState()
    ..headerphoto = headerphoto
    ..username = username
    ..browsetitle = browsetitle
    ..browsecontent = browsecontent
    ..upgrade = upgrade
    ..date = date;
  }
}

MarketingListcellState initState(Map<String, dynamic> args) {
  return MarketingListcellState();
}
