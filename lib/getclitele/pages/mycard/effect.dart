import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/sharepopview.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/models/cardmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_package_payview/flutter_package_payview.dart';
Effect<MyCardState> buildEffect() {
  return combineEffects(<Object, Effect<MyCardState>>{
    MyCardAction.action: _onAction,
    MyCardAction.phoneClick: _onPhoneClick,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<MyCardState> ctx) {
    if(action.payload == 1){
//      编辑名片
      Navigator.pushNamed(ctx.context, 'editcard');
    }else{
      //                  从底部弹出视图
      showModalBottomSheet(
          context: ctx.context,
          builder: (context){
            // return SharePopView();
            return PayView(hasPassWord: 1,);
          }
      );
    }
}

void _onPhoneClick(Action action, Context<MyCardState> ctx) {
//    print("电话号码："+ action.payload);
    var url = action.payload;
    if(canLaunch(url) != null) {
      launch("tel:" + action.payload);
    }
}
// 初始化方法获取数据
void _onInit(Action action, Context<MyCardState> ctx) {
  _loadData(ctx);
}
_loadData(Context<MyCardState> ctx){
  Request.getInstance().get(API.REQUEST_GET_USERINFODATA + SpUtil.preferences.getString('id'), null, null, (succeck){
      var cardmodel = CardModel.fromJson(succeck);
      print(cardmodel.dataModel.photo);
      ctx.dispatch(MyCardActionCreator.onInitData(cardmodel.dataModel));
  }, (error){

  });
}