import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/tost.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'package:flutter_fish_redux_router_qt/models/loginmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  Map<String,dynamic>dict = {
    'userName':ctx.state.phone_textEditingController.text,
    'channel':'1',
    'apiVersion':'1.0.0',
    'loginType':'0',
    'password':APPInfo.generateMd5(ctx.state.password_textEditingController.text)
  };
  _loginClick(dict,ctx);
}

_loginClick(Map<String,dynamic> params,Context<LoginState> ctx){
  Request.getInstance().post(API.REQUEST_URL_LOGIN, params, (succeck){
    LoginModel loginModel = LoginModel.fromJson(succeck);
    _cachedata(loginModel);
    Navigator.pushReplacement(ctx.context, MaterialPageRoute(builder:(BuildContext context) => MainPage().buildPage({
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
    })));
  }, (error){
    Toast.toast(ctx.context,msg:error,position: ToastPostion.bottom);
  });
}
//存储用户基本信息到本地
_cachedata(LoginModel loginModel) async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString('id', loginModel.data.id.toString());
  print('id:'+loginModel.data.id.toString());
}