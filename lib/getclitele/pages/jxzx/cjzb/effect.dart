import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/models/cjzblist.dart';
import 'package:flutter_fish_redux_router_qt/models/newslistmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'components/state.dart';

import 'state.dart';

Effect<CjzbState> buildEffect() {
  return combineEffects(<Object, Effect<CjzbState>>{
    CjzbAction.action: _onAction,
    CjzbAction.onjumpDetail: _onJumpDetail,
    CjzbAction.refresh:_onRefresh,
    CjzbAction.load:_onLoad,
    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<CjzbState> ctx) {
}
void _onJumpDetail(Action action,Context<CjzbState> ctx) {
  Navigator.pushNamed(ctx.context, 'cjzbdetail').then((value){
    ctx.dispatch(CjzbActionCreator.onUpdateData(value));
  });
}
void _onInit(Action action,Context<CjzbState> ctx) {
    ctx.state.pageIndex = 1;
    _loadData(ctx);
}
// 刷新数据
void _onRefresh(Action action,Context<CjzbState> ctx) {
    ctx.state.pageIndex = 1;
  _loadData(ctx);
}
// 加载数据
void _onLoad(Action action,Context<CjzbState> ctx) {
  ctx.state.pageIndex ++;
  _loadData(ctx);
}
//获取财经早报的列表数据
_loadData(Context<CjzbState> ctx){
  List<NewListData> subjects = [];

  List<CjcellState> cjcellstatelist;

  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  Map<String,dynamic>dict={
    'newsTypeId' : ctx.state.newsTypeId,
    'pageSize':ctx.state.pageSize,
    'attr':ctx.state.attr,
    "pageIndex" : ctx.state.pageIndex,
    "userMobile" : SpUtil.preferences.getString('mobile'),
    "userId" : SpUtil.preferences.getString('id'),
  };
  params.addAll(dict);
  var headers = APPInfo.getFirstHeader();

  Request.getInstance().post(API.REQUEST_URL_GET_NEWS_LIST, headers,params, (value){
  if(value != null){
    NewsListModel model =  NewsListModel.fromJson(value);
    if(ctx.state.pageIndex == 1){
//      刷新
      cjcellstatelist = [];
      //    完成刷新
      ctx.state.controller.finishRefresh();
      ctx.state.controller.resetLoadState();
      if(model.data.length == 0){
        ctx.state.loadState = LoadState.State_Empty;
      }else{
        ctx.state.loadState = LoadState.State_Success;
      }
    }else{
//      加载
        cjcellstatelist = ctx.state.listcell;
        ctx.state.controller.finishLoad(noMore: model.data.length <10 ?true:false);
    }

    subjects = model.data;
    subjects.forEach((model){
      CjcellState cjcellState = CjcellState();
      cjcellState.celltitle = model.title;
      cjcellState.cellcontent = model.sContent;
      cjcellState.cellcoverimagename = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + model.image;
      cjcellState.cellid = model.id.toString();
      cjcellstatelist.add(cjcellState);
    });

    //      发送事件更新UI界面
    ctx.dispatch(CjzbActionCreator.onInit(cjcellstatelist));
    }
  }, (error){
    ctx.state.loadState = LoadState.State_Error;
  });
}