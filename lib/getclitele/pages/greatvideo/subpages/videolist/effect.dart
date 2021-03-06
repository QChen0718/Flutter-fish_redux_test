import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/videolistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/models/videolistmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoListState> buildEffect() {
  return combineEffects(<Object, Effect<VideoListState>>{
    VideoListAction.action: _onAction,
    VideoListAction.refresh: _onRefresh,
    VideoListAction.load: _onLoad,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<VideoListState> ctx) {
}
void _onInit(Action action, Context<VideoListState> ctx) {
//    加载列表数据
  ctx.state.pageIndex = 1;
  _loadListData(ctx);
}
// 刷新列表
void _onRefresh(Action action,Context<VideoListState> ctx) {
  ctx.state.pageIndex = 1;
  _loadListData(ctx);
}
void _onLoad(Action action,Context<VideoListState> ctx) {
  ctx.state.pageIndex ++ ;
  _loadListData(ctx);
}
_loadListData(Context<VideoListState> ctx){
  var params = APPInfo.getRequestnomalparams(APPInfo.getFirstHeader()[APPInfo.ApiVersionKey]);
  params.addAll(APPInfo.getUserDict());
  params.addAll({
    'pageSize':ctx.state.pageSize,
    'pageIndex':ctx.state.pageIndex,
    'type':ctx.state.type
  });
  var headers = APPInfo.getFirstHeader();
  Request.getInstance().post(API.REQUEST_GET_VIDEO_LIST, headers, params, (response){
    var model = VideoListModel.fromJson(response);
    List<VideoListCellState> liststate = [];
    if(ctx.state.pageIndex == 1){
      ctx.state.liststate = [];
      if(model.data.data.length == 0){
        ctx.state.loadState = LoadState.State_Empty;
      }else{
        ctx.state.loadState = LoadState.State_Success;
      }
      ctx.state.easyRefreshController.finishRefresh();
      ctx.state.easyRefreshController.resetLoadState();
    }else{
      liststate = ctx.state.liststate;
      ctx.state.easyRefreshController.finishLoad(noMore: ctx.state.liststate.length == model.data.totalCount?true:false);
    }

    model.data.data.forEach((value){
      VideoListCellState videoListCellState = VideoListCellState();
      videoListCellState.coverimagename = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + value.image;
      videoListCellState.videotitle = value.title;
      videoListCellState.datestr = value.startTime;
      videoListCellState.videoid = value.id;
      videoListCellState.videourl = value.files;
      liststate.add(videoListCellState);
    });
    ctx.dispatch(VideoListActionCreator.onInit(liststate));
  }, (error){
    ctx.state.loadState = LoadState.State_Error;
  });
}
