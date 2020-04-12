import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/videolistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/models/videolistmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoListState> buildEffect() {
  return combineEffects(<Object, Effect<VideoListState>>{
    VideoListAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<VideoListState> ctx) {
}
void _onInit(Action action, Context<VideoListState> ctx) {
//    加载列表数据
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
    model.data.data.forEach((value){
      VideoListCellState videoListCellState = VideoListCellState();
      videoListCellState.coverimagename = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + value.image;
      videoListCellState.videotitle = value.title;
      videoListCellState.datestr = value.startTime;
      videoListCellState.videoid = value.id;
      liststate.add(videoListCellState);
    });
    ctx.dispatch(VideoListActionCreator.onInit(liststate));
  }, (error){

  });
}
