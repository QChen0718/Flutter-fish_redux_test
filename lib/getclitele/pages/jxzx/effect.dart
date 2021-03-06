import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/models/newstitlemodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<GetCliteleState> buildEffect() {
  return combineEffects(<Object, Effect<GetCliteleState>>{
    GetCliteleAction.action: _onAction,
    GetCliteleAction.jumpDetail: _onJumpDetail,
    //    这个方法很重要，页面的初始化方法
    Lifecycle.initState:_init,
  });
}

void _onAction(Action action, Context<GetCliteleState> ctx) {
}
void _onJumpDetail(Action action,Context<GetCliteleState> ctx){

  Navigator.pushNamed(ctx.context, 'getcliteledetail');
}

void _init(Action action,Context<GetCliteleState> ctx){
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: ctx.state.tabs.length, vsync: tickerProvider);
  _getTitleData(ctx,tickerProvider);
}

void _getTitleData(Context<GetCliteleState> ctx,TickerProvider tickerProvider){
//  设置请求参数
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  Map<String,dynamic>dict={
    'newsTypeParentId' : 99,
  };
  params.addAll(dict);
  var headers = APPInfo.getFirstHeader();

//  请求网络
  Request.getInstance().post(API.REQUEST_GET_NEWSTYPE_TITLE, headers, params, (succeck){
    NewsTitleModel newsTitleModel = NewsTitleModel.fromJson(succeck);
//    继续发送事件到 reducer
    ctx.dispatch(GetCliteleActionCreator.onInit({
      'model':newsTitleModel,
      'tickerProvider':tickerProvider
    }));
  }, (error){

  });
}