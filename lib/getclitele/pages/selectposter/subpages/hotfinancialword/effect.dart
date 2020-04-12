import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/hotfinancialwordcell/state.dart';
import 'package:flutter_fish_redux_router_qt/models/posterlistmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<HotFinancialWordState> buildEffect() {
  return combineEffects(<Object, Effect<HotFinancialWordState>>{
    HotFinancialWordAction.action: _onAction,
    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<HotFinancialWordState> ctx) {
}
void _onInit(Action action, Context<HotFinancialWordState> ctx) {
// 加载数据
  _loadData(ctx);
}
_loadData(Context<HotFinancialWordState> ctx){
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  params.addAll(APPInfo.getUserDict());
  params.addAll({
    'typeId' : ctx.state.typeId,
    'pageSize':ctx.state.pageSize,
    "pageIndex" : ctx.state.pageIndex,
  });
  var headers = APPInfo.getFirstHeader();
  Request.getInstance().post(API.REQUEST_GET_ADRESOURCE_LIST, headers, params, (response){
    List<HotFinancialWordeCellState> listcellstate = [];
    var model = PosterListModel.fromJson(response);
    model.data.forEach((value){
      HotFinancialWordeCellState hotFinancialWordeCellState = HotFinancialWordeCellState();
      hotFinancialWordeCellState.posterphoto = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + value.image;
      hotFinancialWordeCellState.postername = value.name;
      listcellstate.add(hotFinancialWordeCellState);
    });
    ctx.dispatch(HotFinancialWordActionCreator.onInit(listcellstate));
  }, (error){

  });
}
