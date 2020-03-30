import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/tost.dart';
import 'package:flutter_fish_redux_router_qt/actions/userinfo.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
    LoginAction.jumpHome: _onJumpHome,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {

}
void _onJumpHome(Action action, Context<LoginState> ctx) {
//  登录到首页
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey],'1');
  Map<String,dynamic>dict = {
    'userName':ctx.state.phone_textEditingController.text,
    'loginType':'0',
    'password':APPInfo.generateMd5(ctx.state.password_textEditingController.text)
  };
  params.addAll(dict);
  _loginClick(params,ctx);
}

_loginClick(Map<String,dynamic> params,Context<LoginState> ctx){
  Request.getInstance().post(API.REQUEST_URL_LOGIN,null, params, (succeck){
    UserInfo.cacheuserdata(succeck);
    Navigator.pushAndRemoveUntil(ctx.context, MaterialPageRoute(builder:(BuildContext context) => MainPage().buildPage({
      'pages':List<Widget>.unmodifiable([
//          子路由的设置
        YicaifuApp.routes.buildPage('getclitele', {
          'clitelesubpages':List<Widget>.unmodifiable([
            YicaifuApp.routes.buildPage('cjzb', null),
            YicaifuApp.routes.buildPage('hotzx', null)
          ])
        }),
        YicaifuApp.routes.buildPage('customer', null),
        YicaifuApp.routes.buildPage('my', null)
      ])
    })), ModalRoute.withName('login')
    );
  }, (error){
    Toast.toast(ctx.context,msg:error,position: ToastPostion.bottom);
  });
}
