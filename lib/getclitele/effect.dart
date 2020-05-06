import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/action.dart';
import 'package:flutter_fish_redux_router_qt/models/basemodel.dart';
import 'package:flutter_fish_redux_router_qt/models/markingmodel.dart';
import 'package:flutter_fish_redux_router_qt/models/numbermodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'components/markingcell/state.dart';
import 'components/numbercell/state.dart';
import 'state.dart';

Effect<NewGetCliteleState> buildEffect() {
  return combineEffects(<Object, Effect<NewGetCliteleState>>{
    NewGetCliteleAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<NewGetCliteleState> ctx) {
  Navigator.pushNamed(ctx.context, 'numberstatistics');
}
void _onInit(Action action, Context<NewGetCliteleState> ctx) {
  _loadData(ctx);
}
// 加载获客数据
_loadData(Context<NewGetCliteleState> ctx){

  Request.getInstance().get(API.REQUEST_GET_USERDATA + SpUtil.preferences.getString('id'), APPInfo.getRequestnomalparams('1.0.0'), null, (succeck){
    var model = NumberModel.fromJson(succeck);
    List<Map<String,dynamic>> numberslist = [
      {'days':model.dataModel.userCount.toString(),'title':'日增','number':model.dataModel.userCountToday.toString(),'desc':'累计客户(人)'},
      {'days':model.dataModel.visitCount.toString(),'title':'日增','number':model.dataModel.userCountToday.toString(),'desc':'累计访问(人)'},
      {'days':model.dataModel.publishCount.toString(),'title':'日增','number':model.dataModel.publishCountToday.toString(),'desc':'累计发布(次)'},
      {'days':model.dataModel.customerCount.toString(),'title':'日增','number':model.dataModel.customerCountToday.toString(),'desc':'累计绑定客户数(人)'},
    ];
    CliteleNumberState cliteleNumberState = CliteleNumberState();
    cliteleNumberState.numberslist = numberslist;

    ctx.dispatch(NewGetCliteleActionCreator.onInit({'clitelestate':cliteleNumberState}));
  }, (error){

  });
  
  Request.getInstance().get(API.REQUEST_GET_RECORDTOP + '887', APPInfo.getNewRequestnomalparams('1.0.0'), null, (succeck){
      var model = MarkingModel.fromJson(succeck);
      List<Map<String,dynamic>> markinglist = [];
      model.data.forEach((value){
        markinglist.add({'title':value.title,'date':'04-01 15:20'});
      });
      MarkingCellState markingCellState = MarkingCellState();
      markingCellState.markinglist = markinglist;
      ctx.dispatch(NewGetCliteleActionCreator.onInit({'markingcellstate':markingCellState}));
  }, (error){

  });
}