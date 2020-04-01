import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/app.dart';

import 'action.dart';
import 'state.dart';

Reducer<GetCliteleState> buildReducer() {
  return asReducer(
    <Object, Reducer<GetCliteleState>>{
      GetCliteleAction.action: _onAction,
      GetCliteleAction.onInit: _onInit,
    },
  );
}

GetCliteleState _onAction(GetCliteleState state, Action action) {
  final GetCliteleState newState = state.clone();
  return newState;
}
GetCliteleState _onInit(GetCliteleState state, Action action) {
  var datadict = action.payload;
  final GetCliteleState newState = state.clone();
  newState.tabs = datadict['model'].data;
  newState.tabController = TabController(length: newState.tabs.length, vsync: datadict['tickerProvider']);
//  动态添加
  newState.tabs.forEach((value){
//    添加子页面，
    newState.controllers.add(YicaifuApp.routes.buildPage('cjzb', {'model':value}));
  });
  return newState;
}
