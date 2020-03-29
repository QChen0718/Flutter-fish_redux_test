import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/state.dart';

class SearchBarState implements Cloneable<SearchBarState> {
  String searchicon;
  String closeicon;
  String searchtitle;
  @override
  SearchBarState clone() {
    return SearchBarState()
    ..searchicon = searchicon
    ..closeicon = closeicon
    ..searchtitle = searchtitle;
  }
}

class SearchBarConnector extends ConnOp<CustomerState,SearchBarState>{
  @override
  SearchBarState get(CustomerState state) {
    // TODO: implement get
    return state.searchBarState;
  }
  @override
  void set(CustomerState state, SearchBarState subState) {
    // TODO: implement set
    state.searchBarState = subState;
  }
}