import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/models/cardmodel.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyCardState>>{
      MyCardAction.action: _onAction,
      MyCardAction.initData: _onInitData
    },
  );
}

MyCardState _onAction(MyCardState state, Action action) {
  final MyCardState newState = state.clone();
  return newState;
}

MyCardState _onInitData(MyCardState state, Action action) {
  var model = action.payload as CardDataModel;
  final MyCardState newState = state.clone();
  newState.photoHeader = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + model.photo;
  newState.username = model.realName;
  newState.userinfolist[0]["number"] = model.customerCount.toString();
  newState.userinfolist[1]["number"] = model.manageCapital.toString();
  newState.phoneNumber = model.mobile;
  return newState;
}