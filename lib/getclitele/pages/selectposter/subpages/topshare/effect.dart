import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/topsharecell/state.dart';
import 'package:flutter_fish_redux_router_qt/models/topsharmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<TopShareState> buildEffect() {
  return combineEffects(<Object, Effect<TopShareState>>{
    TopShareAction.action: _onAction,
    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<TopShareState> ctx) {
}
void _onInit(Action action, Context<TopShareState> ctx) {
  _loadData(ctx);
}
_loadData(Context<TopShareState> ctx){
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  params.addAll(APPInfo.getUserDict());
  params.addAll({
    'pageSize':ctx.state.pageSize,
    'pageIndex':ctx.state.pageIndex
  });
  var headers = APPInfo.getFirstHeader();
  Request.getInstance().post(API.REQUEST_GET_HOT_NEWS, headers, params, (response){
    var model = TopShareModel.fromJson(response);
    List<TopShareCellState> liststate = [];
    model.data.forEach((value){
      TopShareCellState topShareCellState = TopShareCellState();
        topShareCellState.cavorimagename = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + value.image;
        topShareCellState.toptitle = value.title;
        topShareCellState.topcontent = value.scontent;
      liststate.add(topShareCellState);
    });
    ctx.dispatch(TopShareActionCreator.onInit(liststate));
  }, (error){

  });
}