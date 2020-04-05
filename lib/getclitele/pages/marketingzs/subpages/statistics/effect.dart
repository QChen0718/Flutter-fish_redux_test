import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticsheadercell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticslistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticssection/state.dart';
import 'action.dart';
import 'state.dart';

Effect<StatisticsState> buildEffect() {
  return combineEffects(<Object, Effect<StatisticsState>>{
    StatisticsAction.action: _onAction,
    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<StatisticsState> ctx) {
}

void _onInit(Action action,Context<StatisticsState> ctx) {
//  初始化数据
  List<dynamic> listcell=[];
  StaticsHeaderState staticsHeaderState = StaticsHeaderState();
  staticsHeaderState.listdata = [
    {'title':'今日访客(人次)','number':'0'},
    {'title':'本周访客(人次)','number':'10'},
    {'title':'历史累计(人次)','number':'10'}
  ];
  StaticsSectionState staticsSectionState = StaticsSectionState();
  listcell.add(staticsHeaderState);
  listcell.add(staticsSectionState);
  for(int i=0; i<10;i++){
    StaticsListcellState staticsListcellState = StaticsListcellState();
    staticsListcellState.cellindex = "1";
    staticsListcellState.photoHeader ="images/header_photo.webp";
    staticsListcellState.username = "C";
    staticsListcellState.weeknumber = "0";
    staticsListcellState.sumnumber = "4";
    listcell.add(staticsListcellState);
  }
  ctx.dispatch(StatisticsActionCreator.onInit(listcell));
}