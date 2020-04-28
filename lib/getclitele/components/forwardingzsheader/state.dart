import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/forwardingzs/state.dart';

class ForWardingzsHeaderState implements Cloneable<ForWardingzsHeaderState> {

  String addurlname = 'images/add_wxurl.webp';
  String title = '添加微信公众号文章链接';
  String btntitle = '编辑文章';
  bool isedict = false;
  TextEditingController textEditingController;
  @override
  ForWardingzsHeaderState clone() {
    return ForWardingzsHeaderState()
    ..addurlname = addurlname
    ..title = title
    ..btntitle = btntitle
    ..isedict = isedict
    ..textEditingController = textEditingController;
  }
}

class ForWardingzsCommentor extends ConnOp<ForwardingZSState,ForWardingzsHeaderState>{
  @override
  void set(ForwardingZSState state, ForWardingzsHeaderState subState) {
    // TODO: implement set
    state.forWardingzsHeaderState = subState;
  }
  @override
  ForWardingzsHeaderState get(ForwardingZSState state) {
    // TODO: implement get
    return state.forWardingzsHeaderState;
  }
}