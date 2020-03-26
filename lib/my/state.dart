import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/state.dart';

class MyState implements Cloneable<MyState> {
  HeaderviewState headerviewState;
  @override
  MyState clone() {
    return MyState()
    ..headerviewState = headerviewState;
  }
}

MyState initState(Map<String, dynamic> args) {
  HeaderviewState headerviewState = HeaderviewState();
  headerviewState.headerbgimagename = 'images/info_descbgimage.webp';
  headerviewState.username = 'C';
  headerviewState.viplevelicon = 'images/normal_vip.webp';
  headerviewState.isstaff = true;
  headerviewState.headerphotoname = 'images/header_photo.webp';
  return MyState()
  ..headerviewState = headerviewState;
}
