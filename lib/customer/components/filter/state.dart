import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/state.dart';

class FilterState implements Cloneable<FilterState> {
  List<String> titles;
  List<String> filteritems;
  bool isshow;
  String filtericonname;
  String filterselectname;
  String selectitemtitle;
  String arrow_bottom;
  @override
  FilterState clone() {
    return FilterState()
    ..titles = titles
    ..isshow = isshow
    ..filteritems = filteritems
    ..filtericonname = filtericonname
    ..filterselectname = filterselectname
    ..selectitemtitle = selectitemtitle
    ..arrow_bottom = arrow_bottom;
  }
}

class FilterConnector extends ConnOp<CustomerState,FilterState>{
  @override
  void set(CustomerState state, FilterState subState) {
    // TODO: implement set
    state.filterState = subState;
  }
  @override
  FilterState get(CustomerState state) {
    // TODO: implement get
    return state.filterState;
  }
}