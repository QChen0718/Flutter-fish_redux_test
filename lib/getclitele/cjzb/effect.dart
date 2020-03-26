import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
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
    _loadData(ctx);
}
//获取财经早报的列表数据
_loadData(Context<CjzbState> ctx){
  List<NewListData> subjects = [];

  List<CjcellState> cjcellstatelist = [];

  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey], '1');
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
  Map<String,dynamic>hdict={
    'Content-Type':'application/json'
  };
  headers.addAll(hdict);
  Request.getInstance().post(API.REQUEST_URL_GET_NEWS_LIST, headers,params, (value){
  if(value != null){
    NewsListModel model =  NewsListModel.fromJson(value);
    subjects = model.data;
    subjects.forEach((model){
      print('value:'+ model.title);
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

  });
}