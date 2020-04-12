import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/models/postertitlemodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<SelectPosterState> buildEffect() {
  return combineEffects(<Object, Effect<SelectPosterState>>{
    SelectPosterAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<SelectPosterState> ctx) {
}
void _onInit(Action action, Context<SelectPosterState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.itemtitles.length, vsync: tickerProvider);
  _loadpostertitle(tickerProvider,ctx);
}
// 加载海报分类标题
_loadpostertitle(TickerProvider tickerProvider,Context<SelectPosterState> ctx){
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  params.addAll({
    "typeParentId":11
  });
  var header = APPInfo.getFirstHeader();
//  请求数据
  Request.getInstance().post(API.REQUEST_GET_RESOURCETYPE_TITLE, header, params, (response){
      var model = PostertitleModel.fromJson(response);
     ctx.dispatch(SelectPosterActionCreator.onUpdate({
       'model':model,
       'ticker':tickerProvider
     }));
  }, (error){

  });
}