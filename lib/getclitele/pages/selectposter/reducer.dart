import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/app.dart';

import 'action.dart';
import 'state.dart';

Reducer<SelectPosterState> buildReducer() {
  return asReducer(
    <Object, Reducer<SelectPosterState>>{
      SelectPosterAction.action: _onAction,
      SelectPosterAction.update: _onUpdate
    },
  );
}

SelectPosterState _onAction(SelectPosterState state, Action action) {
  final SelectPosterState newState = state.clone();
  return newState;
}

SelectPosterState _onUpdate(SelectPosterState state, Action action) {
  var model = action.payload['model'];
  var ticker = action.payload['ticker'];
  final SelectPosterState newState = state.clone();
  newState.itemtitles = model.data;
  newState.tabController = TabController(length: newState.itemtitles.length, vsync: ticker);
  newState.itemtitles.forEach((value){
    //    添加子页面，
    if (value.type == 'news'){
      newState.controllers.add(YicaifuApp.routes.buildPage('topshare', {'model':value}));
    }else{
      newState.controllers.add(YicaifuApp.routes.buildPage('hotfinancialword', {'model':value}));
    }
  });
  return newState;
}