import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/models/userinfomodel.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/state.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'components/nomalcell/state.dart';
import 'state.dart';

Effect<MyState> buildEffect() {
  return combineEffects(<Object, Effect<MyState>>{
    MyAction.action: _onAction,
    Lifecycle.initState: _onInit,
    MyAction.jumpSetpage: _onJumpSetpage
  });
}

void _onAction(Action action, Context<MyState> ctx) {
}
void _onInit(Action action, Context<MyState> ctx) {
  _loaduseinfoData(ctx);
}
//加载用户基本信息
_loaduseinfoData(Context<MyState> ctx){
  var headerdict = APPInfo.getFirstHeader();
  headerdict.addAll({
    'Content-Type':'application/json'
  });
  var paramsdict = APPInfo.getRequestnomalparams('1.0.0', '1');
  paramsdict.addAll({
    'userId':SpUtil.preferences.getString('id'),
    'userMobile':SpUtil.preferences.getString('mobile')
  });
  Request.getInstance().post(API.REQUEST_URL_GET_BASE_INFO_DETAIL, headerdict, paramsdict, (value){
    var userdict = value['data']['userInfo'];
    UserInfoModel userInfo = UserInfoModel.fromJson(userdict);
    HeaderviewState headerviewState = HeaderviewState();
    headerviewState.username = userInfo.realName;
    headerviewState.viplevelicon = 'images/normal_vip.webp';
    headerviewState.isstaff = true;
    headerviewState.headerphotoname = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + userInfo.photo;
    headerviewState.itemlist = ['会员特权','员工号'];

    ctx.dispatch(MyActionCreator.onInit({'userinfo':headerviewState}));

  }, (error){

  });
}
void _onJumpSetpage(Action action,Context<MyState> ctx){
  Navigator.pushNamed(ctx.context, 'userset');
}